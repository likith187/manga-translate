package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class n extends BaseAdapter {

    /* JADX INFO: renamed from: j */
    static final int f9526j = t.m().getMaximum(4);

    /* JADX INFO: renamed from: k */
    private static final int f9527k = (t.m().getMaximum(5) + t.m().getMaximum(7)) - 1;

    /* JADX INFO: renamed from: a */
    final Month f9528a;

    /* JADX INFO: renamed from: b */
    final DateSelector f9529b;

    /* JADX INFO: renamed from: c */
    private Collection f9530c;

    /* JADX INFO: renamed from: f */
    b f9531f;

    /* JADX INFO: renamed from: h */
    final CalendarConstraints f9532h;

    /* JADX INFO: renamed from: i */
    final DayViewDecorator f9533i;

    n(Month month, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator) {
        this.f9528a = month;
        this.f9529b = dateSelector;
        this.f9532h = calendarConstraints;
        this.f9533i = dayViewDecorator;
        this.f9530c = dateSelector.X();
    }

    private String c(Context context, long j10) {
        return h.e(context, j10, l(j10), k(j10), g(j10));
    }

    private void f(Context context) {
        if (this.f9531f == null) {
            this.f9531f = new b(context);
        }
    }

    private boolean j(long j10) {
        Iterator it = this.f9529b.X().iterator();
        while (it.hasNext()) {
            if (t.a(j10) == t.a(((Long) it.next()).longValue())) {
                return true;
            }
        }
        return false;
    }

    private boolean l(long j10) {
        return t.k().getTimeInMillis() == j10;
    }

    private void o(TextView textView, long j10, int i10) {
        boolean z10;
        a aVar;
        if (textView == null) {
            return;
        }
        Context context = textView.getContext();
        String strC = c(context, j10);
        textView.setContentDescription(strC);
        boolean zI = this.f9532h.g().I(j10);
        if (zI) {
            textView.setEnabled(true);
            boolean zJ = j(j10);
            textView.setSelected(zJ);
            aVar = zJ ? this.f9531f.f9430b : l(j10) ? this.f9531f.f9431c : this.f9531f.f9429a;
            z10 = zJ;
        } else {
            textView.setEnabled(false);
            z10 = false;
            aVar = this.f9531f.f9435g;
        }
        DayViewDecorator dayViewDecorator = this.f9533i;
        if (dayViewDecorator == null || i10 == -1) {
            aVar.d(textView);
            return;
        }
        Month month = this.f9528a;
        int i11 = month.f9396c;
        int i12 = month.f9395b;
        ColorStateList colorStateListA = dayViewDecorator.a(context, i11, i12, i10, zI, z10);
        boolean z11 = z10;
        aVar.e(textView, colorStateListA, this.f9533i.g(context, i11, i12, i10, zI, z11));
        Drawable drawableC = this.f9533i.c(context, i11, i12, i10, zI, z11);
        Drawable drawableE = this.f9533i.e(context, i11, i12, i10, zI, z11);
        Drawable drawableD = this.f9533i.d(context, i11, i12, i10, zI, z11);
        boolean z12 = z10;
        textView.setCompoundDrawables(drawableC, drawableE, drawableD, this.f9533i.b(context, i11, i12, i10, zI, z12));
        textView.setContentDescription(this.f9533i.f(context, i11, i12, i10, zI, z12, strC));
    }

    private void p(MaterialCalendarGridView materialCalendarGridView, long j10) {
        if (Month.c(j10).equals(this.f9528a)) {
            int iG = this.f9528a.g(j10);
            o((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(iG) - materialCalendarGridView.getFirstVisiblePosition()), j10, iG);
        }
    }

    int a(int i10) {
        return b() + (i10 - 1);
    }

    int b() {
        return this.f9528a.e(this.f9532h.j());
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: d */
    public Long getItem(int i10) {
        if (i10 < b() || i10 > m()) {
            return null;
        }
        return Long.valueOf(this.f9528a.f(n(i10)));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0054  */
    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.widget.TextView getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            r5 = this;
            android.content.Context r0 = r8.getContext()
            r5.f(r0)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r7 != 0) goto L1e
            android.content.Context r7 = r8.getContext()
            android.view.LayoutInflater r7 = android.view.LayoutInflater.from(r7)
            int r0 = com.google.android.material.R$layout.mtrl_calendar_day
            android.view.View r7 = r7.inflate(r0, r8, r1)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
        L1e:
            int r7 = r5.b()
            int r7 = r6 - r7
            if (r7 < 0) goto L54
            com.google.android.material.datepicker.Month r8 = r5.f9528a
            int r2 = r8.f9398h
            if (r7 < r2) goto L2d
            goto L54
        L2d:
            r2 = 1
            int r7 = r7 + r2
            r0.setTag(r8)
            android.content.res.Resources r8 = r0.getResources()
            android.content.res.Configuration r8 = r8.getConfiguration()
            java.util.Locale r8 = r8.locale
            java.lang.Integer r3 = java.lang.Integer.valueOf(r7)
            java.lang.Object[] r3 = new java.lang.Object[]{r3}
            java.lang.String r4 = "%d"
            java.lang.String r8 = java.lang.String.format(r8, r4, r3)
            r0.setText(r8)
            r0.setVisibility(r1)
            r0.setEnabled(r2)
            goto L5d
        L54:
            r7 = 8
            r0.setVisibility(r7)
            r0.setEnabled(r1)
            r7 = -1
        L5d:
            java.lang.Long r6 = r5.getItem(r6)
            if (r6 != 0) goto L64
            return r0
        L64:
            long r1 = r6.longValue()
            r5.o(r0, r1, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.n.getView(int, android.view.View, android.view.ViewGroup):android.widget.TextView");
    }

    boolean g(long j10) {
        Iterator it = this.f9529b.G().iterator();
        while (it.hasNext()) {
            Object obj = ((c0.d) it.next()).f4279b;
            if (obj != null && ((Long) obj).longValue() == j10) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return f9527k;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10 / this.f9528a.f9397f;
    }

    boolean h(int i10) {
        return i10 % this.f9528a.f9397f == 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    boolean i(int i10) {
        return (i10 + 1) % this.f9528a.f9397f == 0;
    }

    boolean k(long j10) {
        Iterator it = this.f9529b.G().iterator();
        while (it.hasNext()) {
            Object obj = ((c0.d) it.next()).f4278a;
            if (obj != null && ((Long) obj).longValue() == j10) {
                return true;
            }
        }
        return false;
    }

    int m() {
        return (b() + this.f9528a.f9398h) - 1;
    }

    int n(int i10) {
        return (i10 - b()) + 1;
    }

    public void q(MaterialCalendarGridView materialCalendarGridView) {
        Iterator it = this.f9530c.iterator();
        while (it.hasNext()) {
            p(materialCalendarGridView, ((Long) it.next()).longValue());
        }
        DateSelector dateSelector = this.f9529b;
        if (dateSelector != null) {
            Iterator it2 = dateSelector.X().iterator();
            while (it2.hasNext()) {
                p(materialCalendarGridView, ((Long) it2.next()).longValue());
            }
            this.f9530c = this.f9529b.X();
        }
    }

    boolean r(int i10) {
        return i10 >= b() && i10 <= m();
    }
}
