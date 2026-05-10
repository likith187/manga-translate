package com.coui.appcompat.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.preference.R$attr;
import androidx.preference.l;
import androidx.viewpager2.widget.ViewPager2;
import com.coui.appcompat.card.BaseCardInstructionAdapter;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.indicator.COUIPageIndicator;
import com.coui.appcompat.preference.COUIPreference;
import com.support.card.R$id;
import com.support.card.R$layout;
import com.support.card.R$styleable;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class COUICardInstructionPreference extends COUIPreference {
    public static final int CARD_INSTRUCTION_TYPE_DESCRIPTION = 1;
    public static final int CARD_INSTRUCTION_TYPE_SELECTOR = 2;
    public static final Companion Companion = new Companion(null);
    private int cardType;
    private int lastPagerItem;
    private BaseCardInstructionAdapter<?> pageAdapter;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public interface OnItemSelectedListener {
        void onItemSelected(int i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICardInstructionPreference(Context context) {
        this(context, null, 0, 0, 14, null);
        r.e(context, "context");
    }

    private final BaseCardInstructionAdapter<? extends BaseCardInstructionAdapter.BaseHolder> getPageAdapter(int i10) {
        if (i10 != 1 && i10 == 2) {
            return new CardInstructionSelectorAdapter();
        }
        return new CardInstructionDescriptionAdapter();
    }

    private final void setPagerCallback(ViewPager2 viewPager2, final COUIPageIndicator cOUIPageIndicator) {
        viewPager2.g(new ViewPager2.i() { // from class: com.coui.appcompat.card.COUICardInstructionPreference.setPagerCallback.1
            @Override // androidx.viewpager2.widget.ViewPager2.i
            public void onPageScrollStateChanged(int i10) {
                super.onPageScrollStateChanged(i10);
                cOUIPageIndicator.onPageScrollStateChanged(i10);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.i
            public void onPageScrolled(int i10, float f10, int i11) {
                super.onPageScrolled(i10, f10, i11);
                cOUIPageIndicator.onPageScrolled(i10, f10, i11);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.i
            public void onPageSelected(int i10) {
                super.onPageSelected(i10);
                cOUIPageIndicator.onPageSelected(i10);
                this.lastPagerItem = i10;
            }
        });
    }

    public final int getCardType() {
        return this.cardType;
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(l holder) {
        r.e(holder, "holder");
        super.onBindViewHolder(holder);
        COUIDarkModeUtil.setForceDarkAllow(holder.itemView, false);
        View viewB = holder.b(R$id.pager);
        r.c(viewB, "null cannot be cast to non-null type androidx.viewpager2.widget.ViewPager2");
        ViewPager2 viewPager2 = (ViewPager2) viewB;
        View viewB2 = holder.b(R$id.indicator);
        r.c(viewB2, "null cannot be cast to non-null type com.coui.appcompat.indicator.COUIPageIndicator");
        COUIPageIndicator cOUIPageIndicator = (COUIPageIndicator) viewB2;
        cOUIPageIndicator.setVisibility(this.pageAdapter.getItemCount() > 1 ? 0 : 8);
        if (this.pageAdapter.getItemCount() > 0) {
            viewPager2.setAdapter(this.pageAdapter);
            viewPager2.setCurrentItem(this.lastPagerItem);
            viewPager2.setOffscreenPageLimit(this.pageAdapter.getItemCount());
            cOUIPageIndicator.setDotsCount(this.pageAdapter.getItemCount());
            setPagerCallback(viewPager2, cOUIPageIndicator);
        }
    }

    public final void setCardType(int i10) {
        this.cardType = i10;
        this.pageAdapter = getPageAdapter(i10);
        notifyChanged();
    }

    public final void setDisplayInfos(List<? extends BaseDisplayInfo> displayInfos) {
        r.e(displayInfos, "displayInfos");
        this.pageAdapter.updateDisplayInfos(displayInfos);
        notifyChanged();
    }

    public final void setOnItemSelected(OnItemSelectedListener onItemSelectedListener) {
        r.e(onItemSelectedListener, "onItemSelectedListener");
        BaseCardInstructionAdapter<?> baseCardInstructionAdapter = this.pageAdapter;
        CardInstructionSelectorAdapter cardInstructionSelectorAdapter = baseCardInstructionAdapter instanceof CardInstructionSelectorAdapter ? (CardInstructionSelectorAdapter) baseCardInstructionAdapter : null;
        if (cardInstructionSelectorAdapter != null) {
            cardInstructionSelectorAdapter.setOnSelectedCardChangedListener(onItemSelectedListener);
        }
        notifyChanged();
    }

    public final void setSelectedIndex(int i10) {
        BaseCardInstructionAdapter<?> baseCardInstructionAdapter = this.pageAdapter;
        CardInstructionSelectorAdapter cardInstructionSelectorAdapter = baseCardInstructionAdapter instanceof CardInstructionSelectorAdapter ? (CardInstructionSelectorAdapter) baseCardInstructionAdapter : null;
        if (cardInstructionSelectorAdapter != null) {
            cardInstructionSelectorAdapter.setSelectedIndex(i10);
        }
        notifyChanged();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICardInstructionPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        r.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICardInstructionPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, 8, null);
        r.e(context, "context");
    }

    public /* synthetic */ COUICardInstructionPreference(Context context, AttributeSet attributeSet, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? R$attr.preferenceStyle : i10, (i12 & 8) != 0 ? 0 : i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUICardInstructionPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        r.e(context, "context");
        this.cardType = 1;
        setLayoutResource(R$layout.coui_component_card_instruction_preference);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUICardInstructionPreference, i10, i11);
        setCardType(typedArrayObtainStyledAttributes.getInteger(R$styleable.COUICardInstructionPreference_instructionCardType, 1));
        typedArrayObtainStyledAttributes.recycle();
        this.pageAdapter = getPageAdapter(this.cardType);
    }
}
