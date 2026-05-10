package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.preference.l;
import com.coui.appcompat.checkbox.COUICheckBox;
import com.support.preference.R$layout;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUICheckBoxPreferenceCategory extends COUIPreferenceCategory {
    private static final String TAG = "CheckBoxCategory";
    private int mDefaultCheckboxState;
    private COUICheckBox.OnStateChangeListener mOnStateChangeListener;

    public COUICheckBoxPreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDefaultCheckboxState = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUICheckBoxPreferenceCategory, 0, 0);
        this.mDefaultCheckboxState = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUICheckBoxPreferenceCategory_default_checkbox_state, this.mDefaultCheckboxState);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceCategory, androidx.preference.PreferenceCategory, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        setWidgetLayoutRes(R$layout.coui_preference_category_widget_layout_checkbox);
        super.onBindViewHolder(lVar);
        COUICheckBox cOUICheckBox = (COUICheckBox) getWidgetLayout().findViewById(R.id.checkbox);
        if (cOUICheckBox != null) {
            int i10 = this.mDefaultCheckboxState;
            if (i10 != 0) {
                cOUICheckBox.setState(i10);
            }
            COUICheckBox.OnStateChangeListener onStateChangeListener = this.mOnStateChangeListener;
            if (onStateChangeListener != null) {
                cOUICheckBox.setOnStateChangeListener(onStateChangeListener);
            }
            cOUICheckBox.setVisibility(0);
        }
    }

    public void setOnStateChangeListener(COUICheckBox.OnStateChangeListener onStateChangeListener) {
        this.mOnStateChangeListener = onStateChangeListener;
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceCategory
    public void setWidgetLayoutClickListener(View.OnClickListener onClickListener) {
        Log.e(TAG, "set Widget Layout Click Listener does not take effect in the COUICheckBoxPreferenceCategory setting, please set setOnStateChangeListener");
    }
}
