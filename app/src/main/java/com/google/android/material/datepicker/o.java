package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.m0;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.datepicker.j;

/* JADX INFO: loaded from: classes.dex */
class o extends RecyclerView.h {

    /* JADX INFO: renamed from: a */
    private final CalendarConstraints f9534a;

    /* JADX INFO: renamed from: b */
    private final DateSelector f9535b;

    /* JADX INFO: renamed from: c */
    private final DayViewDecorator f9536c;

    /* JADX INFO: renamed from: d */
    private final j.m f9537d;

    /* JADX INFO: renamed from: e */
    private final int f9538e;

    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ MaterialCalendarGridView f9539a;

        a(MaterialCalendarGridView materialCalendarGridView) {
            this.f9539a = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
            if (this.f9539a.getAdapter().r(i10)) {
                o.this.f9537d.a(this.f9539a.getAdapter().getItem(i10).longValue());
            }
        }
    }

    public static class b extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a */
        final TextView f9541a;

        /* JADX INFO: renamed from: b */
        final MaterialCalendarGridView f9542b;

        b(LinearLayout linearLayout, boolean z10) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R$id.month_title);
            this.f9541a = textView;
            m0.k0(textView, true);
            this.f9542b = (MaterialCalendarGridView) linearLayout.findViewById(R$id.month_grid);
            if (z10) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    o(Context context, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator, j.m mVar) {
        Month monthN = calendarConstraints.n();
        Month monthH = calendarConstraints.h();
        Month monthM = calendarConstraints.m();
        if (monthN.compareTo(monthM) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (monthM.compareTo(monthH) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f9538e = (n.f9526j * j.A(context)) + (l.C(context) ? j.A(context) : 0);
        this.f9534a = calendarConstraints;
        this.f9535b = dateSelector;
        this.f9536c = dayViewDecorator;
        this.f9537d = mVar;
        setHasStableIds(true);
    }

    Month g(int i10) {
        return this.f9534a.n().l(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f9534a.l();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public long getItemId(int i10) {
        return this.f9534a.n().l(i10).j();
    }

    CharSequence h(int i10) {
        return g(i10).h();
    }

    int i(Month month) {
        return this.f9534a.n().m(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: j */
    public void onBindViewHolder(b bVar, int i10) {
        Month monthL = this.f9534a.n().l(i10);
        bVar.f9541a.setText(monthL.h());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.f9542b.findViewById(R$id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !monthL.equals(materialCalendarGridView.getAdapter().f9528a)) {
            n nVar = new n(monthL, this.f9535b, this.f9534a, this.f9536c);
            materialCalendarGridView.setNumColumns(monthL.f9397f);
            materialCalendarGridView.setAdapter((ListAdapter) nVar);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().q(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: k */
    public b onCreateViewHolder(ViewGroup viewGroup, int i10) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!l.C(viewGroup.getContext())) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.q(-1, this.f9538e));
        return new b(linearLayout, true);
    }
}
