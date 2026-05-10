package com.coloros.translate.engine.info;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class AsrResult implements Parcelable {
    public static final a CREATOR = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4927c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bundle f4928f;

    public static final class a implements Parcelable.Creator {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AsrResult createFromParcel(Parcel parcel) {
            r.e(parcel, "parcel");
            AsrResult asrResult = new AsrResult(null, 0, 0, null, 15, null);
            String string = parcel.readString();
            if (string == null) {
                string = "";
            }
            asrResult.h(string);
            asrResult.f(parcel.readInt());
            asrResult.g(parcel.readInt());
            Bundle bundle = parcel.readBundle();
            if (bundle == null) {
                bundle = new Bundle();
            }
            asrResult.e(bundle);
            return asrResult;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public AsrResult[] newArray(int i10) {
            return new AsrResult[i10];
        }

        private a() {
        }
    }

    public AsrResult(String voiceResult, int i10, int i11, Bundle extras) {
        r.e(voiceResult, "voiceResult");
        r.e(extras, "extras");
        this.f4925a = voiceResult;
        this.f4926b = i10;
        this.f4927c = i11;
        this.f4928f = extras;
    }

    public final Bundle a() {
        return this.f4928f;
    }

    public final int b() {
        return this.f4926b;
    }

    public final int c() {
        return this.f4927c;
    }

    public final String d() {
        return this.f4925a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final void e(Bundle bundle) {
        r.e(bundle, "<set-?>");
        this.f4928f = bundle;
    }

    public final void f(int i10) {
        this.f4926b = i10;
    }

    public final void g(int i10) {
        this.f4927c = i10;
    }

    public final void h(String str) {
        r.e(str, "<set-?>");
        this.f4925a = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i10) {
        r.e(dest, "dest");
        dest.writeString(this.f4925a);
        dest.writeInt(this.f4926b);
        dest.writeInt(this.f4927c);
        dest.writeBundle(this.f4928f);
    }

    public /* synthetic */ AsrResult(String str, int i10, int i11, Bundle bundle, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? "" : str, (i12 & 2) != 0 ? -1 : i10, (i12 & 4) != 0 ? -1 : i11, (i12 & 8) != 0 ? new Bundle() : bundle);
    }
}
