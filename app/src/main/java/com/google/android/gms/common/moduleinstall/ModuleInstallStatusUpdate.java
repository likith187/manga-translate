package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import n3.b;
import o3.d;

/* JADX INFO: loaded from: classes.dex */
public class ModuleInstallStatusUpdate extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleInstallStatusUpdate> CREATOR = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Long f7963c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Long f7964f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f7965h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final a f7966i;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f7967a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f7968b;

        a(long j10, long j11) {
            k.i(j11);
            this.f7967a = j10;
            this.f7968b = j11;
        }
    }

    public ModuleInstallStatusUpdate(int i10, int i11, Long l10, Long l11, int i12) {
        this.f7961a = i10;
        this.f7962b = i11;
        this.f7963c = l10;
        this.f7964f = l11;
        this.f7965h = i12;
        this.f7966i = (l10 == null || l11 == null || l11.longValue() == 0) ? null : new a(l10.longValue(), l11.longValue());
    }

    public int D0() {
        return this.f7965h;
    }

    public int E0() {
        return this.f7962b;
    }

    public int F0() {
        return this.f7961a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = b.a(parcel);
        b.g(parcel, 1, F0());
        b.g(parcel, 2, E0());
        b.j(parcel, 3, this.f7963c, false);
        b.j(parcel, 4, this.f7964f, false);
        b.g(parcel, 5, D0());
        b.b(parcel, iA);
    }
}
