package com.heytap.epona;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class Response implements Parcelable {
    public static final Parcelable.Creator<Response> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f10801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f10802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f10803c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e f10804f;

    static class a implements Parcelable.Creator {
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

    public static Response b() {
        return new Response(-1, "somethings not yet...");
    }

    public static Response c(String str) {
        return new Response(-1, str);
    }

    public void a(Class cls) throws Throwable {
        Bundle bundle = this.f10803c;
        if (bundle == null) {
            return;
        }
        if (this.f10804f == null) {
            ExceptionInfo exceptionInfo = (ExceptionInfo) bundle.getParcelable("epona_exception_info");
            if (exceptionInfo == null) {
                return;
            } else {
                this.f10804f = e.create(exceptionInfo);
            }
        }
        this.f10804f.maybeRethrow(cls);
    }

    public Bundle d() {
        return this.f10803c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f10802b;
    }

    public boolean f() {
        return this.f10801a == 1;
    }

    public String toString() {
        return "Successful=" + f() + ", Message=" + this.f10802b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f10801a);
        parcel.writeString(this.f10802b);
        parcel.writeBundle(this.f10803c);
    }

    private Response(int i10, String str) {
        this.f10801a = i10;
        this.f10802b = str;
        this.f10803c = new Bundle();
    }

    private Response(Parcel parcel) {
        this.f10801a = parcel.readInt();
        this.f10802b = parcel.readString();
        this.f10803c = parcel.readBundle(getClass().getClassLoader());
    }
}
