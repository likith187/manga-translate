package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class i1 extends com.google.android.gms.internal.common.a implements zzaa {
    i1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final int zzc() {
        Parcel parcelA = a(2, d());
        int i10 = parcelA.readInt();
        parcelA.recycle();
        return i10;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final IObjectWrapper zzd() {
        Parcel parcelA = a(1, d());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelA.readStrongBinder());
        parcelA.recycle();
        return iObjectWrapperAsInterface;
    }
}
