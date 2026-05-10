package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;

/* JADX INFO: loaded from: classes.dex */
public class f extends b {
    public f(Status status) {
        super(status);
    }

    public PendingIntent getResolution() {
        return getStatus().E0();
    }

    public void startResolutionForResult(Activity activity, int i10) throws IntentSender.SendIntentException {
        getStatus().I0(activity, i10);
    }
}
