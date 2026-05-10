package com.appaac.haptic.sync;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class a implements Parcelable.Creator {
    a() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a */
    public b createFromParcel(Parcel parcel) {
        return new b(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: b */
    public b[] newArray(int i10) {
        return new b[i10];
    }
}
