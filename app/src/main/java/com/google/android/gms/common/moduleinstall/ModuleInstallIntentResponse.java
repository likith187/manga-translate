package com.google.android.gms.common.moduleinstall;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import o3.b;

/* JADX INFO: loaded from: classes.dex */
public class ModuleInstallIntentResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleInstallIntentResponse> CREATOR = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PendingIntent f7958a;

    public ModuleInstallIntentResponse(PendingIntent pendingIntent) {
        this.f7958a = pendingIntent;
    }

    public PendingIntent D0() {
        return this.f7958a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.l(parcel, 1, D0(), i10, false);
        n3.b.b(parcel, iA);
    }
}
