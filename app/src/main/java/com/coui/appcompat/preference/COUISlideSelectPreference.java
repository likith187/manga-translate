package com.coui.appcompat.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.l;
import com.support.preference.R$attr;
import com.support.preference.R$id;
import com.support.preference.R$style;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUISlideSelectPreference extends COUIPreference {
    public static final int FORCE_CLICK = 1;
    public static final int FORCE_UNCLICK = 2;
    public static final int NORMAL = 0;
    private int mClickStyle;
    Context mContext;
    CharSequence mSelectionText;
    private TextView mStatus1;

    public COUISlideSelectPreference(Context context) {
        this(context, null);
    }

    public CharSequence getSelectionText() {
        CharSequence charSequence = this.mSelectionText;
        return charSequence != null ? charSequence : "";
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        View viewB = lVar.b(R$id.coui_preference);
        if (viewB != null) {
            viewB.setTag(new Object());
            int i10 = this.mClickStyle;
            if (i10 == 1) {
                viewB.setClickable(false);
            } else if (i10 == 2) {
                viewB.setClickable(true);
            }
        }
        View viewB2 = lVar.b(R$id.coui_statusText_select);
        if (viewB2 == null || !(viewB2 instanceof TextView)) {
            return;
        }
        this.mStatus1 = (TextView) viewB2;
        CharSequence charSequence = this.mSelectionText;
        if (TextUtils.isEmpty(charSequence)) {
            this.mStatus1.setVisibility(8);
        } else {
            this.mStatus1.setText(charSequence);
            this.mStatus1.setVisibility(0);
        }
    }

    public void setBlurView(View view) {
    }

    public void setSelectionText(CharSequence charSequence) {
        if ((charSequence != null || this.mSelectionText == null) && (charSequence == null || charSequence.equals(this.mSelectionText))) {
            return;
        }
        this.mSelectionText = charSequence;
        notifyChanged();
    }

    public void setStatusText(CharSequence charSequence) {
        if ((charSequence != null || this.mSelectionText == null) && (charSequence == null || charSequence.equals(this.mSelectionText))) {
            return;
        }
        this.mSelectionText = charSequence;
        notifyChanged();
    }

    public COUISlideSelectPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiSlideSelectPreferenceStyle);
    }

    public COUISlideSelectPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Preference_COUI_COUISelectPreference);
    }

    public COUISlideSelectPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        this.mClickStyle = 0;
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUISlideSelectPreference, i10, i11);
        this.mSelectionText = typedArrayObtainStyledAttributes.getText(R$styleable.COUISlideSelectPreference_coui_select_status1);
        typedArrayObtainStyledAttributes.recycle();
    }
}
