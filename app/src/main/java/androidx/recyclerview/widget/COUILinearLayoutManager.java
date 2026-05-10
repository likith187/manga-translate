package androidx.recyclerview.widget;

import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class COUILinearLayoutManager extends LinearLayoutManager {
    public COUILinearLayoutManager(Context context, int i10, boolean z10) {
        super(context, i10, z10);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void scrollToPositionWithOffset(int i10, int i11) {
        super.scrollToPositionWithOffset(i10, i11 - this.mRecyclerView.getPaddingTop());
    }

    public COUILinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }
}
