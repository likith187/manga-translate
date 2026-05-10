package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Uri f7766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f7767c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f7768f;

    WebImage(int i10, Uri uri, int i11, int i12) {
        this.f7765a = i10;
        this.f7766b = uri;
        this.f7767c = i11;
        this.f7768f = i12;
    }

    public int D0() {
        return this.f7768f;
    }

    public Uri E0() {
        return this.f7766b;
    }

    public int F0() {
        return this.f7767c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            if (j.a(this.f7766b, webImage.f7766b) && this.f7767c == webImage.f7767c && this.f7768f == webImage.f7768f) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return j.b(this.f7766b, Integer.valueOf(this.f7767c), Integer.valueOf(this.f7768f));
    }

    public String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f7767c), Integer.valueOf(this.f7768f), this.f7766b.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7765a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.l(parcel, 2, E0(), i10, false);
        n3.b.g(parcel, 3, F0());
        n3.b.g(parcel, 4, D0());
        n3.b.b(parcel, iA);
    }
}
