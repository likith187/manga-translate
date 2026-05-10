package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$layout;
import com.google.android.material.datepicker.j;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class u extends RecyclerView.h {

    /* JADX INFO: renamed from: a */
    private final j f9549a;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int f9550a;

        a(int i10) {
            this.f9550a = i10;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u.this.f9549a.F(u.this.f9549a.w().f(Month.b(this.f9550a, u.this.f9549a.y().f9395b)));
            u.this.f9549a.G(j.l.DAY);
        }
    }

    public static class b extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a */
        final TextView f9552a;

        b(TextView textView) {
            super(textView);
            this.f9552a = textView;
        }
    }

    u(j jVar) {
        this.f9549a = jVar;
    }

    private View.OnClickListener g(int i10) {
        return new a(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f9549a.w().o();
    }

    int h(int i10) {
        return i10 - this.f9549a.w().n().f9396c;
    }

    int i(int i10) {
        return this.f9549a.w().n().f9396c + i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: j */
    public void onBindViewHolder(b bVar, int i10) {
        int i11 = i(i10);
        bVar.f9552a.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i11)));
        TextView textView = bVar.f9552a;
        textView.setContentDescription(h.k(textView.getContext(), i11));
        com.google.android.material.datepicker.b bVarX = this.f9549a.x();
        Calendar calendarK = t.k();
        com.google.android.material.datepicker.a aVar = calendarK.get(1) == i11 ? bVarX.f9434f : bVarX.f9432d;
        Iterator it = this.f9549a.z().X().iterator();
        while (it.hasNext()) {
            calendarK.setTimeInMillis(((Long) it.next()).longValue());
            if (calendarK.get(1) == i11) {
                aVar = bVarX.f9433e;
            }
        }
        aVar.d(bVar.f9552a);
        bVar.f9552a.setOnClickListener(g(i11));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: k */
    public b onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_year, viewGroup, false));
    }
}
