package com.coloros.translate.engine.info;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class TranslateResult implements Parcelable {
    public static final a CREATOR = new a(null);

    /* JADX INFO: renamed from: a */
    private String f4942a;

    /* JADX INFO: renamed from: b */
    private String f4943b;

    /* JADX INFO: renamed from: c */
    private String f4944c;

    /* JADX INFO: renamed from: f */
    private List f4945f;

    /* JADX INFO: renamed from: h */
    private List f4946h;

    /* JADX INFO: renamed from: i */
    private boolean f4947i;

    public static final class a implements Parcelable.Creator {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a */
        public TranslateResult createFromParcel(Parcel parcel) {
            r.e(parcel, "parcel");
            TranslateResult translateResult = new TranslateResult(null, null, null, null, null, false, 63, null);
            String string = parcel.readString();
            if (string == null) {
                string = "";
            }
            translateResult.l(string);
            String string2 = parcel.readString();
            if (string2 == null) {
                string2 = "";
            }
            translateResult.h(string2);
            String string3 = parcel.readString();
            translateResult.m(string3 != null ? string3 : "");
            translateResult.n(new ArrayList());
            translateResult.g(new ArrayList());
            parcel.readStringList(translateResult.e());
            parcel.readStringList(translateResult.a());
            translateResult.j(parcel.readInt() == 1);
            return translateResult;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b */
        public TranslateResult[] newArray(int i10) {
            return new TranslateResult[i10];
        }

        private a() {
        }
    }

    public TranslateResult(String str, String from, String to, List translationList, List explainList, boolean z10) {
        r.e(from, "from");
        r.e(to, "to");
        r.e(translationList, "translationList");
        r.e(explainList, "explainList");
        this.f4942a = str;
        this.f4943b = from;
        this.f4944c = to;
        this.f4945f = translationList;
        this.f4946h = explainList;
        this.f4947i = z10;
    }

    public final List a() {
        return this.f4946h;
    }

    public final String b() {
        return this.f4943b;
    }

    public final String c() {
        return this.f4942a;
    }

    public final String d() {
        return this.f4944c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final List e() {
        return this.f4945f;
    }

    public final boolean f() {
        return this.f4947i;
    }

    public final void g(List list) {
        r.e(list, "<set-?>");
        this.f4946h = list;
    }

    public final void h(String str) {
        r.e(str, "<set-?>");
        this.f4943b = str;
    }

    public final void j(boolean z10) {
        this.f4947i = z10;
    }

    public final void l(String str) {
        this.f4942a = str;
    }

    public final void m(String str) {
        r.e(str, "<set-?>");
        this.f4944c = str;
    }

    public final void n(List list) {
        r.e(list, "<set-?>");
        this.f4945f = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i10) {
        r.e(dest, "dest");
        dest.writeString(this.f4942a);
        dest.writeString(this.f4943b);
        dest.writeString(this.f4944c);
        dest.writeStringList(this.f4945f);
        dest.writeStringList(this.f4946h);
        dest.writeInt(this.f4947i ? 1 : 0);
    }

    public /* synthetic */ TranslateResult(String str, String str2, String str3, List list, List list2, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? "" : str3, (i10 & 8) != 0 ? new ArrayList() : list, (i10 & 16) != 0 ? new ArrayList() : list2, (i10 & 32) != 0 ? false : z10);
    }
}
