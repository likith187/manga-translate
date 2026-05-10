package com.coui.appcompat.card;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.preference.Preference;
import androidx.preference.h;
import androidx.recyclerview.widget.RecyclerView;
import com.support.card.R$dimen;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class CardEntranceDecoration extends BaseCardItemDecoration {
    private h adapter;
    private final CardPositionPredicate cardPositionPredicate;
    private CardMargin largeCardMargin;
    private CardMargin smallCardMargin;

    public /* synthetic */ CardEntranceDecoration(Context context, CardPositionPredicate cardPositionPredicate, h hVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, cardPositionPredicate, (i10 & 4) != 0 ? null : hVar);
    }

    private final CardMargin getDefaultLargeCardMargin() {
        return new CardMargin(getDimenPx(R$dimen.coui_component_card_entrance_large_top_margin), getDimenPx(R$dimen.coui_component_card_entrance_large_top_margin), getDimenPx(R$dimen.coui_component_card_entrance_large_horizontal_margin), getDimenPx(R$dimen.coui_component_card_entrance_large_horizontal_margin));
    }

    private final CardMargin getDefaultSmallCardMargin() {
        return new CardMargin(getDimenPx(R$dimen.coui_component_card_entrance_small_top_margin_first), getDimenPx(R$dimen.coui_component_card_entrance_small_top_margin_other), getDimenPx(R$dimen.coui_component_card_entrance_small_horizontal_margin_outer), getDimenPx(R$dimen.coui_component_card_entrance_small_horizontal_margin_inner));
    }

    public final h getAdapter() {
        return this.adapter;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    @SuppressLint({"RestrictedApi"})
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.a0 state) {
        r.e(outRect, "outRect");
        r.e(view, "view");
        r.e(parent, "parent");
        r.e(state, "state");
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        CardPosition cardPosition = new CardPosition(this.cardPositionPredicate, childAdapterPosition);
        h hVar = this.adapter;
        Preference preferenceI = hVar != null ? hVar.i(childAdapterPosition) : null;
        if (preferenceI instanceof COUICardEntrancePreference) {
            int cardType = ((COUICardEntrancePreference) preferenceI).getCardType();
            if (cardType == 1) {
                setCardColumnMargin(outRect, this.smallCardMargin, cardPosition);
            } else {
                if (cardType != 2) {
                    return;
                }
                setCardColumnMargin(outRect, this.largeCardMargin, cardPosition);
            }
        }
    }

    public final CardMargin getLargeCardMargin() {
        return this.largeCardMargin;
    }

    public final CardMargin getSmallCardMargin() {
        return this.smallCardMargin;
    }

    public final void setAdapter(h hVar) {
        this.adapter = hVar;
    }

    public final void setLargeCardMargin(CardMargin cardMargin) {
        r.e(cardMargin, "<set-?>");
        this.largeCardMargin = cardMargin;
    }

    public final void setSmallCardMargin(CardMargin cardMargin) {
        r.e(cardMargin, "<set-?>");
        this.smallCardMargin = cardMargin;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardEntranceDecoration(Context appContext, CardPositionPredicate cardPositionPredicate, h hVar) {
        super(appContext);
        r.e(appContext, "appContext");
        r.e(cardPositionPredicate, "cardPositionPredicate");
        this.cardPositionPredicate = cardPositionPredicate;
        this.adapter = hVar;
        this.largeCardMargin = getDefaultLargeCardMargin();
        this.smallCardMargin = getDefaultSmallCardMargin();
    }
}
