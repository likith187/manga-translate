package androidx.preference;

import android.R;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.m0;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h extends RecyclerView.h implements Preference.b, PreferenceGroup.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PreferenceGroup f2962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f2963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f2964c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f2965d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f2967f = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f2966e = new Handler();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.m();
        }
    }

    class b implements Preference.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PreferenceGroup f2969a;

        b(PreferenceGroup preferenceGroup) {
            this.f2969a = preferenceGroup;
        }

        @Override // androidx.preference.Preference.d
        public boolean a(Preference preference) {
            this.f2969a.setInitialExpandedChildrenCount(Integer.MAX_VALUE);
            h.this.a(preference);
            this.f2969a.getOnExpandButtonClickListener();
            return true;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2971a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2972b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f2973c;

        c(Preference preference) {
            this.f2973c = preference.getClass().getName();
            this.f2971a = preference.getLayoutResource();
            this.f2972b = preference.getWidgetLayoutResource();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f2971a == cVar.f2971a && this.f2972b == cVar.f2972b && TextUtils.equals(this.f2973c, cVar.f2973c);
        }

        public int hashCode() {
            return ((((527 + this.f2971a) * 31) + this.f2972b) * 31) + this.f2973c.hashCode();
        }
    }

    public h(PreferenceGroup preferenceGroup) {
        this.f2962a = preferenceGroup;
        this.f2962a.setOnPreferenceChangeInternalListener(this);
        this.f2963b = new ArrayList();
        this.f2964c = new ArrayList();
        this.f2965d = new ArrayList();
        PreferenceGroup preferenceGroup2 = this.f2962a;
        if (preferenceGroup2 instanceof PreferenceScreen) {
            setHasStableIds(((PreferenceScreen) preferenceGroup2).i());
        } else {
            setHasStableIds(true);
        }
        m();
    }

    private androidx.preference.b f(PreferenceGroup preferenceGroup, List list) {
        androidx.preference.b bVar = new androidx.preference.b(preferenceGroup.getContext(), list, preferenceGroup.getId());
        bVar.setOnPreferenceClickListener(new b(preferenceGroup));
        return bVar;
    }

    private List g(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int preferenceCount = preferenceGroup.getPreferenceCount();
        int i10 = 0;
        for (int i11 = 0; i11 < preferenceCount; i11++) {
            Preference preference = preferenceGroup.getPreference(i11);
            if (preference.isVisible()) {
                if (!j(preferenceGroup) || i10 < preferenceGroup.getInitialExpandedChildrenCount()) {
                    arrayList.add(preference);
                } else {
                    arrayList2.add(preference);
                }
                if (preference instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference;
                    if (!preferenceGroup2.isOnSameScreenAsChildren()) {
                        continue;
                    } else {
                        if (j(preferenceGroup) && j(preferenceGroup2)) {
                            throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                        }
                        for (Preference preference2 : g(preferenceGroup2)) {
                            if (!j(preferenceGroup) || i10 < preferenceGroup.getInitialExpandedChildrenCount()) {
                                arrayList.add(preference2);
                            } else {
                                arrayList2.add(preference2);
                            }
                            i10++;
                        }
                    }
                } else {
                    i10++;
                }
            }
        }
        if (j(preferenceGroup) && i10 > preferenceGroup.getInitialExpandedChildrenCount()) {
            arrayList.add(f(preferenceGroup, arrayList2));
        }
        return arrayList;
    }

    private void h(List list, PreferenceGroup preferenceGroup) {
        preferenceGroup.sortPreferences();
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i10 = 0; i10 < preferenceCount; i10++) {
            Preference preference = preferenceGroup.getPreference(i10);
            list.add(preference);
            c cVar = new c(preference);
            if (!this.f2965d.contains(cVar)) {
                this.f2965d.add(cVar);
            }
            if (preference instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference;
                if (preferenceGroup2.isOnSameScreenAsChildren()) {
                    h(list, preferenceGroup2);
                }
            }
            preference.setOnPreferenceChangeInternalListener(this);
        }
    }

    private boolean j(PreferenceGroup preferenceGroup) {
        return preferenceGroup.getInitialExpandedChildrenCount() != Integer.MAX_VALUE;
    }

    @Override // androidx.preference.Preference.b
    public void a(Preference preference) {
        this.f2966e.removeCallbacks(this.f2967f);
        this.f2966e.post(this.f2967f);
    }

    @Override // androidx.preference.Preference.b
    public void b(Preference preference) {
        int iIndexOf = this.f2964c.indexOf(preference);
        if (iIndexOf != -1) {
            notifyItemChanged(iIndexOf, preference);
        }
    }

    @Override // androidx.preference.PreferenceGroup.c
    public int c(String str) {
        int size = this.f2964c.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (TextUtils.equals(str, ((Preference) this.f2964c.get(i10)).getKey())) {
                return i10;
            }
        }
        return -1;
    }

    @Override // androidx.preference.Preference.b
    public void d(Preference preference) {
        a(preference);
    }

    @Override // androidx.preference.PreferenceGroup.c
    public int e(Preference preference) {
        int size = this.f2964c.size();
        for (int i10 = 0; i10 < size; i10++) {
            Preference preference2 = (Preference) this.f2964c.get(i10);
            if (preference2 != null && preference2.equals(preference)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f2964c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public long getItemId(int i10) {
        if (hasStableIds()) {
            return i(i10).getId();
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        c cVar = new c(i(i10));
        int iIndexOf = this.f2965d.indexOf(cVar);
        if (iIndexOf != -1) {
            return iIndexOf;
        }
        int size = this.f2965d.size();
        this.f2965d.add(cVar);
        return size;
    }

    public Preference i(int i10) {
        if (i10 < 0 || i10 >= getItemCount()) {
            return null;
        }
        return (Preference) this.f2964c.get(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(l lVar, int i10) {
        i(i10).onBindViewHolder(lVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public l onCreateViewHolder(ViewGroup viewGroup, int i10) {
        c cVar = (c) this.f2965d.get(i10);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        TypedArray typedArrayObtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, R$styleable.BackgroundStyle);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.BackgroundStyle_android_selectableItemBackground);
        if (drawable == null) {
            drawable = e.a.b(viewGroup.getContext(), R.drawable.list_selector_background);
        }
        typedArrayObtainStyledAttributes.recycle();
        View viewInflate = layoutInflaterFrom.inflate(cVar.f2971a, viewGroup, false);
        if (viewInflate.getBackground() == null) {
            m0.n0(viewInflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) viewInflate.findViewById(R.id.widget_frame);
        if (viewGroup2 != null) {
            int i11 = cVar.f2972b;
            if (i11 != 0) {
                layoutInflaterFrom.inflate(i11, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new l(viewInflate);
    }

    void m() {
        Iterator it = this.f2963b.iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).setOnPreferenceChangeInternalListener(null);
        }
        ArrayList arrayList = new ArrayList(this.f2963b.size());
        this.f2963b = arrayList;
        h(arrayList, this.f2962a);
        this.f2964c = g(this.f2962a);
        j preferenceManager = this.f2962a.getPreferenceManager();
        if (preferenceManager != null) {
            preferenceManager.g();
        }
        notifyDataSetChanged();
        Iterator it2 = this.f2963b.iterator();
        while (it2.hasNext()) {
            ((Preference) it2.next()).clearWasDetached();
        }
    }
}
