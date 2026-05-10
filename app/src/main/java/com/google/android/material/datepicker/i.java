package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class i extends BaseAdapter {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f9451f = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Calendar f9452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f9453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f9454c;

    public i() {
        Calendar calendarM = t.m();
        this.f9452a = calendarM;
        this.f9453b = calendarM.getMaximum(7);
        this.f9454c = calendarM.getFirstDayOfWeek();
    }

    private int b(int i10) {
        int i11 = i10 + this.f9454c;
        int i12 = this.f9453b;
        return i11 > i12 ? i11 - i12 : i11;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer getItem(int i10) {
        if (i10 >= this.f9453b) {
            return null;
        }
        return Integer.valueOf(b(i10));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f9453b;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f9452a.set(7, b(i10));
        textView.setText(this.f9452a.getDisplayName(7, f9451f, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R$string.mtrl_picker_day_of_week_column_header), this.f9452a.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    public i(int i10) {
        Calendar calendarM = t.m();
        this.f9452a = calendarM;
        this.f9453b = calendarM.getMaximum(7);
        this.f9454c = i10;
    }
}
