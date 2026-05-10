package com.coloros.translate.ui.setting;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.l;
import com.coui.appcompat.preference.COUIMarkPreference;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class CustomMarkPreference extends COUIMarkPreference {
    public CustomMarkPreference(Context context) {
        super(context);
    }

    @Override // com.coui.appcompat.preference.COUIMarkPreference, androidx.preference.CheckBoxPreference, androidx.preference.Preference
    public void onBindViewHolder(l holder) {
        r.e(holder, "holder");
        super.onBindViewHolder(holder);
        View viewB = holder.b(R.id.icon);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(com.coloros.translate.R.dimen.dp_50);
        if (viewB != null) {
            ViewGroup.LayoutParams layoutParams = viewB.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams.height = dimensionPixelSize;
            layoutParams.width = dimensionPixelSize;
            viewB.setLayoutParams(layoutParams);
        }
    }

    public CustomMarkPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CustomMarkPreference(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public CustomMarkPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }
}
