package androidx.recyclerview.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class COUIPanelPreferenceLinearLayoutManager extends LinearLayoutManager {
    public COUIPanelPreferenceLinearLayoutManager(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollOffset(RecyclerView.a0 a0Var) {
        return super.computeVerticalScrollOffset(a0Var) + this.mRecyclerView.getScrollY();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollRange(RecyclerView.a0 a0Var) {
        return super.computeVerticalScrollRange(a0Var) + this.mRecyclerView.getScrollY();
    }

    public COUIPanelPreferenceLinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }
}
