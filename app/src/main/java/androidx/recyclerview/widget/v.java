package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.m0;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class v extends androidx.core.view.a {
    private final a mItemDelegate;
    final RecyclerView mRecyclerView;

    public static class a extends androidx.core.view.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final v f3465a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Map f3466b = new WeakHashMap();

        public a(v vVar) {
            this.f3465a = vVar;
        }

        androidx.core.view.a c(View view) {
            return (androidx.core.view.a) this.f3466b.remove(view);
        }

        void d(View view) {
            androidx.core.view.a aVarJ = m0.j(view);
            if (aVarJ == null || aVarJ == this) {
                return;
            }
            this.f3466b.put(view, aVarJ);
        }

        @Override // androidx.core.view.a
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = (androidx.core.view.a) this.f3466b.get(view);
            return aVar != null ? aVar.dispatchPopulateAccessibilityEvent(view, accessibilityEvent) : super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // androidx.core.view.a
        public d0.i getAccessibilityNodeProvider(View view) {
            androidx.core.view.a aVar = (androidx.core.view.a) this.f3466b.get(view);
            return aVar != null ? aVar.getAccessibilityNodeProvider(view) : super.getAccessibilityNodeProvider(view);
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = (androidx.core.view.a) this.f3466b.get(view);
            if (aVar != null) {
                aVar.onInitializeAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
            if (this.f3465a.shouldIgnore() || this.f3465a.mRecyclerView.getLayoutManager() == null) {
                super.onInitializeAccessibilityNodeInfo(view, hVar);
                return;
            }
            this.f3465a.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, hVar);
            androidx.core.view.a aVar = (androidx.core.view.a) this.f3466b.get(view);
            if (aVar != null) {
                aVar.onInitializeAccessibilityNodeInfo(view, hVar);
            } else {
                super.onInitializeAccessibilityNodeInfo(view, hVar);
            }
        }

        @Override // androidx.core.view.a
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = (androidx.core.view.a) this.f3466b.get(view);
            if (aVar != null) {
                aVar.onPopulateAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.a
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = (androidx.core.view.a) this.f3466b.get(viewGroup);
            return aVar != null ? aVar.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // androidx.core.view.a
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (this.f3465a.shouldIgnore() || this.f3465a.mRecyclerView.getLayoutManager() == null) {
                return super.performAccessibilityAction(view, i10, bundle);
            }
            androidx.core.view.a aVar = (androidx.core.view.a) this.f3466b.get(view);
            if (aVar != null) {
                if (aVar.performAccessibilityAction(view, i10, bundle)) {
                    return true;
                }
            } else if (super.performAccessibilityAction(view, i10, bundle)) {
                return true;
            }
            return this.f3465a.mRecyclerView.getLayoutManager().performAccessibilityActionForItem(view, i10, bundle);
        }

        @Override // androidx.core.view.a
        public void sendAccessibilityEvent(View view, int i10) {
            androidx.core.view.a aVar = (androidx.core.view.a) this.f3466b.get(view);
            if (aVar != null) {
                aVar.sendAccessibilityEvent(view, i10);
            } else {
                super.sendAccessibilityEvent(view, i10);
            }
        }

        @Override // androidx.core.view.a
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = (androidx.core.view.a) this.f3466b.get(view);
            if (aVar != null) {
                aVar.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            } else {
                super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        }
    }

    public v(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        androidx.core.view.a itemDelegate = getItemDelegate();
        if (itemDelegate == null || !(itemDelegate instanceof a)) {
            this.mItemDelegate = new a(this);
        } else {
            this.mItemDelegate = (a) itemDelegate;
        }
    }

    public androidx.core.view.a getItemDelegate() {
        return this.mItemDelegate;
    }

    @Override // androidx.core.view.a
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || shouldIgnore()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    @Override // androidx.core.view.a
    public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
        super.onInitializeAccessibilityNodeInfo(view, hVar);
        if (shouldIgnore() || this.mRecyclerView.getLayoutManager() == null) {
            return;
        }
        this.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfo(hVar);
    }

    @Override // androidx.core.view.a
    public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
        if (super.performAccessibilityAction(view, i10, bundle)) {
            return true;
        }
        if (shouldIgnore() || this.mRecyclerView.getLayoutManager() == null) {
            return false;
        }
        return this.mRecyclerView.getLayoutManager().performAccessibilityAction(i10, bundle);
    }

    boolean shouldIgnore() {
        return this.mRecyclerView.hasPendingAdapterUpdates();
    }
}
