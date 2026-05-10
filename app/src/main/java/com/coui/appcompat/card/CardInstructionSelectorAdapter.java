package com.coui.appcompat.card;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.coui.appcompat.card.BaseCardInstructionAdapter;
import com.coui.appcompat.card.COUICardInstructionPreference;
import com.coui.appcompat.card.CardInstructionSelectorAdapter;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.oplus.anim.EffectiveAnimationView;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$style;
import com.support.card.R$id;
import com.support.card.R$layout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class CardInstructionSelectorAdapter extends BaseCardInstructionAdapter<SelectorHolder> {
    private int lastSelectedIndex;
    private COUICardInstructionPreference.OnItemSelectedListener onSelectedCardChangedListener;

    public static final class Selector {
        private final EffectiveAnimationView animView;
        private final RadioButton radio;
        private final View rootView;
        private final TextView title;

        public Selector(Context context) {
            r.e(context, "context");
            View viewInflate = View.inflate(context, R$layout.coui_component_card_instruction_selector, null);
            r.d(viewInflate, "inflate(\n            con…_selector, null\n        )");
            this.rootView = viewInflate;
            View viewFindViewById = viewInflate.findViewById(R$id.anim_view);
            r.d(viewFindViewById, "rootView.findViewById(R.id.anim_view)");
            this.animView = (EffectiveAnimationView) viewFindViewById;
            View viewFindViewById2 = viewInflate.findViewById(R$id.title);
            r.d(viewFindViewById2, "rootView.findViewById(R.id.title)");
            this.title = (TextView) viewFindViewById2;
            View viewFindViewById3 = viewInflate.findViewById(R$id.radio);
            r.d(viewFindViewById3, "rootView.findViewById(R.id.radio)");
            this.radio = (RadioButton) viewFindViewById3;
        }

        public final EffectiveAnimationView getAnimView() {
            return this.animView;
        }

        public final RadioButton getRadio() {
            return this.radio;
        }

        public final View getRootView() {
            return this.rootView;
        }

        public final TextView getTitle() {
            return this.title;
        }

        public final void setAnimViewSize(int i10, int i11) {
            if (i10 <= 0 || i11 <= 0) {
                return;
            }
            EffectiveAnimationView effectiveAnimationView = this.animView;
            ViewGroup.LayoutParams layoutParams = effectiveAnimationView.getLayoutParams();
            r.c(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = i11;
            ((ViewGroup.MarginLayoutParams) bVar).width = i10;
            effectiveAnimationView.setLayoutParams(bVar);
        }
    }

    public final class SelectorHolder extends BaseCardInstructionAdapter.BaseHolder {
        private final LinearLayout selectorContainer;
        private final List<Selector> selectorGroup;
        final /* synthetic */ CardInstructionSelectorAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SelectorHolder(CardInstructionSelectorAdapter cardInstructionSelectorAdapter, View itemView, BaseCardInstructionAdapter<?> adapter) {
            super(itemView, adapter);
            r.e(itemView, "itemView");
            r.e(adapter, "adapter");
            this.this$0 = cardInstructionSelectorAdapter;
            this.selectorGroup = new ArrayList();
            View viewFindViewById = itemView.findViewById(R$id.container);
            r.d(viewFindViewById, "itemView.findViewById(R.id.container)");
            this.selectorContainer = (LinearLayout) viewFindViewById;
        }

        private final void bindAnimDisplayInfo(AnimDisplayInfo animDisplayInfo) {
            if (!animDisplayInfo.getAnimAssets().isEmpty() && !animDisplayInfo.getAnimResources().isEmpty()) {
                throw new IllegalArgumentException("imageAssets and imageResources cannot be used at the same time. Please use only one at once.");
            }
            if (animDisplayInfo.getAnimAssets().size() + animDisplayInfo.getAnimResources().size() != animDisplayInfo.getChoices().size()) {
                throw new IllegalArgumentException("the anim count must equal to the choice count");
            }
            Iterator<Integer> it = animDisplayInfo.getAnimResources().iterator();
            int i10 = 0;
            int i11 = 0;
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                Context context = this.itemView.getContext();
                r.d(context, "itemView.context");
                Selector selector = new Selector(context);
                BaseCardInstructionAdapter.Companion.updateContentAndVisibility(selector.getTitle(), animDisplayInfo.getChoices().get(i11));
                selector.getAnimView().setAnimation(iIntValue);
                selector.setAnimViewSize(animDisplayInfo.getAnimWidth(), animDisplayInfo.getAnimHeight());
                this.selectorContainer.addView(selector.getRootView());
                this.selectorGroup.add(selector);
                i11++;
            }
            for (String str : animDisplayInfo.getAnimAssets()) {
                Context context2 = this.itemView.getContext();
                r.d(context2, "itemView.context");
                Selector selector2 = new Selector(context2);
                BaseCardInstructionAdapter.Companion.updateContentAndVisibility(selector2.getTitle(), animDisplayInfo.getChoices().get(i10));
                selector2.getAnimView().setAnimation(str);
                selector2.setAnimViewSize(animDisplayInfo.getAnimWidth(), animDisplayInfo.getAnimHeight());
                this.selectorContainer.addView(selector2.getRootView());
                this.selectorGroup.add(selector2);
                i10++;
            }
        }

        private final void bindImageDisplayInfo(ImageDisplayInfo imageDisplayInfo) {
            if (imageDisplayInfo.getImageResources().length != imageDisplayInfo.getChoices().size()) {
                throw new IllegalArgumentException("the image count must equal to the choice count");
            }
            Integer[] imageResources = imageDisplayInfo.getImageResources();
            int length = imageResources.length;
            for (int i10 = 0; i10 < length; i10++) {
                int iIntValue = imageResources[i10].intValue();
                Context context = this.itemView.getContext();
                r.d(context, "itemView.context");
                Selector selector = new Selector(context);
                BaseCardInstructionAdapter.Companion.updateContentAndVisibility(selector.getTitle(), imageDisplayInfo.getChoices().get(i10));
                selector.getAnimView().setImageResource(iIntValue);
                selector.setAnimViewSize(imageDisplayInfo.getAnimWidth(), imageDisplayInfo.getAnimHeight());
                this.selectorContainer.addView(selector.getRootView());
                this.selectorGroup.add(selector);
            }
        }

        private final void dealRadioGroupClickEvents() {
            List<Selector> list = this.selectorGroup;
            final CardInstructionSelectorAdapter cardInstructionSelectorAdapter = this.this$0;
            for (final Selector selector : list) {
                selector.getRootView().setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.card.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CardInstructionSelectorAdapter.SelectorHolder.dealRadioGroupClickEvents$lambda$1$lambda$0(this.f7268a, selector, cardInstructionSelectorAdapter, view);
                    }
                });
            }
        }

        public static final void dealRadioGroupClickEvents$lambda$1$lambda$0(SelectorHolder this$0, Selector selector, CardInstructionSelectorAdapter this$1, View view) {
            r.e(this$0, "this$0");
            r.e(selector, "$selector");
            r.e(this$1, "this$1");
            int iIndexOf = this$0.selectorGroup.indexOf(selector);
            if (iIndexOf != this$1.lastSelectedIndex) {
                this$1.lastSelectedIndex = iIndexOf;
                COUICardInstructionPreference.OnItemSelectedListener onSelectedCardChangedListener = this$1.getOnSelectedCardChangedListener();
                if (onSelectedCardChangedListener != null) {
                    onSelectedCardChangedListener.onItemSelected(iIndexOf);
                }
            }
            this$0.setSelectedChoiceIndex(iIndexOf);
        }

        @Override // com.coui.appcompat.card.BaseCardInstructionAdapter.BaseHolder
        public void bind(BaseDisplayInfo displayInfo) {
            r.e(displayInfo, "displayInfo");
            this.selectorGroup.clear();
            this.selectorContainer.removeAllViews();
            if (displayInfo instanceof AnimDisplayInfo) {
                bindAnimDisplayInfo((AnimDisplayInfo) displayInfo);
            } else if (displayInfo instanceof ImageDisplayInfo) {
                bindImageDisplayInfo((ImageDisplayInfo) displayInfo);
            }
            dealRadioGroupClickEvents();
            setSelectedChoiceIndex(displayInfo.getSelectedIndex());
        }

        @SuppressLint({"PrivateResource"})
        public final void setSelectedChoiceIndex(int i10) {
            if (i10 < 0 || i10 >= this.selectorGroup.size()) {
                return;
            }
            Selector selector = this.selectorGroup.get(i10);
            selector.getRadio().setChecked(true);
            selector.getTitle().setTextAppearance(R$style.couiTextAppearanceButton);
            selector.getTitle().setTextColor(COUIContextUtil.getAttrColor(this.itemView.getContext(), R$attr.couiColorPrimary));
            List<Selector> list = this.selectorGroup;
            ArrayList<Selector> arrayList = new ArrayList();
            for (Object obj : list) {
                if (!r.a((Selector) obj, selector)) {
                    arrayList.add(obj);
                }
            }
            for (Selector selector2 : arrayList) {
                selector2.getRadio().setChecked(false);
                selector2.getTitle().setTextAppearance(R$style.couiTextAppearanceBody);
                selector2.getTitle().setTextColor(COUIContextUtil.getAttrColor(this.itemView.getContext(), R$attr.couiColorSecondNeutral));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardInstructionSelectorAdapter(List<BaseDisplayInfo> displayInfos) {
        super(displayInfos);
        r.e(displayInfos, "displayInfos");
        this.lastSelectedIndex = -1;
    }

    public final COUICardInstructionPreference.OnItemSelectedListener getOnSelectedCardChangedListener() {
        return this.onSelectedCardChangedListener;
    }

    public final void setOnSelectedCardChangedListener(COUICardInstructionPreference.OnItemSelectedListener onItemSelectedListener) {
        this.onSelectedCardChangedListener = onItemSelectedListener;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void setSelectedIndex(int i10) {
        this.lastSelectedIndex = i10;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public SelectorHolder onCreateViewHolder(ViewGroup parent, int i10) {
        r.e(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.coui_component_card_instruction_selector_page, parent, false);
        r.d(viewInflate, "from(parent.context)\n   …      false\n            )");
        return new SelectorHolder(this, viewInflate, this);
    }

    public CardInstructionSelectorAdapter() {
        this(new ArrayList());
    }

    @Override // com.coui.appcompat.card.BaseCardInstructionAdapter
    public void onBindViewHolder(SelectorHolder holder, int i10) {
        r.e(holder, "holder");
        super.onBindViewHolder(holder, i10);
        holder.setSelectedChoiceIndex(this.lastSelectedIndex);
    }
}
