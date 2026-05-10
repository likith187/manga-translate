package androidx.viewpager2.widget;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
final class c {

    /* JADX INFO: renamed from: a */
    private final ViewPager2 f3981a;

    /* JADX INFO: renamed from: b */
    private final e f3982b;

    /* JADX INFO: renamed from: c */
    private final RecyclerView f3983c;

    c(ViewPager2 viewPager2, e eVar, RecyclerView recyclerView) {
        this.f3981a = viewPager2;
        this.f3982b = eVar;
        this.f3983c = recyclerView;
    }

    boolean a() {
        return this.f3982b.isFakeDragging();
    }
}
