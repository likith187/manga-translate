package com.coloros.translate.engine.info;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class TtsParams implements Parcelable {
    public static final a CREATOR = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4950c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4951f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f4952h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f4953i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f4954j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f4955k;

    public static final class a implements Parcelable.Creator {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TtsParams createFromParcel(Parcel parcel) {
            r.e(parcel, "parcel");
            TtsParams ttsParams = new TtsParams(null, null, 0, 0, 0, null, 0, false, 255, null);
            String string = parcel.readString();
            if (string == null) {
                string = "";
            }
            ttsParams.m(string);
            String string2 = parcel.readString();
            if (string2 == null) {
                string2 = "";
            }
            ttsParams.g(string2);
            ttsParams.n(parcel.readInt());
            ttsParams.h(parcel.readInt());
            ttsParams.l(parcel.readInt());
            String string3 = parcel.readString();
            ttsParams.f(string3 != null ? string3 : "");
            ttsParams.j(parcel.readInt());
            ttsParams.e(parcel.readInt() == 1);
            return ttsParams;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public TtsParams[] newArray(int i10) {
            return new TtsParams[i10];
        }

        private a() {
        }
    }

    public TtsParams(String voice, String language, int i10, int i11, int i12, String format, int i13, boolean z10) {
        r.e(voice, "voice");
        r.e(language, "language");
        r.e(format, "format");
        this.f4948a = voice;
        this.f4949b = language;
        this.f4950c = i10;
        this.f4951f = i11;
        this.f4952h = i12;
        this.f4953i = format;
        this.f4954j = i13;
        this.f4955k = z10;
    }

    public final String a() {
        return this.f4953i;
    }

    public final String b() {
        return this.f4949b;
    }

    public final String c() {
        return this.f4948a;
    }

    public final boolean d() {
        return this.f4955k;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final void e(boolean z10) {
        this.f4955k = z10;
    }

    public final void f(String str) {
        r.e(str, "<set-?>");
        this.f4953i = str;
    }

    public final void g(String str) {
        r.e(str, "<set-?>");
        this.f4949b = str;
    }

    public final void h(int i10) {
        this.f4951f = i10;
    }

    public final void j(int i10) {
        this.f4954j = i10;
    }

    public final void l(int i10) {
        this.f4952h = i10;
    }

    public final void m(String str) {
        r.e(str, "<set-?>");
        this.f4948a = str;
    }

    public final void n(int i10) {
        this.f4950c = i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i10) {
        r.e(dest, "dest");
        dest.writeString(this.f4948a);
        dest.writeString(this.f4949b);
        dest.writeInt(this.f4950c);
        dest.writeInt(this.f4951f);
        dest.writeInt(this.f4952h);
        dest.writeString(this.f4953i);
        dest.writeInt(this.f4954j);
        dest.writeInt(this.f4955k ? 1 : 0);
    }

    public /* synthetic */ TtsParams(String str, String str2, int i10, int i11, int i12, String str3, int i13, boolean z10, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? "" : str, (i14 & 2) != 0 ? "" : str2, (i14 & 4) != 0 ? 50 : i10, (i14 & 8) != 0 ? 0 : i11, (i14 & 16) != 0 ? 0 : i12, (i14 & 32) != 0 ? "pcm" : str3, (i14 & 64) != 0 ? 16000 : i13, (i14 & 128) != 0 ? true : z10);
    }
}
