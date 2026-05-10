package com.coloros.translate.ui.simultaneous.history;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends RecyclerView.u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0091a f6510c = new C0091a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f6511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6512b;

    /* JADX INFO: renamed from: com.coloros.translate.ui.simultaneous.history.a$a, reason: collision with other inner class name */
    public static final class C0091a {
        public /* synthetic */ C0091a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0091a() {
        }
    }

    public interface b {
        void a();
    }

    public a(b onBottomReachedListener) {
        kotlin.jvm.internal.r.e(onBottomReachedListener, "onBottomReachedListener");
        this.f6511a = onBottomReachedListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.u
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i10, i11);
        RecyclerView.p layoutManager = recyclerView.getLayoutManager();
        kotlin.jvm.internal.r.c(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int itemCount = linearLayoutManager.getItemCount();
        if (itemCount > linearLayoutManager.findLastCompletelyVisibleItemPosition() + 5 || itemCount == this.f6512b) {
            return;
        }
        this.f6512b = itemCount;
        this.f6511a.a();
    }
}
