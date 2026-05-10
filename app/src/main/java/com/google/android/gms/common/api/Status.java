package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class Status extends AbstractSafeParcelable implements ReflectedParcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PendingIntent f7580c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ConnectionResult f7581f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Status f7570h = new Status(-1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Status f7571i = new Status(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Status f7572j = new Status(14);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Status f7573k = new Status(8);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Status f7574l = new Status(15);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Status f7575m = new Status(16);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Status f7577o = new Status(17);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Status f7576n = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new j();

    Status(int i10, String str, PendingIntent pendingIntent, ConnectionResult connectionResult) {
        this.f7578a = i10;
        this.f7579b = str;
        this.f7580c = pendingIntent;
        this.f7581f = connectionResult;
    }

    public ConnectionResult D0() {
        return this.f7581f;
    }

    public PendingIntent E0() {
        return this.f7580c;
    }

    public int F0() {
        return this.f7578a;
    }

    public String G0() {
        return this.f7579b;
    }

    public boolean H0() {
        return this.f7580c != null;
    }

    public void I0(Activity activity, int i10) throws IntentSender.SendIntentException {
        if (H0()) {
            PendingIntent pendingIntent = this.f7580c;
            k.g(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i10, null, 0, 0, 0);
        }
    }

    public final String J0() {
        String str = this.f7579b;
        return str != null ? str : c.a(this.f7578a);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f7578a == status.f7578a && com.google.android.gms.common.internal.j.a(this.f7579b, status.f7579b) && com.google.android.gms.common.internal.j.a(this.f7580c, status.f7580c) && com.google.android.gms.common.internal.j.a(this.f7581f, status.f7581f);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.j.b(Integer.valueOf(this.f7578a), this.f7579b, this.f7580c, this.f7581f);
    }

    public String toString() {
        j.a aVarC = com.google.android.gms.common.internal.j.c(this);
        aVarC.a("statusCode", J0());
        aVarC.a("resolution", this.f7580c);
        return aVarC.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, F0());
        n3.b.m(parcel, 2, G0(), false);
        n3.b.l(parcel, 3, this.f7580c, i10, false);
        n3.b.l(parcel, 4, D0(), i10, false);
        n3.b.b(parcel, iA);
    }

    public Status(int i10) {
        this(i10, (String) null);
    }

    public Status(ConnectionResult connectionResult, String str) {
        this(connectionResult, str, 17);
    }

    public Status(int i10, String str) {
        this(i10, str, (PendingIntent) null);
    }

    public Status(ConnectionResult connectionResult, String str, int i10) {
        this(i10, str, connectionResult.F0(), connectionResult);
    }

    public Status(int i10, String str, PendingIntent pendingIntent) {
        this(i10, str, pendingIntent, null);
    }
}
