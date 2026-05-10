package com.oplus.epona;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class Response implements Parcelable {
    public static final Parcelable.Creator<Response> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f11182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f11183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f11184c;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Response createFromParcel(Parcel parcel) {
            return new Response(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Response[] newArray(int i10) {
            return new Response[i10];
        }
    }

    /* synthetic */ Response(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static Response a() {
        return new Response(i.FAILED.getCode(), "somethings not yet...");
    }

    public static Response b(Exception exc) {
        Response response = new Response(i.FAILED.getCode(), "response has exception");
        response.d().putParcelable("epona_exception_info", new ExceptionInfo(exc));
        return response;
    }

    public static Response c(String str) {
        return new Response(i.FAILED.getCode(), str);
    }

    public static Response f(Bundle bundle) {
        Response response = new Response(i.SUCCESS.getCode(), "");
        response.g(bundle);
        return response;
    }

    private void g(Bundle bundle) {
        this.f11184c = bundle;
    }

    public Bundle d() {
        return this.f11184c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean e() {
        return this.f11182a == i.SUCCESS.getCode();
    }

    public String toString() {
        return "Successful=" + e() + ", Message=" + this.f11183b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f11182a);
        parcel.writeString(this.f11183b);
        parcel.writeBundle(this.f11184c);
    }

    private Response(int i10, String str) {
        this.f11182a = i10;
        this.f11183b = str;
        this.f11184c = new Bundle();
    }

    private Response(Parcel parcel) {
        this.f11182a = parcel.readInt();
        this.f11183b = parcel.readString();
        this.f11184c = parcel.readBundle(getClass().getClassLoader());
    }
}
