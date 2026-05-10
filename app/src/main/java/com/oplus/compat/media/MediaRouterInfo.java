package com.oplus.compat.media;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class MediaRouterInfo implements Parcelable {
    public static final Parcelable.Creator<MediaRouterInfo> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f11166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f11167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f11168c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f11169f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f11170h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f11171i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f11172j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f11173k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f11174l;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaRouterInfo createFromParcel(Parcel parcel) {
            return new MediaRouterInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MediaRouterInfo[] newArray(int i10) {
            return new MediaRouterInfo[i10];
        }
    }

    public MediaRouterInfo(Parcel parcel) {
        this.f11171i = -1;
        this.f11166a = parcel.readString();
        this.f11167b = parcel.readInt();
        this.f11168c = parcel.readString();
        this.f11169f = parcel.readInt();
        this.f11170h = parcel.readInt();
        this.f11171i = parcel.readInt();
        this.f11172j = parcel.readString();
        this.f11173k = parcel.readString();
        this.f11174l = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MediaRouterInfo mediaRouterInfo = (MediaRouterInfo) obj;
        String str = this.f11166a;
        if (str != null && !str.equals(mediaRouterInfo.f11166a)) {
            return false;
        }
        String str2 = this.f11172j;
        if (str2 != null && !str2.equals(mediaRouterInfo.f11172j)) {
            return false;
        }
        String str3 = this.f11173k;
        return str3 == null || str3.equals(mediaRouterInfo.f11173k);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11166a, this.f11172j, this.f11173k, Integer.valueOf(this.f11170h)});
    }

    public String toString() {
        return "MediaRouterInfo{mName='" + this.f11166a + "', mNameResId=" + this.f11167b + ", mDescription='" + this.f11168c + "', mSupportedTypes=" + this.f11169f + ", mDeviceType=" + this.f11170h + ", mPresentationDisplayId=" + this.f11171i + ", mDeviceAddress='" + this.f11172j + "', mGlobalRouteId='" + this.f11173k + "', mResolvedStatusCode=" + this.f11174l + AbstractJsonLexerKt.END_OBJ;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f11166a);
        parcel.writeInt(this.f11167b);
        parcel.writeString(this.f11168c);
        parcel.writeInt(this.f11169f);
        parcel.writeInt(this.f11170h);
        parcel.writeInt(this.f11171i);
        parcel.writeString(this.f11172j);
        parcel.writeString(this.f11173k);
        parcel.writeInt(this.f11174l);
    }
}
