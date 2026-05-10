package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class MethodInvocation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new b0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f7802c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f7803f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f7804h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f7805i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f7806j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f7807k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f7808l;

    public MethodInvocation(int i10, int i11, int i12, long j10, long j11, String str, String str2, int i13) {
        this(i10, i11, i12, j10, j11, str, str2, i13, -1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7800a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.g(parcel, 2, this.f7801b);
        n3.b.g(parcel, 3, this.f7802c);
        n3.b.i(parcel, 4, this.f7803f);
        n3.b.i(parcel, 5, this.f7804h);
        n3.b.m(parcel, 6, this.f7805i, false);
        n3.b.m(parcel, 7, this.f7806j, false);
        n3.b.g(parcel, 8, this.f7807k);
        n3.b.g(parcel, 9, this.f7808l);
        n3.b.b(parcel, iA);
    }

    public MethodInvocation(int i10, int i11, int i12, long j10, long j11, String str, String str2, int i13, int i14) {
        this.f7800a = i10;
        this.f7801b = i11;
        this.f7802c = i12;
        this.f7803f = j10;
        this.f7804h = j11;
        this.f7805i = str;
        this.f7806j = str2;
        this.f7807k = i13;
        this.f7808l = i14;
    }
}
