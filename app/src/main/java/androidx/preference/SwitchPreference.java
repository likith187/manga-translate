package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.Switch;

/* JADX INFO: loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    private final a mListener;
    private CharSequence mSwitchOff;
    private CharSequence mSwitchOn;

    private class a implements CompoundButton.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (SwitchPreference.this.callChangeListener(Boolean.valueOf(z10))) {
                SwitchPreference.this.setChecked(z10);
            } else {
                compoundButton.setChecked(!z10);
            }
        }
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SwitchPreference, i10, i11);
        setSummaryOn(t.k.m(typedArrayObtainStyledAttributes, R$styleable.SwitchPreference_summaryOn, R$styleable.SwitchPreference_android_summaryOn));
        setSummaryOff(t.k.m(typedArrayObtainStyledAttributes, R$styleable.SwitchPreference_summaryOff, R$styleable.SwitchPreference_android_summaryOff));
        setSwitchTextOn(t.k.m(typedArrayObtainStyledAttributes, R$styleable.SwitchPreference_switchTextOn, R$styleable.SwitchPreference_android_switchTextOn));
        setSwitchTextOff(t.k.m(typedArrayObtainStyledAttributes, R$styleable.SwitchPreference_switchTextOff, R$styleable.SwitchPreference_android_switchTextOff));
        setDisableDependentsState(t.k.b(typedArrayObtainStyledAttributes, R$styleable.SwitchPreference_disableDependentsState, R$styleable.SwitchPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void h(View view) {
        boolean z10 = view instanceof Switch;
        if (z10) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z10) {
            Switch r42 = (Switch) view;
            r42.setTextOn(this.mSwitchOn);
            r42.setTextOff(this.mSwitchOff);
            r42.setOnCheckedChangeListener(this.mListener);
        }
    }

    private void i(View view) {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            h(view.findViewById(R.id.switch_widget));
            syncSummaryView(view.findViewById(R.id.summary));
        }
    }

    public CharSequence getSwitchTextOff() {
        return this.mSwitchOff;
    }

    public CharSequence getSwitchTextOn() {
        return this.mSwitchOn;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        h(lVar.b(R.id.switch_widget));
        syncSummaryView(lVar);
    }

    @Override // androidx.preference.Preference
    protected void performClick(View view) {
        super.performClick(view);
        i(view);
    }

    public void setSwitchTextOff(CharSequence charSequence) {
        this.mSwitchOff = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOn(CharSequence charSequence) {
        this.mSwitchOn = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOff(int i10) {
        setSwitchTextOff(getContext().getString(i10));
    }

    public void setSwitchTextOn(int i10) {
        setSwitchTextOn(getContext().getString(i10));
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, t.k.a(context, R$attr.switchPreferenceStyle, R.attr.switchPreferenceStyle));
    }
}
