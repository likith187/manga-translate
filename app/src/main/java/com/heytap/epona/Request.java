package com.heytap.epona;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class Request implements Parcelable {
    public static final Parcelable.Creator<Request> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f10795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f10796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f10797c;

    static class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Request createFromParcel(Parcel parcel) {
            return new Request(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Request[] newArray(int i10) {
            return new Request[i10];
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f10798a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f10799b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Bundle f10800c = new Bundle();

        public Request a() {
            return new Request(this.f10798a, this.f10799b, this.f10800c, null);
        }

        public b b(String str) {
            this.f10799b = str;
            return this;
        }

        public b c(String str) {
            this.f10798a = str;
            return this;
        }
    }

    /* synthetic */ Request(Parcel parcel, a aVar) {
        this(parcel);
    }

    public String a() {
        return this.f10796b;
    }

    public String b() {
        return this.f10795a;
    }

    public void c(Bundle bundle) {
        this.f10797c.putAll(bundle);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "Request{Component=" + this.f10795a + ",Action=" + this.f10796b + ",Bundle=" + this.f10797c + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f10795a);
        parcel.writeString(this.f10796b);
        parcel.writeBundle(this.f10797c);
    }

    /* synthetic */ Request(String str, String str2, Bundle bundle, a aVar) {
        this(str, str2, bundle);
    }

    private Request(String str, String str2, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        this.f10797c = bundle2;
        this.f10795a = str;
        this.f10796b = str2;
        bundle2.putAll(bundle);
    }

    private Request(Parcel parcel) {
        this.f10797c = new Bundle();
        this.f10795a = parcel.readString();
        this.f10796b = parcel.readString();
        this.f10797c = parcel.readBundle(getClass().getClassLoader());
    }
}
