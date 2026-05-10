package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new t();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f8049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f8050c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f8051f;

    zzs(String str, IBinder iBinder, boolean z10, boolean z11) {
        this.f8048a = str;
        n nVar = null;
        if (iBinder != null) {
            try {
                IObjectWrapper iObjectWrapperZzd = zzz.zzg(iBinder).zzd();
                byte[] bArr = iObjectWrapperZzd == null ? null : (byte[]) com.google.android.gms.dynamic.a.a(iObjectWrapperZzd);
                if (bArr != null) {
                    nVar = new n(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e10) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e10);
            }
        }
        this.f8049b = nVar;
        this.f8050c = z10;
        this.f8051f = z11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f8048a;
        int iA = n3.b.a(parcel);
        n3.b.m(parcel, 1, str, false);
        m mVar = this.f8049b;
        if (mVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            mVar = null;
        }
        n3.b.f(parcel, 2, mVar, false);
        n3.b.c(parcel, 3, this.f8050c);
        n3.b.c(parcel, 4, this.f8051f);
        n3.b.b(parcel, iA);
    }
}
