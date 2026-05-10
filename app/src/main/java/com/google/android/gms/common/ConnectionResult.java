package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.coui.appcompat.version.COUIVersionUtil;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectionResult extends AbstractSafeParcelable {

    /* JADX INFO: renamed from: a */
    final int f7549a;

    /* JADX INFO: renamed from: b */
    private final int f7550b;

    /* JADX INFO: renamed from: c */
    private final PendingIntent f7551c;

    /* JADX INFO: renamed from: f */
    private final String f7552f;

    /* JADX INFO: renamed from: h */
    public static final ConnectionResult f7548h = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new g();

    ConnectionResult(int i10, int i11, PendingIntent pendingIntent, String str) {
        this.f7549a = i10;
        this.f7550b = i11;
        this.f7551c = pendingIntent;
        this.f7552f = str;
    }

    static String I0(int i10) {
        if (i10 == 99) {
            return "UNFINISHED";
        }
        if (i10 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i10) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i10) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case COUIVersionUtil.COUI_8_2 /* 21 */:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    default:
                        return "UNKNOWN_ERROR_CODE(" + i10 + ")";
                }
        }
    }

    public int D0() {
        return this.f7550b;
    }

    public String E0() {
        return this.f7552f;
    }

    public PendingIntent F0() {
        return this.f7551c;
    }

    public boolean G0() {
        return (this.f7550b == 0 || this.f7551c == null) ? false : true;
    }

    public boolean H0() {
        return this.f7550b == 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f7550b == connectionResult.f7550b && com.google.android.gms.common.internal.j.a(this.f7551c, connectionResult.f7551c) && com.google.android.gms.common.internal.j.a(this.f7552f, connectionResult.f7552f);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.j.b(Integer.valueOf(this.f7550b), this.f7551c, this.f7552f);
    }

    public String toString() {
        j.a aVarC = com.google.android.gms.common.internal.j.c(this);
        aVarC.a("statusCode", I0(this.f7550b));
        aVarC.a("resolution", this.f7551c);
        aVarC.a("message", this.f7552f);
        return aVarC.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7549a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.g(parcel, 2, D0());
        n3.b.l(parcel, 3, F0(), i10, false);
        n3.b.m(parcel, 4, E0(), false);
        n3.b.b(parcel, iA);
    }

    public ConnectionResult(int i10) {
        this(i10, null, null);
    }

    public ConnectionResult(int i10, PendingIntent pendingIntent) {
        this(i10, pendingIntent, null);
    }

    public ConnectionResult(int i10, PendingIntent pendingIntent, String str) {
        this(1, i10, pendingIntent, str);
    }
}
