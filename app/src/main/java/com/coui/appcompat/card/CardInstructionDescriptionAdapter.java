package com.coui.appcompat.card;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.coui.appcompat.card.BaseCardInstructionAdapter;
import com.oplus.anim.EffectiveAnimationView;
import com.support.card.R$dimen;
import com.support.card.R$id;
import com.support.card.R$layout;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class CardInstructionDescriptionAdapter extends BaseCardInstructionAdapter<DescriptionHolder> {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final LinearLayout.LayoutParams getAnimViewLayoutParam(ViewGroup.LayoutParams layoutParams, int i10, int i11) {
            LinearLayout.LayoutParams layoutParams2 = (layoutParams == null || !(layoutParams instanceof LinearLayout.LayoutParams)) ? new LinearLayout.LayoutParams(-2, -2) : (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.gravity = 1;
            if (i10 > 0 && i11 > 0) {
                layoutParams2.height = i11;
                layoutParams2.width = i10;
            }
            return layoutParams2;
        }

        static /* synthetic */ LinearLayout.LayoutParams getAnimViewLayoutParam$default(Companion companion, ViewGroup.LayoutParams layoutParams, int i10, int i11, int i12, Object obj) {
            if ((i12 & 2) != 0) {
                i10 = 0;
            }
            if ((i12 & 4) != 0) {
                i11 = 0;
            }
            return companion.getAnimViewLayoutParam(layoutParams, i10, i11);
        }

        private Companion() {
        }
    }

    public final class DescriptionHolder extends BaseCardInstructionAdapter.BaseHolder {
        private final LinearLayout animContainer;
        private final COUIMutableSizeScrollView scrollViewContainer;
        private final TextView summary;
        private final LinearLayout summaryContainer;
        final /* synthetic */ CardInstructionDescriptionAdapter this$0;
        private final TextView title;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DescriptionHolder(CardInstructionDescriptionAdapter cardInstructionDescriptionAdapter, View itemView, BaseCardInstructionAdapter<?> adapter) {
            super(itemView, adapter);
            r.e(itemView, "itemView");
            r.e(adapter, "adapter");
            this.this$0 = cardInstructionDescriptionAdapter;
            View viewFindViewById = itemView.findViewById(R$id.anim_container);
            r.d(viewFindViewById, "itemView.findViewById(R.id.anim_container)");
            this.animContainer = (LinearLayout) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.title);
            r.d(viewFindViewById2, "itemView.findViewById(R.id.title)");
            this.title = (TextView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R$id.summary);
            r.d(viewFindViewById3, "itemView.findViewById(R.id.summary)");
            this.summary = (TextView) viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(R$id.summary_container);
            r.d(viewFindViewById4, "itemView.findViewById(R.id.summary_container)");
            this.summaryContainer = (LinearLayout) viewFindViewById4;
            View viewFindViewById5 = itemView.findViewById(R$id.content_container);
            r.d(viewFindViewById5, "itemView.findViewById(R.id.content_container)");
            this.scrollViewContainer = (COUIMutableSizeScrollView) viewFindViewById5;
        }

        private final void bindAnimDisplayInfo(AnimDisplayInfo animDisplayInfo) {
            int dimensionPixelSize = this.animContainer.getContext().getResources().getDimensionPixelSize(R$dimen.coui_component_card_instruction_divider_width);
            if (!animDisplayInfo.getAnimAssets().isEmpty() && !animDisplayInfo.getAnimResources().isEmpty()) {
                throw new IllegalArgumentException("imageAssets and imageResources cannot be used at the same time. Please use only one at once.");
            }
            if (animDisplayInfo.getAnimTitles().size() > 0 && animDisplayInfo.getAnimAssets().size() + animDisplayInfo.getAnimResources().size() != animDisplayInfo.getAnimTitles().size()) {
                throw new IllegalArgumentException("the image count must equals to the animTitle count");
            }
            int size = animDisplayInfo.getAnimResources().size();
            for (int i10 = 0; i10 < size; i10++) {
                Context context = this.itemView.getContext();
                r.d(context, "itemView.context");
                AnimViewGroup animViewGroup = new AnimViewGroup(context);
                animViewGroup.bind(animDisplayInfo, i10);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
                layoutParams.weight = 1.0f;
                if (this.animContainer.getChildCount() != 0) {
                    layoutParams.setMarginStart(dimensionPixelSize);
                }
                animViewGroup.getRootView().setLayoutParams(layoutParams);
                this.animContainer.addView(animViewGroup.getRootView());
            }
            int size2 = animDisplayInfo.getAnimAssets().size();
            for (int i11 = 0; i11 < size2; i11++) {
                Context context2 = this.itemView.getContext();
                r.d(context2, "itemView.context");
                AnimViewGroup animViewGroup2 = new AnimViewGroup(context2);
                animViewGroup2.bind(animDisplayInfo, i11);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
                layoutParams2.weight = 1.0f;
                if (this.animContainer.getChildCount() != 0) {
                    layoutParams2.setMarginStart(dimensionPixelSize);
                }
                animViewGroup2.getRootView().setLayoutParams(layoutParams2);
                this.animContainer.addView(animViewGroup2.getRootView());
            }
        }

        private final void bindImageDisplayInfo(ImageDisplayInfo imageDisplayInfo) {
            if (imageDisplayInfo.getAnimTitles().size() > 0 && imageDisplayInfo.getImageResources().length != imageDisplayInfo.getAnimTitles().size()) {
                throw new IllegalArgumentException("the anim count must equals to the animTitle count");
            }
            int dimensionPixelSize = this.animContainer.getContext().getResources().getDimensionPixelSize(R$dimen.coui_component_card_instruction_divider_width);
            int length = imageDisplayInfo.getImageResources().length;
            for (int i10 = 0; i10 < length; i10++) {
                Context context = this.itemView.getContext();
                r.d(context, "itemView.context");
                AnimViewGroup animViewGroup = new AnimViewGroup(context);
                animViewGroup.bind(imageDisplayInfo, i10);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
                layoutParams.weight = 1.0f;
                if (this.animContainer.getChildCount() != 0) {
                    layoutParams.setMarginStart(dimensionPixelSize);
                }
                animViewGroup.getRootView().setLayoutParams(layoutParams);
                this.animContainer.addView(animViewGroup.getRootView());
            }
        }

        @Override // com.coui.appcompat.card.BaseCardInstructionAdapter.BaseHolder
        public void bind(BaseDisplayInfo displayInfo) {
            int i10;
            r.e(displayInfo, "displayInfo");
            BaseCardInstructionAdapter.Companion companion = BaseCardInstructionAdapter.Companion;
            companion.updateContentAndVisibility(this.title, displayInfo.getTitle());
            companion.updateContentAndVisibility(this.summary, displayInfo.getSummary(), this.summaryContainer);
            if (this.title.getVisibility() == 0) {
                COUIMutableSizeScrollView cOUIMutableSizeScrollView = this.scrollViewContainer;
                cOUIMutableSizeScrollView.setMaxHeight(cOUIMutableSizeScrollView.getResources().getDimensionPixelSize(R$dimen.coui_component_card_instruction_content_height_complete));
                i10 = R$dimen.coui_component_card_instruction_summary_margin_top_small;
            } else {
                COUIMutableSizeScrollView cOUIMutableSizeScrollView2 = this.scrollViewContainer;
                cOUIMutableSizeScrollView2.setMaxHeight(cOUIMutableSizeScrollView2.getResources().getDimensionPixelSize(R$dimen.coui_component_card_instruction_content_height_part));
                i10 = R$dimen.coui_component_card_instruction_summary_margin_top_large;
            }
            LinearLayout linearLayout = this.summaryContainer;
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            r.c(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.topMargin = CardInstructionDescriptionAdapterKt.getDimenPx(this.summaryContainer, i10);
            linearLayout.setLayoutParams(layoutParams2);
            if (displayInfo instanceof AnimDisplayInfo) {
                bindAnimDisplayInfo((AnimDisplayInfo) displayInfo);
            } else if (displayInfo instanceof ImageDisplayInfo) {
                bindImageDisplayInfo((ImageDisplayInfo) displayInfo);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardInstructionDescriptionAdapter(List<BaseDisplayInfo> displayInfos) {
        super(displayInfos);
        r.e(displayInfos, "displayInfos");
    }

    public CardInstructionDescriptionAdapter() {
        this(new ArrayList());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public DescriptionHolder onCreateViewHolder(ViewGroup parent, int i10) {
        r.e(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.coui_component_card_instruction_description_page, parent, false);
        r.d(viewInflate, "from(parent.context)\n   …      false\n            )");
        return new DescriptionHolder(this, viewInflate, this);
    }

    public static final class AnimViewGroup {
        private final TextView animTitle;
        private final EffectiveAnimationView animView;
        private final LinearLayout rootView;

        public AnimViewGroup(Context context) {
            r.e(context, "context");
            View viewInflate = View.inflate(context, R$layout.coui_component_card_instruction_anim, null);
            r.c(viewInflate, "null cannot be cast to non-null type android.widget.LinearLayout");
            LinearLayout linearLayout = (LinearLayout) viewInflate;
            this.rootView = linearLayout;
            this.animView = (EffectiveAnimationView) linearLayout.findViewById(R$id.anim_view);
            this.animTitle = (TextView) linearLayout.findViewById(R$id.anim_title);
        }

        public final void bind(ImageDisplayInfo displayInfo, int i10) {
            r.e(displayInfo, "displayInfo");
            if (displayInfo.getAnimTitles().size() > 0) {
                TextView animTitle = this.animTitle;
                r.d(animTitle, "animTitle");
                animTitle.setVisibility(0);
                this.animTitle.setText(displayInfo.getAnimTitles().get(i10));
            }
            this.animView.setImageResource(displayInfo.getImageResources()[i10].intValue());
            EffectiveAnimationView effectiveAnimationView = this.animView;
            effectiveAnimationView.setLayoutParams(CardInstructionDescriptionAdapter.Companion.getAnimViewLayoutParam(effectiveAnimationView.getLayoutParams(), displayInfo.getAnimWidth(), displayInfo.getAnimHeight()));
        }

        public final TextView getAnimTitle() {
            return this.animTitle;
        }

        public final EffectiveAnimationView getAnimView() {
            return this.animView;
        }

        public final LinearLayout getRootView() {
            return this.rootView;
        }

        public final void bind(AnimDisplayInfo displayInfo, int i10) {
            r.e(displayInfo, "displayInfo");
            if (displayInfo.getAnimTitles().size() > 0) {
                this.animTitle.setText(displayInfo.getAnimTitles().get(i10));
            } else {
                TextView animTitle = this.animTitle;
                r.d(animTitle, "animTitle");
                animTitle.setVisibility(8);
            }
            if (displayInfo.getAnimResources().size() > 0) {
                this.animView.setAnimation(displayInfo.getAnimResources().get(i10).intValue());
                EffectiveAnimationView effectiveAnimationView = this.animView;
                effectiveAnimationView.setLayoutParams(CardInstructionDescriptionAdapter.Companion.getAnimViewLayoutParam(effectiveAnimationView.getLayoutParams(), displayInfo.getAnimWidth(), displayInfo.getAnimHeight()));
            } else {
                this.animView.setAnimation(displayInfo.getAnimAssets().get(i10));
                EffectiveAnimationView effectiveAnimationView2 = this.animView;
                effectiveAnimationView2.setLayoutParams(CardInstructionDescriptionAdapter.Companion.getAnimViewLayoutParam(effectiveAnimationView2.getLayoutParams(), displayInfo.getAnimWidth(), displayInfo.getAnimHeight()));
            }
        }
    }
}
