package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class d extends ViewPager2.i {

    /* JADX INFO: renamed from: a */
    private final LinearLayoutManager f3984a;

    /* JADX INFO: renamed from: b */
    private ViewPager2.k f3985b;

    d(LinearLayoutManager linearLayoutManager) {
        this.f3984a = linearLayoutManager;
    }

    ViewPager2.k getPageTransformer() {
        return this.f3985b;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.i
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.i
    public void onPageScrolled(int i10, float f10, int i11) {
        if (this.f3985b == null) {
            return;
        }
        float f11 = -f10;
        for (int i12 = 0; i12 < this.f3984a.getChildCount(); i12++) {
            View childAt = this.f3984a.getChildAt(i12);
            if (childAt == null) {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i12), Integer.valueOf(this.f3984a.getChildCount())));
            }
            this.f3985b.transformPage(childAt, (this.f3984a.getPosition(childAt) - i10) + f11);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.i
    public void onPageSelected(int i10) {
    }

    void setPageTransformer(ViewPager2.k kVar) {
        this.f3985b = kVar;
    }
}
