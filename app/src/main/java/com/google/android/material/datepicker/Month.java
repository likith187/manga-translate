package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes.dex */
final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new a();

    /* JADX INFO: renamed from: a */
    private final Calendar f9394a;

    /* JADX INFO: renamed from: b */
    final int f9395b;

    /* JADX INFO: renamed from: c */
    final int f9396c;

    /* JADX INFO: renamed from: f */
    final int f9397f;

    /* JADX INFO: renamed from: h */
    final int f9398h;

    /* JADX INFO: renamed from: i */
    final long f9399i;

    /* JADX INFO: renamed from: j */
    private String f9400j;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a */
        public Month createFromParcel(Parcel parcel) {
            return Month.b(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b */
        public Month[] newArray(int i10) {
            return new Month[i10];
        }
    }

    private Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarE = t.e(calendar);
        this.f9394a = calendarE;
        this.f9395b = calendarE.get(2);
        this.f9396c = calendarE.get(1);
        this.f9397f = calendarE.getMaximum(7);
        this.f9398h = calendarE.getActualMaximum(5);
        this.f9399i = calendarE.getTimeInMillis();
    }

    static Month b(int i10, int i11) {
        Calendar calendarM = t.m();
        calendarM.set(1, i10);
        calendarM.set(2, i11);
        return new Month(calendarM);
    }

    static Month c(long j10) {
        Calendar calendarM = t.m();
        calendarM.setTimeInMillis(j10);
        return new Month(calendarM);
    }

    static Month d() {
        return new Month(t.k());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a */
    public int compareTo(Month month) {
        return this.f9394a.compareTo(month.f9394a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    int e(int i10) {
        int i11 = this.f9394a.get(7);
        if (i10 <= 0) {
            i10 = this.f9394a.getFirstDayOfWeek();
        }
        int i12 = i11 - i10;
        return i12 < 0 ? i12 + this.f9397f : i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.f9395b == month.f9395b && this.f9396c == month.f9396c;
    }

    long f(int i10) {
        Calendar calendarE = t.e(this.f9394a);
        calendarE.set(5, i10);
        return calendarE.getTimeInMillis();
    }

    int g(long j10) {
        Calendar calendarE = t.e(this.f9394a);
        calendarE.setTimeInMillis(j10);
        return calendarE.get(5);
    }

    String h() {
        if (this.f9400j == null) {
            this.f9400j = h.l(this.f9394a.getTimeInMillis());
        }
        return this.f9400j;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f9395b), Integer.valueOf(this.f9396c)});
    }

    long j() {
        return this.f9394a.getTimeInMillis();
    }

    Month l(int i10) {
        Calendar calendarE = t.e(this.f9394a);
        calendarE.add(2, i10);
        return new Month(calendarE);
    }

    int m(Month month) {
        if (this.f9394a instanceof GregorianCalendar) {
            return ((month.f9396c - this.f9396c) * 12) + (month.f9395b - this.f9395b);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f9396c);
        parcel.writeInt(this.f9395b);
    }
}
