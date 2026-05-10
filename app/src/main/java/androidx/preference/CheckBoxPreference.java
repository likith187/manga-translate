package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;

/* JADX INFO: loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    private final a mListener;

    private class a implements CompoundButton.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (CheckBoxPreference.this.callChangeListener(Boolean.valueOf(z10))) {
                CheckBoxPreference.this.setChecked(z10);
            } else {
                compoundButton.setChecked(!z10);
            }
        }
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void h(View view) {
        boolean z10 = view instanceof CompoundButton;
        if (z10) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z10) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.mListener);
        }
    }

    private void i(View view) {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            h(view.findViewById(R.id.checkbox));
            syncSummaryView(view.findViewById(R.id.summary));
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        h(lVar.b(R.id.checkbox));
        syncSummaryView(lVar);
    }

    @Override // androidx.preference.Preference
    protected void performClick(View view) {
        super.performClick(view);
        i(view);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CheckBoxPreference, i10, i11);
        setSummaryOn(t.k.m(typedArrayObtainStyledAttributes, R$styleable.CheckBoxPreference_summaryOn, R$styleable.CheckBoxPreference_android_summaryOn));
        setSummaryOff(t.k.m(typedArrayObtainStyledAttributes, R$styleable.CheckBoxPreference_summaryOff, R$styleable.CheckBoxPreference_android_summaryOff));
        setDisableDependentsState(t.k.b(typedArrayObtainStyledAttributes, R$styleable.CheckBoxPreference_disableDependentsState, R$styleable.CheckBoxPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, t.k.a(context, R$attr.checkBoxPreferenceStyle, R.attr.checkBoxPreferenceStyle));
    }
}
