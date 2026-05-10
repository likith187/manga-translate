package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Month f9371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Month f9372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DateValidator f9373c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Month f9374f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f9375h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f9376i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f9377j;

    public interface DateValidator extends Parcelable {
        boolean I(long j10);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), parcel.readInt(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public CalendarConstraints[] newArray(int i10) {
            return new CalendarConstraints[i10];
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final long f9378f = t.a(Month.b(1900, 0).f9399i);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static final long f9379g = t.a(Month.b(2100, 11).f9399i);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f9380a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f9381b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Long f9382c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9383d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private DateValidator f9384e;

        b(CalendarConstraints calendarConstraints) {
            this.f9380a = f9378f;
            this.f9381b = f9379g;
            this.f9384e = DateValidatorPointForward.a(Long.MIN_VALUE);
            this.f9380a = calendarConstraints.f9371a.f9399i;
            this.f9381b = calendarConstraints.f9372b.f9399i;
            this.f9382c = Long.valueOf(calendarConstraints.f9374f.f9399i);
            this.f9383d = calendarConstraints.f9375h;
            this.f9384e = calendarConstraints.f9373c;
        }

        public CalendarConstraints a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f9384e);
            Month monthC = Month.c(this.f9380a);
            Month monthC2 = Month.c(this.f9381b);
            DateValidator dateValidator = (DateValidator) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
            Long l10 = this.f9382c;
            return new CalendarConstraints(monthC, monthC2, dateValidator, l10 == null ? null : Month.c(l10.longValue()), this.f9383d, null);
        }

        public b b(long j10) {
            this.f9382c = Long.valueOf(j10);
            return this;
        }
    }

    /* synthetic */ CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, int i10, a aVar) {
        this(month, month2, dateValidator, month3, i10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.f9371a.equals(calendarConstraints.f9371a) && this.f9372b.equals(calendarConstraints.f9372b) && c0.c.a(this.f9374f, calendarConstraints.f9374f) && this.f9375h == calendarConstraints.f9375h && this.f9373c.equals(calendarConstraints.f9373c);
    }

    Month f(Month month) {
        return month.compareTo(this.f9371a) < 0 ? this.f9371a : month.compareTo(this.f9372b) > 0 ? this.f9372b : month;
    }

    public DateValidator g() {
        return this.f9373c;
    }

    Month h() {
        return this.f9372b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f9371a, this.f9372b, this.f9374f, Integer.valueOf(this.f9375h), this.f9373c});
    }

    int j() {
        return this.f9375h;
    }

    int l() {
        return this.f9377j;
    }

    Month m() {
        return this.f9374f;
    }

    Month n() {
        return this.f9371a;
    }

    int o() {
        return this.f9376i;
    }

    boolean p(long j10) {
        if (this.f9371a.f(1) <= j10) {
            Month month = this.f9372b;
            if (j10 <= month.f(month.f9398h)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f9371a, 0);
        parcel.writeParcelable(this.f9372b, 0);
        parcel.writeParcelable(this.f9374f, 0);
        parcel.writeParcelable(this.f9373c, 0);
        parcel.writeInt(this.f9375h);
    }

    private CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, int i10) {
        Objects.requireNonNull(month, "start cannot be null");
        Objects.requireNonNull(month2, "end cannot be null");
        Objects.requireNonNull(dateValidator, "validator cannot be null");
        this.f9371a = month;
        this.f9372b = month2;
        this.f9374f = month3;
        this.f9375h = i10;
        this.f9373c = dateValidator;
        if (month3 != null && month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.compareTo(month2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i10 < 0 || i10 > t.m().getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.f9377j = month.m(month2) + 1;
        this.f9376i = (month2.f9396c - month.f9396c) + 1;
    }
}
