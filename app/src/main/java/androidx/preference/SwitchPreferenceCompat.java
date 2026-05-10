package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;

/* JADX INFO: loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {
    private final a mListener;
    private CharSequence mSwitchOff;
    private CharSequence mSwitchOn;

    private class a implements CompoundButton.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (SwitchPreferenceCompat.this.callChangeListener(Boolean.valueOf(z10))) {
                SwitchPreferenceCompat.this.setChecked(z10);
            } else {
                compoundButton.setChecked(!z10);
            }
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SwitchPreferenceCompat, i10, i11);
        setSummaryOn(t.k.m(typedArrayObtainStyledAttributes, R$styleable.SwitchPreferenceCompat_summaryOn, R$styleable.SwitchPreferenceCompat_android_summaryOn));
        setSummaryOff(t.k.m(typedArrayObtainStyledAttributes, R$styleable.SwitchPreferenceCompat_summaryOff, R$styleable.SwitchPreferenceCompat_android_summaryOff));
        setSwitchTextOn(t.k.m(typedArrayObtainStyledAttributes, R$styleable.SwitchPreferenceCompat_switchTextOn, R$styleable.SwitchPreferenceCompat_android_switchTextOn));
        setSwitchTextOff(t.k.m(typedArrayObtainStyledAttributes, R$styleable.SwitchPreferenceCompat_switchTextOff, R$styleable.SwitchPreferenceCompat_android_switchTextOff));
        setDisableDependentsState(t.k.b(typedArrayObtainStyledAttributes, R$styleable.SwitchPreferenceCompat_disableDependentsState, R$styleable.SwitchPreferenceCompat_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void h(View view) {
        boolean z10 = view instanceof SwitchCompat;
        if (z10) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z10) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.mSwitchOn);
            switchCompat.setTextOff(this.mSwitchOff);
            switchCompat.setOnCheckedChangeListener(this.mListener);
        }
    }

    private void i(View view) {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            h(view.findViewById(R$id.switchWidget));
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
        h(lVar.b(R$id.switchWidget));
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

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.switchPreferenceCompatStyle);
    }
}
