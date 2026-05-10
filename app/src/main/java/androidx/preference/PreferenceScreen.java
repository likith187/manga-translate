package androidx.preference;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import androidx.preference.j;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2925a;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, t.k.a(context, R$attr.preferenceScreenStyle, R.attr.preferenceScreenStyle));
        this.f2925a = true;
    }

    public boolean i() {
        return this.f2925a;
    }

    @Override // androidx.preference.PreferenceGroup
    protected boolean isOnSameScreenAsChildren() {
        return false;
    }

    @Override // androidx.preference.Preference
    protected void onClick() {
        j.b bVarE;
        if (getIntent() != null || getFragment() != null || getPreferenceCount() == 0 || (bVarE = getPreferenceManager().e()) == null) {
            return;
        }
        bVarE.onNavigateToScreen(this);
    }
}
