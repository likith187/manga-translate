package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
abstract class m extends zzz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7955a;

    protected m(byte[] bArr) {
        com.google.android.gms.common.internal.k.a(bArr.length == 25);
        this.f7955a = Arrays.hashCode(bArr);
    }

    protected static byte[] a(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    abstract byte[] b();

    public final boolean equals(Object obj) {
        IObjectWrapper iObjectWrapperZzd;
        if (obj != null && (obj instanceof zzaa)) {
            try {
                zzaa zzaaVar = (zzaa) obj;
                if (zzaaVar.zzc() == this.f7955a && (iObjectWrapperZzd = zzaaVar.zzd()) != null) {
                    return Arrays.equals(b(), (byte[]) com.google.android.gms.dynamic.a.a(iObjectWrapperZzd));
                }
                return false;
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f7955a;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final int zzc() {
        return this.f7955a;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final IObjectWrapper zzd() {
        return com.google.android.gms.dynamic.a.b(b());
    }
}
