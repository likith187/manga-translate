package androidx.preference;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.v;

/* JADX INFO: loaded from: classes.dex */
public class k extends v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final RecyclerView f2994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final androidx.core.view.a f2995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final androidx.core.view.a f2996c;

    class a extends androidx.core.view.a {
        a() {
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
            Preference preferenceI;
            k.this.f2995b.onInitializeAccessibilityNodeInfo(view, hVar);
            int childAdapterPosition = k.this.f2994a.getChildAdapterPosition(view);
            RecyclerView.h adapter = k.this.f2994a.getAdapter();
            if ((adapter instanceof h) && (preferenceI = ((h) adapter).i(childAdapterPosition)) != null) {
                preferenceI.onInitializeAccessibilityNodeInfo(hVar);
            }
        }

        @Override // androidx.core.view.a
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            return k.this.f2995b.performAccessibilityAction(view, i10, bundle);
        }
    }

    public k(RecyclerView recyclerView) {
        super(recyclerView);
        this.f2995b = super.getItemDelegate();
        this.f2996c = new a();
        this.f2994a = recyclerView;
    }

    @Override // androidx.recyclerview.widget.v
    public androidx.core.view.a getItemDelegate() {
        return this.f2996c;
    }
}
