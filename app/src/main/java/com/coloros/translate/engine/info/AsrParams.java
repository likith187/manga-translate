package com.coloros.translate.engine.info;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class AsrParams implements Parcelable {
    public static final a CREATOR = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4920c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4921f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f4922h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f4923i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Bundle f4924j;

    public static final class a implements Parcelable.Creator {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AsrParams createFromParcel(Parcel parcel) {
            r.e(parcel, "parcel");
            return new AsrParams(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public AsrParams[] newArray(int i10) {
            return new AsrParams[i10];
        }

        private a() {
        }
    }

    public AsrParams(int i10, String languageFrom, String languageTo, int i11, String format, String rate, Bundle extras) {
        r.e(languageFrom, "languageFrom");
        r.e(languageTo, "languageTo");
        r.e(format, "format");
        r.e(rate, "rate");
        r.e(extras, "extras");
        this.f4918a = i10;
        this.f4919b = languageFrom;
        this.f4920c = languageTo;
        this.f4921f = i11;
        this.f4922h = format;
        this.f4923i = rate;
        this.f4924j = extras;
    }

    public final Bundle a() {
        return this.f4924j;
    }

    public final String b() {
        return this.f4919b;
    }

    public final String c() {
        return this.f4920c;
    }

    public final int d() {
        return this.f4918a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final void e(String str) {
        r.e(str, "<set-?>");
        this.f4919b = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AsrParams)) {
            return false;
        }
        AsrParams asrParams = (AsrParams) obj;
        return this.f4918a == asrParams.f4918a && r.a(this.f4919b, asrParams.f4919b) && r.a(this.f4920c, asrParams.f4920c) && this.f4921f == asrParams.f4921f && r.a(this.f4922h, asrParams.f4922h) && r.a(this.f4923i, asrParams.f4923i) && r.a(this.f4924j, asrParams.f4924j);
    }

    public final void f(String str) {
        r.e(str, "<set-?>");
        this.f4920c = str;
    }

    public final void g(int i10) {
        this.f4918a = i10;
    }

    public int hashCode() {
        return (((((((((((Integer.hashCode(this.f4918a) * 31) + this.f4919b.hashCode()) * 31) + this.f4920c.hashCode()) * 31) + Integer.hashCode(this.f4921f)) * 31) + this.f4922h.hashCode()) * 31) + this.f4923i.hashCode()) * 31) + this.f4924j.hashCode();
    }

    public String toString() {
        return "AsrParams(macSilence=" + this.f4918a + ", languageFrom=" + this.f4919b + ", languageTo=" + this.f4920c + ", translateType=" + this.f4921f + ", format=" + this.f4922h + ", rate=" + this.f4923i + ", extras=" + this.f4924j + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i10) {
        r.e(dest, "dest");
        dest.writeInt(this.f4918a);
        dest.writeString(this.f4919b);
        dest.writeString(this.f4920c);
        dest.writeInt(this.f4921f);
        dest.writeString(this.f4922h);
        dest.writeString(this.f4923i);
        dest.writeBundle(this.f4924j);
    }

    public /* synthetic */ AsrParams(int i10, String str, String str2, int i11, String str3, String str4, Bundle bundle, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, str2, i11, str3, str4, (i12 & 64) != 0 ? new Bundle() : bundle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AsrParams(Parcel parcel) {
        r.e(parcel, "parcel");
        int i10 = parcel.readInt();
        String string = parcel.readString();
        String str = string == null ? "" : string;
        String string2 = parcel.readString();
        String str2 = string2 == null ? "" : string2;
        int i11 = parcel.readInt();
        String string3 = parcel.readString();
        String str3 = string3 == null ? "" : string3;
        String string4 = parcel.readString();
        String str4 = string4 == null ? "" : string4;
        Bundle bundle = parcel.readBundle();
        this(i10, str, str2, i11, str3, str4, bundle == null ? new Bundle() : bundle);
    }
}
