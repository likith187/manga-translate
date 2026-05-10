package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;
import n3.b;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f8023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f8024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8025c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f8026f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f8027h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f8028i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f8029j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final List f8030k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f8031l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f8032m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f8033n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f8034o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float f8035p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final long f8036q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f8037r;

    WakeLockEvent(int i10, long j10, int i11, String str, int i12, List list, String str2, long j11, int i13, String str3, String str4, float f10, long j12, String str5, boolean z10) {
        this.f8023a = i10;
        this.f8024b = j10;
        this.f8025c = i11;
        this.f8026f = str;
        this.f8027h = str3;
        this.f8028i = str5;
        this.f8029j = i12;
        this.f8030k = list;
        this.f8031l = str2;
        this.f8032m = j11;
        this.f8033n = i13;
        this.f8034o = str4;
        this.f8035p = f10;
        this.f8036q = j12;
        this.f8037r = z10;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int D0() {
        return this.f8025c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long E0() {
        return this.f8024b;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String F0() {
        List list = this.f8030k;
        String strJoin = list == null ? "" : TextUtils.join(",", list);
        int i10 = this.f8033n;
        String str = this.f8027h;
        String str2 = this.f8034o;
        float f10 = this.f8035p;
        String str3 = this.f8028i;
        int i11 = this.f8029j;
        String str4 = this.f8026f;
        boolean z10 = this.f8037r;
        StringBuilder sb = new StringBuilder();
        sb.append("\t");
        sb.append(str4);
        sb.append("\t");
        sb.append(i11);
        sb.append("\t");
        sb.append(strJoin);
        sb.append("\t");
        sb.append(i10);
        sb.append("\t");
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append("\t");
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        sb.append("\t");
        sb.append(f10);
        sb.append("\t");
        sb.append(str3 != null ? str3 : "");
        sb.append("\t");
        sb.append(z10);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = b.a(parcel);
        b.g(parcel, 1, this.f8023a);
        b.i(parcel, 2, this.f8024b);
        b.m(parcel, 4, this.f8026f, false);
        b.g(parcel, 5, this.f8029j);
        b.o(parcel, 6, this.f8030k, false);
        b.i(parcel, 8, this.f8032m);
        b.m(parcel, 10, this.f8027h, false);
        b.g(parcel, 11, this.f8025c);
        b.m(parcel, 12, this.f8031l, false);
        b.m(parcel, 13, this.f8034o, false);
        b.g(parcel, 14, this.f8033n);
        b.e(parcel, 15, this.f8035p);
        b.i(parcel, 16, this.f8036q);
        b.m(parcel, 17, this.f8028i, false);
        b.c(parcel, 18, this.f8037r);
        b.b(parcel, iA);
    }
}
