package com.coloros.translate.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.COUIRecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class HistoryRecyclerView extends COUIRecyclerView {
    public HistoryRecyclerView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        return 0.0f;
    }

    public HistoryRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HistoryRecyclerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
