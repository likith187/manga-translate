package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f10594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f10595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f10596c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f10597f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f10598h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f10599i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f10600j;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public TimeModel[] newArray(int i10) {
            return new TimeModel[i10];
        }
    }

    public TimeModel(int i10, int i11, int i12, int i13) {
        this.f10597f = i10;
        this.f10598h = i11;
        this.f10599i = i12;
        this.f10596c = i13;
        this.f10600j = c(i10);
        this.f10594a = new b(59);
        this.f10595b = new b(i13 == 1 ? 23 : 12);
    }

    public static String a(Resources resources, CharSequence charSequence) {
        return b(resources, charSequence, "%02d");
    }

    public static String b(Resources resources, CharSequence charSequence, String str) {
        try {
            return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private static int c(int i10) {
        return i10 >= 12 ? 1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        return this.f10597f == timeModel.f10597f && this.f10598h == timeModel.f10598h && this.f10596c == timeModel.f10596c && this.f10599i == timeModel.f10599i;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f10596c), Integer.valueOf(this.f10597f), Integer.valueOf(this.f10598h), Integer.valueOf(this.f10599i)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f10597f);
        parcel.writeInt(this.f10598h);
        parcel.writeInt(this.f10599i);
        parcel.writeInt(this.f10596c);
    }

    protected TimeModel(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
