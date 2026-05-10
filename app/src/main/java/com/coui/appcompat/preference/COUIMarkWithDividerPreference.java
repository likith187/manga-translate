package com.coui.appcompat.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.preference.l;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.poplist.PreciseClickHelper;
import com.support.preference.R$attr;
import com.support.preference.R$id;
import com.support.preference.R$style;

/* JADX INFO: loaded from: classes.dex */
public class COUIMarkWithDividerPreference extends COUIMarkPreference {
    private OnMainLayoutClickListener mClickListener;
    private LinearLayout mMainLayout;
    private PreciseClickHelper mPreciseHelper;
    private PreciseClickHelper.OnPreciseClickListener mPreciseListener;
    private LinearLayout mRadioLayout;

    public interface OnMainLayoutClickListener {
        void onMainLayoutClick();
    }

    public COUIMarkWithDividerPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    private void initPreciseHelper() {
        if (this.mMainLayout == null || this.mPreciseListener == null) {
            return;
        }
        removePreciseClickListener();
        PreciseClickHelper preciseClickHelper = new PreciseClickHelper(this.mMainLayout, new PreciseClickHelper.OnPreciseClickListener() { // from class: com.coui.appcompat.preference.COUIMarkWithDividerPreference.3
            @Override // com.coui.appcompat.poplist.PreciseClickHelper.OnPreciseClickListener
            public void onClick(View view, int i10, int i11) {
                COUIMarkWithDividerPreference.this.mPreciseListener.onClick(view, i10, i11);
                if (COUIMarkWithDividerPreference.this.mMainLayout == null || COUIMarkWithDividerPreference.this.mClickListener == null) {
                    return;
                }
                COUIMarkWithDividerPreference.this.mClickListener.onMainLayoutClick();
            }
        });
        this.mPreciseHelper = preciseClickHelper;
        preciseClickHelper.setup();
    }

    public OnMainLayoutClickListener getOnMainLayoutClickListener() {
        return this.mClickListener;
    }

    @Override // com.coui.appcompat.preference.COUIMarkPreference, androidx.preference.CheckBoxPreference, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        LinearLayout linearLayout = (LinearLayout) lVar.itemView.findViewById(R$id.main_layout);
        this.mMainLayout = linearLayout;
        View view = lVar.itemView;
        if ((view instanceof COUICardListSelectedItemLayout) && linearLayout != null) {
            ((COUICardListSelectedItemLayout) view).setMainLayoutToSetExtraPadding(linearLayout);
        }
        super.onBindViewHolder(lVar);
        initPreciseHelper();
        LinearLayout linearLayout2 = this.mMainLayout;
        if (linearLayout2 != null) {
            if (this.mPreciseListener == null) {
                linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUIMarkWithDividerPreference.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (COUIMarkWithDividerPreference.this.mClickListener != null) {
                            COUIMarkWithDividerPreference.this.mClickListener.onMainLayoutClick();
                        }
                    }
                });
            }
            this.mMainLayout.setClickable(isSelectable());
        }
        LinearLayout linearLayout3 = (LinearLayout) lVar.itemView.findViewById(R$id.radio_layout);
        this.mRadioLayout = linearLayout3;
        if (linearLayout3 != null) {
            linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUIMarkWithDividerPreference.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    COUIMarkWithDividerPreference.super.onClick();
                }
            });
            this.mRadioLayout.setClickable(isSelectable());
        }
    }

    public void removePreciseClickListener() {
        PreciseClickHelper preciseClickHelper = this.mPreciseHelper;
        if (preciseClickHelper != null) {
            preciseClickHelper.unSet();
            this.mPreciseHelper = null;
        }
        LinearLayout linearLayout = this.mMainLayout;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUIMarkWithDividerPreference.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (COUIMarkWithDividerPreference.this.mClickListener != null) {
                        COUIMarkWithDividerPreference.this.mClickListener.onMainLayoutClick();
                    }
                }
            });
        }
    }

    public void setOnMainLayoutListener(OnMainLayoutClickListener onMainLayoutClickListener) {
        this.mClickListener = onMainLayoutClickListener;
    }

    public void setOnPreciseClickListener(PreciseClickHelper.OnPreciseClickListener onPreciseClickListener) {
        this.mPreciseListener = onPreciseClickListener;
        initPreciseHelper();
    }

    public COUIMarkWithDividerPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Preference_COUI_COUIRadioWithDividerPreference);
    }

    public COUIMarkWithDividerPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiRadioWithDividerPreferenceStyle);
    }

    public COUIMarkWithDividerPreference(Context context) {
        this(context, null);
    }
}
