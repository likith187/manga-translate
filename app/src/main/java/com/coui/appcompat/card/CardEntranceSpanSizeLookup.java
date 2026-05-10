package com.coui.appcompat.card;

import android.annotation.SuppressLint;
import androidx.preference.Preference;
import androidx.preference.h;
import androidx.recyclerview.widget.GridLayoutManager;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class CardEntranceSpanSizeLookup extends GridLayoutManager.c {
    public static final Companion Companion = new Companion(null);
    public static final int SPAN_COUNT_CARD_TYPE_LARGE = 2;
    public static final int SPAN_COUNT_CARD_TYPE_SMALL = 1;
    private h adapter;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CardEntranceSpanSizeLookup() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final h getAdapter() {
        return this.adapter;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.c
    @SuppressLint({"RestrictedApi"})
    public int getSpanSize(int i10) {
        h hVar = this.adapter;
        Preference preferenceI = hVar != null ? hVar.i(i10) : null;
        if (!(preferenceI instanceof COUICardEntrancePreference)) {
            return 2;
        }
        int cardType = ((COUICardEntrancePreference) preferenceI).getCardType();
        return (cardType == 1 || cardType != 2) ? 1 : 2;
    }

    public final void setAdapter(h hVar) {
        this.adapter = hVar;
    }

    public /* synthetic */ CardEntranceSpanSizeLookup(h hVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : hVar);
    }

    public CardEntranceSpanSizeLookup(h hVar) {
        this.adapter = hVar;
    }
}
