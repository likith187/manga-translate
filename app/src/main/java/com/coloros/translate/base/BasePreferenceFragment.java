package com.coloros.translate.base;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.coloros.translate.R;
import com.coui.appcompat.preference.COUIPreferenceWithAppbarFragment;
import com.coui.appcompat.toolbar.COUIToolbar;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public class BasePreferenceFragment extends COUIPreferenceWithAppbarFragment {
    private final void p(View view) {
        COUIToolbar toolbar = getToolbar();
        if (toolbar != null) {
            ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = toolbar.getResources().getDimensionPixelOffset(R.dimen.dp_52);
            }
            toolbar.setNavigationIcon(com.support.appcompat.R$drawable.coui_back_arrow);
            toolbar.setBackgroundColor(toolbar.getResources().getColor(com.support.appcompat.R$color.coui_color_background_with_card));
            toolbar.setNavigationContentDescription(androidx.appcompat.R$string.abc_action_bar_up_description);
        }
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceWithAppbarFragment
    public String getTitle() {
        return "";
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceWithAppbarFragment, com.coui.appcompat.preference.COUIPreferenceFragment, androidx.preference.g, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        r.e(view, "view");
        super.onViewCreated(view, bundle);
        p(view);
    }
}
