package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class m<S> extends q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f9522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DateSelector f9523c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CalendarConstraints f9524f;

    class a extends p {
        a() {
        }

        @Override // com.google.android.material.datepicker.p
        public void a() {
            Iterator it = m.this.f9543a.iterator();
            while (it.hasNext()) {
                ((p) it.next()).a();
            }
        }

        @Override // com.google.android.material.datepicker.p
        public void b(Object obj) {
            Iterator it = m.this.f9543a.iterator();
            while (it.hasNext()) {
                ((p) it.next()).b(obj);
            }
        }
    }

    static m n(DateSelector dateSelector, int i10, CalendarConstraints calendarConstraints) {
        m mVar = new m();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i10);
        bundle.putParcelable("DATE_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        mVar.setArguments(bundle);
        return mVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f9522b = bundle.getInt("THEME_RES_ID_KEY");
        this.f9523c = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f9524f = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f9523c.x0(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f9522b)), viewGroup, bundle, this.f9524f, new a());
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f9522b);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f9523c);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f9524f);
    }
}
