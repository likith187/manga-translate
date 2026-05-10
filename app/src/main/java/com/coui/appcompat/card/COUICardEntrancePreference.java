package com.coui.appcompat.card;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.preference.l;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.theme.COUIThemeOverlay;
import com.support.appcompat.R$attr;
import com.support.card.R$layout;
import com.support.card.R$styleable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public class COUICardEntrancePreference extends COUIPressFeedbackJumpPreference {
    public static final int CARD_TYPE_LARGE = 2;
    public static final int CARD_TYPE_SMALL = 1;
    public static final int TINT_ICON_ANYWAY = 2;
    public static final int TINT_ICON_BY_GLOBAL_THEME = 1;
    public static final int TINT_ICON_NONE = 0;
    private int cardType;
    private boolean showSummary;
    private boolean statusOn;
    private TextView summaryView;
    private int tintIcon;
    public static final Companion Companion = new Companion(null);
    private static final int LAYOUT_RES_TYPE_SMALL = R$layout.coui_component_card_entrance_preference_type_small;
    private static final int LAYOUT_RES_TYPE_LARGE = R$layout.coui_component_card_entrance_preference_type_large;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICardEntrancePreference(Context context) {
        this(context, null, 0, 0, 14, null);
        r.e(context, "context");
    }

    private final void applyIconToTintType(l lVar) {
        int i10 = this.tintIcon;
        if (i10 == 2 || i10 == 1) {
            COUIThemeOverlay cOUIThemeOverlay = COUIThemeOverlay.getInstance();
            Context context = getContext();
            View viewB = lVar.b(R.id.icon);
            cOUIThemeOverlay.applyCOUITintIcon(context, viewB instanceof ImageView ? (ImageView) viewB : null, this.tintIcon == 2);
        }
    }

    private final int getLayoutResByCardType(int i10) {
        if (i10 != 1 && i10 == 2) {
            return LAYOUT_RES_TYPE_LARGE;
        }
        return LAYOUT_RES_TYPE_SMALL;
    }

    public final int getCardType() {
        return this.cardType;
    }

    public final boolean getShowSummary() {
        return this.showSummary;
    }

    public final boolean getStatusOn() {
        return this.statusOn;
    }

    public final int getTintIcon() {
        return this.tintIcon;
    }

    protected final void initSummaryView(l holder) {
        r.e(holder, "holder");
        View viewB = holder.b(R.id.summary);
        r.c(viewB, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) viewB;
        this.summaryView = textView;
        if (textView != null) {
            COUIDarkModeUtil.setForceDarkAllow(textView, false);
        }
        setSummaryStatus(this.statusOn);
    }

    @Override // com.coui.appcompat.card.COUIPressFeedbackJumpPreference, com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(l holder) {
        r.e(holder, "holder");
        super.onBindViewHolder(holder);
        COUIDarkModeUtil.setForceDarkAllow(holder.itemView, false);
        initSummaryView(holder);
        applyIconToTintType(holder);
    }

    public final void setCardType(int i10) {
        setLayoutResource(getLayoutResByCardType(i10));
        this.cardType = i10;
        notifyChanged();
    }

    public final void setShowSummary(boolean z10) {
        this.showSummary = z10;
        notifyChanged();
    }

    public final void setStatusOn(boolean z10) {
        this.statusOn = z10;
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public void setSummary(CharSequence charSequence) {
        if (this.showSummary) {
            super.setSummary(charSequence);
        } else {
            setStatusText1(charSequence);
        }
    }

    @SuppressLint({"PrivateResource"})
    public final void setSummaryStatus(boolean z10) {
        int attrColor = COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorSecondNeutral, 0);
        int attrColor2 = COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimaryText, 0);
        TextView textView = this.summaryView;
        if (textView != null) {
            if (z10) {
                attrColor = attrColor2;
            }
            textView.setTextColor(attrColor);
        }
    }

    public final void setTintIcon(int i10) {
        this.tintIcon = i10;
        notifyChanged();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICardEntrancePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        r.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICardEntrancePreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, 8, null);
        r.e(context, "context");
    }

    public /* synthetic */ COUICardEntrancePreference(Context context, AttributeSet attributeSet, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? com.support.preference.R$attr.couiJumpPreferenceStyle : i10, (i12 & 8) != 0 ? 0 : i11);
    }

    @Override // androidx.preference.Preference
    public void setSummary(int i10) {
        setSummary(getContext().getString(i10));
    }

    public final void setSummary(CharSequence summary, boolean z10) {
        r.e(summary, "summary");
        if (z10) {
            super.setSummary(summary);
        } else {
            setSummary(summary);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUICardEntrancePreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        r.e(context, "context");
        this.cardType = 1;
        this.showSummary = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUICardEntrancePreference, i10, i11);
        setCardType(typedArrayObtainStyledAttributes.getInteger(R$styleable.COUICardEntrancePreference_entranceCardType, 1));
        setShowSummary(typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUICardEntrancePreference_showSummary, true));
        setTintIcon(typedArrayObtainStyledAttributes.getInteger(R$styleable.COUICardEntrancePreference_tintIcon, 0));
        typedArrayObtainStyledAttributes.recycle();
    }
}
