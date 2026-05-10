package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class DialogPreference extends Preference {
    private Drawable mDialogIcon;
    private int mDialogLayoutResId;
    private CharSequence mDialogMessage;
    private CharSequence mDialogTitle;
    private CharSequence mNegativeButtonText;
    private CharSequence mPositiveButtonText;

    public interface a {
        Preference findPreference(CharSequence charSequence);
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DialogPreference, i10, i11);
        String strM = t.k.m(typedArrayObtainStyledAttributes, R$styleable.DialogPreference_dialogTitle, R$styleable.DialogPreference_android_dialogTitle);
        this.mDialogTitle = strM;
        if (strM == null) {
            this.mDialogTitle = getTitle();
        }
        this.mDialogMessage = t.k.m(typedArrayObtainStyledAttributes, R$styleable.DialogPreference_dialogMessage, R$styleable.DialogPreference_android_dialogMessage);
        this.mDialogIcon = t.k.c(typedArrayObtainStyledAttributes, R$styleable.DialogPreference_dialogIcon, R$styleable.DialogPreference_android_dialogIcon);
        this.mPositiveButtonText = t.k.m(typedArrayObtainStyledAttributes, R$styleable.DialogPreference_positiveButtonText, R$styleable.DialogPreference_android_positiveButtonText);
        this.mNegativeButtonText = t.k.m(typedArrayObtainStyledAttributes, R$styleable.DialogPreference_negativeButtonText, R$styleable.DialogPreference_android_negativeButtonText);
        this.mDialogLayoutResId = t.k.l(typedArrayObtainStyledAttributes, R$styleable.DialogPreference_dialogLayout, R$styleable.DialogPreference_android_dialogLayout, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    public Drawable getDialogIcon() {
        return this.mDialogIcon;
    }

    public int getDialogLayoutResource() {
        return this.mDialogLayoutResId;
    }

    public CharSequence getDialogMessage() {
        return this.mDialogMessage;
    }

    public CharSequence getDialogTitle() {
        return this.mDialogTitle;
    }

    public CharSequence getNegativeButtonText() {
        return this.mNegativeButtonText;
    }

    public CharSequence getPositiveButtonText() {
        return this.mPositiveButtonText;
    }

    @Override // androidx.preference.Preference
    protected void onClick() {
        getPreferenceManager().s(this);
    }

    public void setDialogIcon(Drawable drawable) {
        this.mDialogIcon = drawable;
    }

    public void setDialogLayoutResource(int i10) {
        this.mDialogLayoutResId = i10;
    }

    public void setDialogMessage(CharSequence charSequence) {
        this.mDialogMessage = charSequence;
    }

    public void setDialogTitle(CharSequence charSequence) {
        this.mDialogTitle = charSequence;
    }

    public void setNegativeButtonText(CharSequence charSequence) {
        this.mNegativeButtonText = charSequence;
    }

    public void setPositiveButtonText(CharSequence charSequence) {
        this.mPositiveButtonText = charSequence;
    }

    public void setDialogIcon(int i10) {
        this.mDialogIcon = e.a.b(getContext(), i10);
    }

    public void setDialogMessage(int i10) {
        setDialogMessage(getContext().getString(i10));
    }

    public void setDialogTitle(int i10) {
        setDialogTitle(getContext().getString(i10));
    }

    public void setNegativeButtonText(int i10) {
        setNegativeButtonText(getContext().getString(i10));
    }

    public void setPositiveButtonText(int i10) {
        setPositiveButtonText(getContext().getString(i10));
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, t.k.a(context, R$attr.dialogPreferenceStyle, R.attr.dialogPreferenceStyle));
    }
}
