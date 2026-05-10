package com.coui.appcompat.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.preference.Preference;
import com.support.preference.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class COUIBottomPreference extends Preference {
    public COUIBottomPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutResource(R$layout.coui_preference_bottom);
    }
}
