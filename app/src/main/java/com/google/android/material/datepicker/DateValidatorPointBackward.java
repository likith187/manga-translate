package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class DateValidatorPointBackward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointBackward> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f9389a;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public DateValidatorPointBackward createFromParcel(Parcel parcel) {
            return new DateValidatorPointBackward(parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public DateValidatorPointBackward[] newArray(int i10) {
            return new DateValidatorPointBackward[i10];
        }
    }

    /* synthetic */ DateValidatorPointBackward(long j10, a aVar) {
        this(j10);
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public boolean I(long j10) {
        return j10 <= this.f9389a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DateValidatorPointBackward) && this.f9389a == ((DateValidatorPointBackward) obj).f9389a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f9389a)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f9389a);
    }

    private DateValidatorPointBackward(long j10) {
        this.f9389a = j10;
    }
}
