package com.coloros.translate.engine.info;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class AsrTranslateResult implements Parcelable {
    public static final a CREATOR = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4931c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bundle f4932f;

    public static final class a implements Parcelable.Creator {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AsrTranslateResult createFromParcel(Parcel parcel) {
            r.e(parcel, "parcel");
            AsrTranslateResult asrTranslateResult = new AsrTranslateResult(null, 0, 0, null, 15, null);
            String string = parcel.readString();
            if (string == null) {
                string = "";
            }
            asrTranslateResult.g(string);
            asrTranslateResult.f(parcel.readInt());
            asrTranslateResult.h(parcel.readInt());
            Bundle bundle = parcel.readBundle();
            if (bundle == null) {
                bundle = new Bundle();
            }
            asrTranslateResult.e(bundle);
            return asrTranslateResult;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public AsrTranslateResult[] newArray(int i10) {
            return new AsrTranslateResult[i10];
        }

        private a() {
        }
    }

    public AsrTranslateResult(String translateResult, int i10, int i11, Bundle extras) {
        r.e(translateResult, "translateResult");
        r.e(extras, "extras");
        this.f4929a = translateResult;
        this.f4930b = i10;
        this.f4931c = i11;
        this.f4932f = extras;
    }

    public final Bundle a() {
        return this.f4932f;
    }

    public final int b() {
        return this.f4930b;
    }

    public final String c() {
        return this.f4929a;
    }

    public final int d() {
        return this.f4931c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final void e(Bundle bundle) {
        r.e(bundle, "<set-?>");
        this.f4932f = bundle;
    }

    public final void f(int i10) {
        this.f4930b = i10;
    }

    public final void g(String str) {
        r.e(str, "<set-?>");
        this.f4929a = str;
    }

    public final void h(int i10) {
        this.f4931c = i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i10) {
        r.e(dest, "dest");
        dest.writeString(this.f4929a);
        dest.writeInt(this.f4930b);
        dest.writeInt(this.f4931c);
        dest.writeBundle(this.f4932f);
    }

    public /* synthetic */ AsrTranslateResult(String str, int i10, int i11, Bundle bundle, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? "" : str, (i12 & 2) != 0 ? -1 : i10, (i12 & 4) != 0 ? -1 : i11, (i12 & 8) != 0 ? new Bundle() : bundle);
    }
}
