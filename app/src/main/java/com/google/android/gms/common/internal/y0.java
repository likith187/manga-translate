package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;

/* JADX INFO: loaded from: classes.dex */
public final class y0 implements Parcelable.Creator {
    static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, getServiceRequest.f7786a);
        n3.b.g(parcel, 2, getServiceRequest.f7787b);
        n3.b.g(parcel, 3, getServiceRequest.f7788c);
        n3.b.m(parcel, 4, getServiceRequest.f7789f, false);
        n3.b.f(parcel, 5, getServiceRequest.f7790h, false);
        n3.b.p(parcel, 6, getServiceRequest.f7791i, i10, false);
        n3.b.d(parcel, 7, getServiceRequest.f7792j, false);
        n3.b.l(parcel, 8, getServiceRequest.f7793k, i10, false);
        n3.b.p(parcel, 10, getServiceRequest.f7794l, i10, false);
        n3.b.p(parcel, 11, getServiceRequest.f7795m, i10, false);
        n3.b.c(parcel, 12, getServiceRequest.f7796n);
        n3.b.g(parcel, 13, getServiceRequest.f7797o);
        n3.b.c(parcel, 14, getServiceRequest.f7798p);
        n3.b.m(parcel, 15, getServiceRequest.D0(), false);
        n3.b.b(parcel, iA);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        Scope[] scopeArr = GetServiceRequest.f7784r;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.f7785s;
        Feature[] featureArr2 = featureArr;
        String strO = null;
        IBinder iBinderZ = null;
        Account account = null;
        String strO2 = null;
        int iA = 0;
        int iA2 = 0;
        int iA3 = 0;
        boolean zV = false;
        int iA4 = 0;
        boolean zV2 = false;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            switch (n3.a.u(iY)) {
                case 1:
                    iA = n3.a.A(parcel, iY);
                    break;
                case 2:
                    iA2 = n3.a.A(parcel, iY);
                    break;
                case 3:
                    iA3 = n3.a.A(parcel, iY);
                    break;
                case 4:
                    strO = n3.a.o(parcel, iY);
                    break;
                case 5:
                    iBinderZ = n3.a.z(parcel, iY);
                    break;
                case 6:
                    scopeArr = (Scope[]) n3.a.r(parcel, iY, Scope.CREATOR);
                    break;
                case 7:
                    bundle = n3.a.f(parcel, iY);
                    break;
                case 8:
                    account = (Account) n3.a.n(parcel, iY, Account.CREATOR);
                    break;
                case 9:
                default:
                    n3.a.E(parcel, iY);
                    break;
                case 10:
                    featureArr = (Feature[]) n3.a.r(parcel, iY, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) n3.a.r(parcel, iY, Feature.CREATOR);
                    break;
                case 12:
                    zV = n3.a.v(parcel, iY);
                    break;
                case 13:
                    iA4 = n3.a.A(parcel, iY);
                    break;
                case 14:
                    zV2 = n3.a.v(parcel, iY);
                    break;
                case 15:
                    strO2 = n3.a.o(parcel, iY);
                    break;
            }
        }
        n3.a.t(parcel, iF);
        return new GetServiceRequest(iA, iA2, iA3, strO, iBinderZ, scopeArr, bundle, account, featureArr, featureArr2, zV, iA4, zV2, strO2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new GetServiceRequest[i10];
    }
}
