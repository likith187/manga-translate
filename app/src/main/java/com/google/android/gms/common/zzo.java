package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new r();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f8039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f8040c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f8041f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f8042h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f8043i;

    zzo(String str, boolean z10, boolean z11, IBinder iBinder, boolean z12, boolean z13) {
        this.f8038a = str;
        this.f8039b = z10;
        this.f8040c = z11;
        this.f8041f = (Context) com.google.android.gms.dynamic.a.a(IObjectWrapper.Stub.asInterface(iBinder));
        this.f8042h = z12;
        this.f8043i = z13;
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [android.os.IBinder, com.google.android.gms.dynamic.IObjectWrapper] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f8038a;
        int iA = n3.b.a(parcel);
        n3.b.m(parcel, 1, str, false);
        n3.b.c(parcel, 2, this.f8039b);
        n3.b.c(parcel, 3, this.f8040c);
        n3.b.f(parcel, 4, com.google.android.gms.dynamic.a.b(this.f8041f), false);
        n3.b.c(parcel, 5, this.f8042h);
        n3.b.c(parcel, 6, this.f8043i);
        n3.b.b(parcel, iA);
    }
}
