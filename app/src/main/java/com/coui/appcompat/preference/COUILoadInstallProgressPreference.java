package com.coui.appcompat.preference;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.preference.l;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.progressbar.COUIInstallLoadProgress;
import com.coui.appcompat.progressbar.COUILoadProgress;
import com.coui.appcompat.statelistutil.COUIStateListUtil;
import com.support.appcompat.R$color;
import com.support.preference.R$attr;
import com.support.preference.R$id;
import com.support.preference.R$style;
import com.support.preference.R$styleable;
import com.support.progressbar.R$dimen;

/* JADX INFO: loaded from: classes.dex */
public class COUILoadInstallProgressPreference extends COUIPreference {
    private final int mDisabledColor;
    private ColorStateList mInstallBackgroundColorStateList;
    private int mInstallProgressTextColor;
    private COUILoadProgress.OnStateChangeListener mListener;
    private COUIInstallLoadProgress mLoadProgress;
    private int mMax;
    private OnStateChangeListener mOnStateChangeListener;
    private int mProgress;
    private ColorStateList mProgressBackgroundColorStateList;
    private CharSequence mProgressText;
    private ColorStateList mProgressTextColorStateList;
    private int mProgressTextSize;
    private int mState;

    public interface OnStateChangeListener {
        void onStateChanged(COUILoadProgress cOUILoadProgress, int i10);
    }

    public COUILoadInstallProgressPreference(Context context) {
        this(context, null);
    }

    private int getInstallProgressTextColor() {
        return this.mInstallProgressTextColor;
    }

    public COUIInstallLoadProgress getLoadProgressView() {
        return this.mLoadProgress;
    }

    public int getMax() {
        COUIInstallLoadProgress cOUIInstallLoadProgress = this.mLoadProgress;
        if (cOUIInstallLoadProgress != null) {
            return cOUIInstallLoadProgress.getMax();
        }
        return 0;
    }

    public int getProgress() {
        COUIInstallLoadProgress cOUIInstallLoadProgress = this.mLoadProgress;
        if (cOUIInstallLoadProgress != null) {
            return cOUIInstallLoadProgress.getProgress();
        }
        return 0;
    }

    public CharSequence getProgressText() {
        return this.mProgressText;
    }

    public int getProgressTextSize() {
        return this.mProgressTextSize;
    }

    public int getState() {
        COUIInstallLoadProgress cOUIInstallLoadProgress = this.mLoadProgress;
        if (cOUIInstallLoadProgress != null) {
            return cOUIInstallLoadProgress.getState();
        }
        return 0;
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        COUIInstallLoadProgress cOUIInstallLoadProgress = (COUIInstallLoadProgress) lVar.b(R$id.coui_load_progress);
        this.mLoadProgress = cOUIInstallLoadProgress;
        if (cOUIInstallLoadProgress != null) {
            cOUIInstallLoadProgress.setText(getProgressText().toString());
            this.mLoadProgress.setDefaultTextSize(getProgressTextSize());
            ColorStateList colorStateList = this.mProgressTextColorStateList;
            if (colorStateList != null) {
                this.mLoadProgress.setBtnTextColorStateList(colorStateList);
            }
            ColorStateList colorStateList2 = this.mProgressBackgroundColorStateList;
            if (colorStateList2 != null) {
                this.mLoadProgress.setThemeSecondaryColorStateList(colorStateList2);
            }
            ColorStateList colorStateList3 = this.mInstallBackgroundColorStateList;
            if (colorStateList3 != null) {
                this.mLoadProgress.setThemeColorStateList(colorStateList3);
            }
            if (getInstallProgressTextColor() != 0) {
                this.mLoadProgress.setBtnTextColorBySurpassProgress(getInstallProgressTextColor());
            }
            int i10 = this.mMax;
            if (i10 != 0) {
                this.mLoadProgress.setMax(i10);
            }
            this.mLoadProgress.setProgress(this.mProgress);
            this.mLoadProgress.setState(this.mState);
            this.mLoadProgress.setOnStateChangeListener(this.mListener);
        }
    }

    public void setBackgroundColor(int i10) {
        this.mProgressBackgroundColorStateList = COUIStateListUtil.createColorStateList(i10, this.mDisabledColor);
        notifyChanged();
    }

