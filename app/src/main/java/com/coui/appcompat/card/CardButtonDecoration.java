package com.coui.appcompat.card;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.preference.h;
import androidx.recyclerview.widget.RecyclerView;
import com.support.card.R$dimen;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class CardButtonDecoration extends BaseCardItemDecoration {
    private h adapter;
    private CardMargin cardMargin;
    private final CardPositionPredicate cardPositionPredicate;

    public /* synthetic */ CardButtonDecoration(Context context, CardPositionPredicate cardPositionPredicate, h hVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, cardPositionPredicate, (i10 & 4) != 0 ? null : hVar);
    }

    private final CardMargin getDefaultCardMargin() {
        return new CardMargin(0, getDimenPx(R$dimen.coui_component_card_button_first_top_margin), getDimenPx(R$dimen.coui_component_card_button_horizontal_margin_inner), getDimenPx(R$dimen.coui_component_card_button_horizontal_margin_inner));
    }

    public final h getAdapter() {
        return this.adapter;
    }

    public final CardMargin getCardMargin() {
        return this.cardMargin;
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
        if ((hVar != null ? hVar.i(childAdapterPosition) : null) instanceof COUICardButtonPreference) {
            setCardColumnMargin(outRect, this.cardMargin, cardPosition);
        }
    }

    public final void setAdapter(h hVar) {
        this.adapter = hVar;
    }

    public final void setCardMargin(CardMargin cardMargin) {
        r.e(cardMargin, "<set-?>");
        this.cardMargin = cardMargin;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardButtonDecoration(Context appContext, CardPositionPredicate cardPositionPredicate, h hVar) {
        super(appContext);
        r.e(appContext, "appContext");
        r.e(cardPositionPredicate, "cardPositionPredicate");
        this.cardPositionPredicate = cardPositionPredicate;
        this.adapter = hVar;
        this.cardMargin = getDefaultCardMargin();
    }
}
