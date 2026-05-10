package com.coloros.translate.engine.info;

import android.os.Parcel;
import android.os.Parcelable;
import com.coui.appcompat.tooltips.COUIToolTips;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class OnLineTranslateResult implements Parcelable {
    public static final a CREATOR = new a(null);

    /* JADX INFO: renamed from: a */
    private String f4933a;

    /* JADX INFO: renamed from: b */
    private String f4934b;

    /* JADX INFO: renamed from: c */
    private String f4935c;

    /* JADX INFO: renamed from: f */
    private List f4936f;

    /* JADX INFO: renamed from: h */
    private List f4937h;

    /* JADX INFO: renamed from: i */
    private boolean f4938i;

    /* JADX INFO: renamed from: j */
    private int f4939j;

    /* JADX INFO: renamed from: k */
    private String f4940k;

    /* JADX INFO: renamed from: l */
    private boolean f4941l;

    public static final class a implements Parcelable.Creator {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a */
        public OnLineTranslateResult createFromParcel(Parcel parcel) {
            r.e(parcel, "parcel");
            OnLineTranslateResult onLineTranslateResult = new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null);
            String string = parcel.readString();
            if (string == null) {
                string = "";
            }
            onLineTranslateResult.m(string);
            String string2 = parcel.readString();
            if (string2 == null) {
                string2 = "";
            }
            onLineTranslateResult.j(string2);
            String string3 = parcel.readString();
            if (string3 == null) {
                string3 = "";
            }
            onLineTranslateResult.p(string3);
            onLineTranslateResult.q(new ArrayList());
            onLineTranslateResult.h(new ArrayList());
            parcel.readStringList(onLineTranslateResult.d());
            parcel.readStringList(onLineTranslateResult.b());
            onLineTranslateResult.l(parcel.readInt() == 1);
            onLineTranslateResult.g(parcel.readInt());
            String string4 = parcel.readString();
            onLineTranslateResult.n(string4 != null ? string4 : "");
            onLineTranslateResult.o(parcel.readInt() == 1);
            return onLineTranslateResult;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b */
        public OnLineTranslateResult[] newArray(int i10) {
            return new OnLineTranslateResult[i10];
        }

        private a() {
        }
    }

    public OnLineTranslateResult(String str, String from, String to, List translationList, List explainList, boolean z10, int i10, String requestId, boolean z11) {
        r.e(from, "from");
        r.e(to, "to");
        r.e(translationList, "translationList");
        r.e(explainList, "explainList");
        r.e(requestId, "requestId");
        this.f4933a = str;
        this.f4934b = from;
        this.f4935c = to;
        this.f4936f = translationList;
        this.f4937h = explainList;
        this.f4938i = z10;
        this.f4939j = i10;
        this.f4940k = requestId;
        this.f4941l = z11;
    }

    public final int a() {
        return this.f4939j;
    }

    public final List b() {
        return this.f4937h;
    }

    public final String c() {
        return this.f4940k;
    }

    public final List d() {
        return this.f4936f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean e() {
        return this.f4938i;
    }

    public final boolean f() {
        return this.f4941l;
    }

    public final void g(int i10) {
        this.f4939j = i10;
    }

    public final void h(List list) {
        r.e(list, "<set-?>");
        this.f4937h = list;
    }

    public final void j(String str) {
        r.e(str, "<set-?>");
        this.f4934b = str;
    }

    public final void l(boolean z10) {
        this.f4938i = z10;
    }

    public final void m(String str) {
        this.f4933a = str;
    }

    public final void n(String str) {
        r.e(str, "<set-?>");
        this.f4940k = str;
    }

    public final void o(boolean z10) {
        this.f4941l = z10;
    }

    public final void p(String str) {
        r.e(str, "<set-?>");
        this.f4935c = str;
    }

    public final void q(List list) {
        r.e(list, "<set-?>");
        this.f4936f = list;
    }

    public final OnLineTranslateResult r(TranslateResult translateResult) {
        r.e(translateResult, "translateResult");
        this.f4933a = translateResult.c();
        this.f4934b = translateResult.b();
        this.f4935c = translateResult.d();
        this.f4936f = translateResult.e();
        this.f4937h = translateResult.a();
        this.f4938i = translateResult.f();
        return this;
    }

    public final TranslateResult s() {
        TranslateResult translateResult = new TranslateResult(null, null, null, null, null, false, 63, null);
        translateResult.l(this.f4933a);
        translateResult.h(this.f4934b);
        translateResult.m(this.f4935c);
        translateResult.n(this.f4936f);
        translateResult.g(this.f4937h);
        translateResult.j(this.f4938i);
        return translateResult;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i10) {
        r.e(dest, "dest");
        dest.writeString(this.f4933a);
        dest.writeString(this.f4934b);
        dest.writeString(this.f4935c);
        dest.writeStringList(this.f4936f);
        dest.writeStringList(this.f4937h);
        dest.writeInt(this.f4938i ? 1 : 0);
        dest.writeInt(this.f4939j);
        dest.writeString(this.f4940k);
        dest.writeInt(this.f4941l ? 1 : 0);
    }

    public /* synthetic */ OnLineTranslateResult(String str, String str2, String str3, List list, List list2, boolean z10, int i10, String str4, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2, (i11 & 4) != 0 ? "" : str3, (i11 & 8) != 0 ? new ArrayList() : list, (i11 & 16) != 0 ? new ArrayList() : list2, (i11 & 32) != 0 ? false : z10, (i11 & 64) != 0 ? 0 : i10, (i11 & 128) != 0 ? "" : str4, (i11 & COUIToolTips.ALIGN_TOP) != 0 ? true : z11);
    }
}
