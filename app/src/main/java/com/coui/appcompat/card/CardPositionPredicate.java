package com.coui.appcompat.card;

import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public final class CardPositionPredicate {
    private final l isFirstColumn;
    private final l isFirstRow;
    private final l isLastColumn;
    private final l isLastRow;

    public CardPositionPredicate(l isFirstRow, l isLastRow, l isFirstColumn, l isLastColumn) {
        r.e(isFirstRow, "isFirstRow");
        r.e(isLastRow, "isLastRow");
        r.e(isFirstColumn, "isFirstColumn");
        r.e(isLastColumn, "isLastColumn");
        this.isFirstRow = isFirstRow;
        this.isLastRow = isLastRow;
        this.isFirstColumn = isFirstColumn;
        this.isLastColumn = isLastColumn;
    }

    public final l isFirstColumn() {
        return this.isFirstColumn;
    }

    public final l isFirstRow() {
        return this.isFirstRow;
    }

    public final l isLastColumn() {
        return this.isLastColumn;
    }

    public final l isLastRow() {
        return this.isLastRow;
    }
}
