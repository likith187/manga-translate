package com.coui.appcompat.edittext;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.R$attr;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.support.input.R$string;

/* JADX INFO: loaded from: classes.dex */
public class COUICheckBoxPwd extends AppCompatCheckBox {
    private static final String ACCESSIBILITY_CLASSNAME = "androidx.appcompat.widget.AppCompatButton";

    public COUICheckBoxPwd(Context context) {
        this(context, null);
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ACCESSIBILITY_CLASSNAME;
    }

    public COUICheckBoxPwd(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.checkboxStyle);
    }

    public COUICheckBoxPwd(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setStateDescription("");
        if (TextUtils.isEmpty(getContentDescription())) {
            setContentDescription(getContext().getString(R$string.coui_inputview_show_password_description));
        }
    }
}
