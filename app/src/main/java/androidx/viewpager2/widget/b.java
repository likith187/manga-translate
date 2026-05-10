package androidx.viewpager2.widget;

import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class b extends ViewPager2.i {

    /* JADX INFO: renamed from: a */
    private final List f3980a;

    b(int i10) {
        this.f3980a = new ArrayList(i10);
    }

    private void throwCallbackListModifiedWhileInUse(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    void addOnPageChangeCallback(ViewPager2.i iVar) {
        this.f3980a.add(iVar);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.i
    public void onPageScrollStateChanged(int i10) {
        try {
            Iterator it = this.f3980a.iterator();
            while (it.hasNext()) {
                ((ViewPager2.i) it.next()).onPageScrollStateChanged(i10);
            }
        } catch (ConcurrentModificationException e10) {
            throwCallbackListModifiedWhileInUse(e10);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.i
    public void onPageScrolled(int i10, float f10, int i11) {
        try {
            Iterator it = this.f3980a.iterator();
            while (it.hasNext()) {
                ((ViewPager2.i) it.next()).onPageScrolled(i10, f10, i11);
            }
        } catch (ConcurrentModificationException e10) {
            throwCallbackListModifiedWhileInUse(e10);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.i
    public void onPageSelected(int i10) {
        try {
            Iterator it = this.f3980a.iterator();
            while (it.hasNext()) {
                ((ViewPager2.i) it.next()).onPageSelected(i10);
            }
        } catch (ConcurrentModificationException e10) {
            throwCallbackListModifiedWhileInUse(e10);
        }
    }
}
