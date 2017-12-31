package com.motorola.modservice.fmwkwrapper;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings.Global;
import android.util.Log;

class DockObserver {
    private final boolean mAllowTheaterModeWakeFromDock;
    private Context mContext;
    private final PowerManager mPowerManager;
    private int mPreviousDockState = 0;
    private int mReportedDockState = 0;

    DockObserver(Context context) {
        this.mContext = context;
        this.mPowerManager = (PowerManager) context.getSystemService("power");
        this.mAllowTheaterModeWakeFromDock = context.getResources().getBoolean(17956912);
    }

    void setDockState(int newState) {
        if (newState != this.mReportedDockState) {
            this.mReportedDockState = newState;
            if (this.mAllowTheaterModeWakeFromDock || Global.getInt(this.mContext.getContentResolver(), "theater_mode_on", 0) == 0) {
                this.mPowerManager.wakeUp(SystemClock.uptimeMillis(), "android.server:DOCK");
            }
            handleDockStateChange();
        }
    }

    private void handleDockStateChange() {
        Log.i("ModDockObserver", "Dock state changed from " + this.mPreviousDockState + " to " + this.mReportedDockState);
        int previousDockState = this.mPreviousDockState;
        this.mPreviousDockState = this.mReportedDockState;
        ContentResolver cr = this.mContext.getContentResolver();
        if (Global.getInt(cr, "device_provisioned", 0) == 0) {
            Log.i("ModDockObserver", "Device not provisioned, skipping dock broadcast");
            return;
        }
        Intent intent = new Intent("android.intent.action.DOCK_EVENT");
        intent.addFlags(536870912);
        intent.putExtra("android.intent.extra.DOCK_STATE", this.mReportedDockState);
        if (Global.getInt(cr, "dock_sounds_enabled", 1) == 1) {
            String whichSound = null;
            if (this.mReportedDockState == 0) {
                if (previousDockState == 1 || previousDockState == 3 || previousDockState == 4) {
                    whichSound = "desk_undock_sound";
                } else if (previousDockState == 2) {
                    whichSound = "car_undock_sound";
                }
            } else if (this.mReportedDockState == 1 || this.mReportedDockState == 3 || this.mReportedDockState == 4) {
                whichSound = "desk_dock_sound";
            } else if (this.mReportedDockState == 2) {
                whichSound = "car_dock_sound";
            }
            if (whichSound != null) {
                String soundPath = Global.getString(cr, whichSound);
                if (soundPath != null) {
                    Uri soundUri = Uri.parse("file://" + soundPath);
                    if (soundUri != null) {
                        Ringtone sfx = RingtoneManager.getRingtone(this.mContext, soundUri);
                        if (sfx != null) {
                            sfx.setStreamType(1);
                            sfx.play();
                        }
                    }
                }
            }
        }
        this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
    }
}
