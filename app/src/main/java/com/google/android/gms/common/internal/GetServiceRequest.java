package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new y0();

    /* JADX INFO: renamed from: r */
    static final Scope[] f7784r = new Scope[0];

    /* JADX INFO: renamed from: s */
    static final Feature[] f7785s = new Feature[0];

    /* JADX INFO: renamed from: a */
    final int f7786a;

    /* JADX INFO: renamed from: b */
    final int f7787b;

    /* JADX INFO: renamed from: c */
    final int f7788c;

    /* JADX INFO: renamed from: f */
    String f7789f;

    /* JADX INFO: renamed from: h */
    IBinder f7790h;

    /* JADX INFO: renamed from: i */
    Scope[] f7791i;

    /* JADX INFO: renamed from: j */
    Bundle f7792j;

    /* JADX INFO: renamed from: k */
    Account f7793k;

    /* JADX INFO: renamed from: l */
    Feature[] f7794l;

    /* JADX INFO: renamed from: m */
    Feature[] f7795m;

    /* JADX INFO: renamed from: n */
    final boolean f7796n;

    /* JADX INFO: renamed from: o */
    final int f7797o;

    /* JADX INFO: renamed from: p */
    boolean f7798p;

    /* JADX INFO: renamed from: q */
    private final String f7799q;

    GetServiceRequest(int i10, int i11, int i12, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z10, int i13, boolean z11, String str2) {
        scopeArr = scopeArr == null ? f7784r : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        featureArr = featureArr == null ? f7785s : featureArr;
        featureArr2 = featureArr2 == null ? f7785s : featureArr2;
        this.f7786a = i10;
        this.f7787b = i11;
        this.f7788c = i12;
        if ("com.google.android.gms".equals(str)) {
            this.f7789f = "com.google.android.gms";
        } else {
            this.f7789f = str;
        }
        if (i10 < 2) {
            this.f7793k = iBinder != null ? a.a(IAccountAccessor.Stub.asInterface(iBinder)) : null;
        } else {
            this.f7790h = iBinder;
            this.f7793k = account;
        }
        this.f7791i = scopeArr;
        this.f7792j = bundle;
        this.f7794l = featureArr;
        this.f7795m = featureArr2;
        this.f7796n = z10;
        this.f7797o = i13;
        this.f7798p = z11;
        this.f7799q = str2;
    }

    public final String D0() {
        return this.f7799q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        y0.a(this, parcel, i10);
    }
}
