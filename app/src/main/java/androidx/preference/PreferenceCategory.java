package androidx.preference;

import android.R;
import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    @Override // androidx.preference.Preference
    public boolean isEnabled() {
        return false;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        lVar.itemView.setAccessibilityHeading(true);
    }

    @Override // androidx.preference.Preference
    @Deprecated
    public void onInitializeAccessibilityNodeInfo(d0.h hVar) {
        super.onInitializeAccessibilityNodeInfo(hVar);
    }

    @Override // androidx.preference.Preference
    public boolean shouldDisableDependents() {
        return !super.isEnabled();
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, t.k.a(context, R$attr.preferenceCategoryStyle, R.attr.preferenceCategoryStyle));
    }
}
