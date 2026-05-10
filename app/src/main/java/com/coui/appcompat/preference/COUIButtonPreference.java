package com.coui.appcompat.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.preference.l;
import com.coui.appcompat.button.COUIButton;
import com.support.preference.R$attr;
import com.support.preference.R$id;
import com.support.preference.R$style;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIButtonPreference extends COUIPreference {
    private int mDrawableColor;
    private View.OnClickListener mListener;
    private OnButtonClickListener mOnButtonClickListener;
    private CharSequence mText;
    private int mTextColor;
    private int mTextSize;

    public interface OnButtonClickListener {
        void onButtonClick();
    }

    public COUIButtonPreference(Context context) {
        this(context, null);
    }

    public CharSequence getBtnText() {
        return this.mText;
    }

    public int getDrawableColor() {
        return this.mDrawableColor;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public int getTextSize() {
        return this.mTextSize;
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        COUIButton cOUIButton = (COUIButton) lVar.b(R$id.coui_btn);
        if (cOUIButton != null) {
            cOUIButton.setText(getBtnText());
            cOUIButton.setTextSize(getTextSize());
            if (getTextColor() != 0) {
                cOUIButton.setTextColor(getTextColor());
            }
            if (getDrawableColor() != 0) {
                cOUIButton.setDrawableColor(getDrawableColor());
            }
            cOUIButton.setOnClickListener(this.mListener);
        }
    }

    public void setBtnText(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.mText)) {
            return;
        }
        this.mText = charSequence;
        notifyChanged();
    }

    public void setDrawableColor(int i10) {
        if (this.mDrawableColor != i10) {
            this.mDrawableColor = i10;
            notifyChanged();
        }
    }

    public void setOnButtonClickListener(OnButtonClickListener onButtonClickListener) {
        this.mOnButtonClickListener = onButtonClickListener;
    }

    public void setTextColor(int i10) {
        if (this.mTextColor != i10) {
            this.mTextColor = i10;
            notifyChanged();
        }
    }

    public void setTextSize(int i10) {
        if (this.mTextSize != i10) {
            this.mTextSize = i10;
            notifyChanged();
        }
    }

    public COUIButtonPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiButtonPreferenceStyle);
    }

    public COUIButtonPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Preference_COUI_COUIButtonPreference);
    }

    public COUIButtonPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUIButtonPreference.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (COUIButtonPreference.this.mOnButtonClickListener != null) {
                    COUIButtonPreference.this.mOnButtonClickListener.onButtonClick();
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIButtonPreference, i10, i11);
        this.mText = typedArrayObtainStyledAttributes.getText(R$styleable.COUIButtonPreference_btnText);
        this.mTextSize = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIButtonPreference_btnTextSize, 14);
        this.mTextColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIButtonPreference_btnTextColor, 0);
        this.mDrawableColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIButtonPreference_btnDrawableColor, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
