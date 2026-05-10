package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class b extends Preference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f2946a;

    b(Context context, List list, long j10) {
        super(context);
        h();
        i(list);
        this.f2946a = j10 + 1000000;
    }

    private void h() {
        setLayoutResource(R$layout.expand_button);
        setIcon(R$drawable.ic_arrow_down_24dp);
        setTitle(R$string.expand_button_title);
        setOrder(999);
    }

    private void i(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        CharSequence string = null;
        while (it.hasNext()) {
            Preference preference = (Preference) it.next();
            CharSequence title = preference.getTitle();
            boolean z10 = preference instanceof PreferenceGroup;
            if (z10 && !TextUtils.isEmpty(title)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.getParent())) {
                if (z10) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(title)) {
                string = string == null ? title : getContext().getString(R$string.summary_collapsed_preference_list, string, title);
            }
        }
        setSummary(string);
    }

    @Override // androidx.preference.Preference
    long getId() {
        return this.f2946a;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        lVar.e(false);
    }
}
