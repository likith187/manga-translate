package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.m0;
import com.coui.appcompat.accessibilityutil.COUIAccessibilityUtil;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Chip f10547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextInputLayout f10548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final EditText f10549c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextWatcher f10550f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f10551h;

    private class b extends TextWatcherAdapter {
        private b() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f10547a.setText(ChipTextInputComboView.this.c("00"));
                return;
            }
            String strC = ChipTextInputComboView.this.c(editable);
            Chip chip = ChipTextInputComboView.this.f10547a;
            if (TextUtils.isEmpty(strC)) {
                strC = ChipTextInputComboView.this.c("00");
            }
            chip.setText(strC);
        }
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(CharSequence charSequence) {
        return TimeModel.a(getResources(), charSequence);
    }

    private void d() {
        this.f10549c.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f10547a.isChecked();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        d();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        this.f10547a.setChecked(z10);
        this.f10549c.setVisibility(z10 ? 0 : 4);
        this.f10547a.setVisibility(z10 ? 8 : 0);
        if (isChecked()) {
            ViewUtils.requestFocusAndShowKeyboard(this.f10549c, false);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f10547a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i10, Object obj) {
        this.f10547a.setTag(i10, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f10547a.toggle();
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        Chip chip = (Chip) layoutInflaterFrom.inflate(R$layout.material_time_chip, (ViewGroup) this, false);
        this.f10547a = chip;
        chip.setAccessibilityClassName(COUIAccessibilityUtil.GENERIC_VIEW_CLASS_NAME);
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(R$layout.material_time_input, (ViewGroup) this, false);
        this.f10548b = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f10549c = editText;
        editText.setVisibility(4);
        b bVar = new b();
        this.f10550f = bVar;
        editText.addTextChangedListener(bVar);
        d();
        addView(chip);
        addView(textInputLayout);
        this.f10551h = (TextView) findViewById(R$id.material_label);
        editText.setId(m0.i());
        m0.w0(this.f10551h, editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }
}
