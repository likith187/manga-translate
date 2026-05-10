package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class a0 extends t3.a implements IInterface {
    a0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    public final IObjectWrapper e(IObjectWrapper iObjectWrapper, zax zaxVar) {
        Parcel parcelA = a();
        t3.c.d(parcelA, iObjectWrapper);
        t3.c.c(parcelA, zaxVar);
        Parcel parcelB = b(2, parcelA);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelB.readStrongBinder());
        parcelB.recycle();
        return iObjectWrapperAsInterface;
    }
}
