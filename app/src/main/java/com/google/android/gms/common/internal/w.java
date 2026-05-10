package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class w implements DialogInterface.OnClickListener {
    public static w b(Activity activity, Intent intent, int i10) {
        return new u(intent, activity, i10);
    }

    public static w c(com.google.android.gms.common.api.internal.g gVar, Intent intent, int i10) {
        return new v(intent, gVar, 2);
    }

    protected abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        try {
            try {
                a();
            } catch (ActivityNotFoundException e10) {
                Log.e("DialogRedirect", true == Build.FINGERPRINT.contains("generic") ? "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store." : "Failed to start resolution intent.", e10);
            }
        } finally {
            dialogInterface.dismiss();
        }
    }
}
