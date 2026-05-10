package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TelemetryData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TelemetryData> CREATOR = new q();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f7815b;

    public TelemetryData(int i10, List list) {
        this.f7814a = i10;
        this.f7815b = list;
    }

    public final int D0() {
        return this.f7814a;
    }

    public final List E0() {
        return this.f7815b;
    }

    public final void F0(MethodInvocation methodInvocation) {
        if (this.f7815b == null) {
            this.f7815b = new ArrayList();
        }
        this.f7815b.add(methodInvocation);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, this.f7814a);
        n3.b.q(parcel, 2, this.f7815b, false);
        n3.b.b(parcel, iA);
    }
}
