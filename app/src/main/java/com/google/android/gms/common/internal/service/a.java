package com.google.android.gms.common.internal.service;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.TelemetryData;

/* JADX INFO: loaded from: classes.dex */
public final class a extends t3.a implements IInterface {
    a(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService");
    }

    public final void e(TelemetryData telemetryData) {
        Parcel parcelA = a();
        t3.c.c(parcelA, telemetryData);
        d(1, parcelA);
    }
}