    public void setInstallBackgroundColor(int i10) {
        this.mInstallBackgroundColorStateList = COUIStateListUtil.createColorStateList(i10, this.mDisabledColor);
        notifyChanged();
    }

    public void setInstallProgressTextColor(int i10) {
        if (this.mInstallProgressTextColor != i10) {
            this.mInstallProgressTextColor = i10;
            notifyChanged();
        }
    }

    public void setMax(int i10) {
        if (this.mMax != i10) {
            this.mMax = i10;
            notifyChanged();
        }
    }

    public void setOnStateChangeListener(OnStateChangeListener onStateChangeListener) {
        this.mOnStateChangeListener = onStateChangeListener;
    }

    public void setProgress(int i10) {
        this.mProgress = i10;
        COUIInstallLoadProgress cOUIInstallLoadProgress = this.mLoadProgress;
        if (cOUIInstallLoadProgress != null) {
            cOUIInstallLoadProgress.setProgress(i10);
        }
    }

    public void setProgressText(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.mProgressText)) {
            return;
        }
        this.mProgressText = charSequence;
        COUIInstallLoadProgress cOUIInstallLoadProgress = this.mLoadProgress;
        if (cOUIInstallLoadProgress != null) {
            cOUIInstallLoadProgress.setText(charSequence.toString());
        }
    }

    public void setProgressTextColor(int i10) {
        this.mProgressTextColorStateList = COUIStateListUtil.createColorStateList(i10, this.mDisabledColor);
        notifyChanged();
    }

    public void setProgressTextSize(int i10) {
        if (this.mProgressTextSize != i10) {
            this.mProgressTextSize = i10;
            notifyChanged();
        }
    }

    public void setState(int i10) {
        this.mState = i10;
        COUIInstallLoadProgress cOUIInstallLoadProgress = this.mLoadProgress;
        if (cOUIInstallLoadProgress != null) {
            cOUIInstallLoadProgress.setState(i10);
        }
    }

    public COUILoadInstallProgressPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiLoadInstallProgressPreferenceStyle);
    }

    public COUILoadInstallProgressPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Preference_COUI_COUILoadInstallProgressPreference);
    }

    public COUILoadInstallProgressPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new COUILoadProgress.OnStateChangeListener() { // from class: com.coui.appcompat.preference.COUILoadInstallProgressPreference.1
            @Override // com.coui.appcompat.progressbar.COUILoadProgress.OnStateChangeListener
            public void onStateChanged(COUILoadProgress cOUILoadProgress, int i12) {
                if (COUILoadInstallProgressPreference.this.mOnStateChangeListener != null) {
                    COUILoadInstallProgressPreference.this.mState = i12;
                    COUILoadInstallProgressPreference.this.mOnStateChangeListener.onStateChanged(cOUILoadProgress, i12);
                }
            }
        };
        this.mProgressText = "";
        int color = COUIContextUtil.getColor(getContext(), R$color.coui_color_disabled_neutral);
        this.mDisabledColor = color;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUILoadInstallProgressPreference, i10, i11);
        this.mProgressText = typedArrayObtainStyledAttributes.getText(R$styleable.COUILoadInstallProgressPreference_progressText);
        this.mProgressTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUILoadInstallProgressPreference_progressTextSize, context.getResources().getDimensionPixelSize(R$dimen.coui_install_download_progress_textsize));
        int color2 = typedArrayObtainStyledAttributes.getColor(R$styleable.COUILoadInstallProgressPreference_progressTextColor, 0);
        int color3 = typedArrayObtainStyledAttributes.getColor(R$styleable.COUILoadInstallProgressPreference_backgroundColor, 0);
        int color4 = typedArrayObtainStyledAttributes.getColor(R$styleable.COUILoadInstallProgressPreference_installBackgroundColor, 0);
        this.mInstallProgressTextColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUILoadInstallProgressPreference_installProgressTextColor, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (color2 != 0) {
            this.mProgressTextColorStateList = COUIStateListUtil.createColorStateList(color2, color);
        }
        if (color3 != 0) {
            this.mProgressBackgroundColorStateList = COUIStateListUtil.createColorStateList(color3, color);
        }
        if (color4 != 0) {
            this.mInstallBackgroundColorStateList = COUIStateListUtil.createColorStateList(color4, color);
        }
    }
}
