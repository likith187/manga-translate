package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class e extends RecyclerView.u {

    /* JADX INFO: renamed from: a */
    private ViewPager2.i f3986a;

    /* JADX INFO: renamed from: b */
    private final ViewPager2 f3987b;

    /* JADX INFO: renamed from: c */
    private final RecyclerView f3988c;

    /* JADX INFO: renamed from: d */
    private final LinearLayoutManager f3989d;

    /* JADX INFO: renamed from: e */
    private int f3990e;

    /* JADX INFO: renamed from: f */
    private int f3991f;

    /* JADX INFO: renamed from: g */
    private a f3992g;

    /* JADX INFO: renamed from: h */
    private int f3993h;

    /* JADX INFO: renamed from: i */
    private int f3994i;

    /* JADX INFO: renamed from: j */
    private boolean f3995j;

    /* JADX INFO: renamed from: k */
    private boolean f3996k;

    /* JADX INFO: renamed from: l */
    private boolean f3997l;

    /* JADX INFO: renamed from: m */
    private boolean f3998m;

    private static final class a {

        /* JADX INFO: renamed from: a */
        int f3999a;

        /* JADX INFO: renamed from: b */
        float f4000b;

        /* JADX INFO: renamed from: c */
        int f4001c;

        a() {
        }

        void a() {
            this.f3999a = -1;
            this.f4000b = 0.0f;
            this.f4001c = 0;
        }
    }

    e(ViewPager2 viewPager2) {
        this.f3987b = viewPager2;
        RecyclerView recyclerView = viewPager2.f3945m;
        this.f3988c = recyclerView;
        this.f3989d = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.f3992g = new a();
        resetState();
    }

    private void dispatchScrolled(int i10, float f10, int i11) {
        ViewPager2.i iVar = this.f3986a;
        if (iVar != null) {
            iVar.onPageScrolled(i10, f10, i11);
        }
    }

    private void dispatchSelected(int i10) {
        ViewPager2.i iVar = this.f3986a;
        if (iVar != null) {
            iVar.onPageSelected(i10);
        }
    }

    private void dispatchStateChanged(int i10) {
        if ((this.f3990e == 3 && this.f3991f == 0) || this.f3991f == i10) {
            return;
        }
        this.f3991f = i10;
        ViewPager2.i iVar = this.f3986a;
        if (iVar != null) {
            iVar.onPageScrollStateChanged(i10);
        }
    }

    private int getPosition() {
        return this.f3989d.findFirstVisibleItemPosition();
    }

    private boolean isInAnyDraggingState() {
        int i10 = this.f3990e;
        return i10 == 1 || i10 == 4;
    }

    private void resetState() {
        this.f3990e = 0;
        this.f3991f = 0;
        this.f3992g.a();
        this.f3993h = -1;
        this.f3994i = -1;
        this.f3995j = false;
        this.f3996k = false;
        this.f3998m = false;
        this.f3997l = false;
    }

    private void startDrag(boolean z10) {
        this.f3998m = z10;
        this.f3990e = z10 ? 4 : 1;
        int i10 = this.f3994i;
        if (i10 != -1) {
            this.f3993h = i10;
            this.f3994i = -1;
        } else if (this.f3993h == -1) {
            this.f3993h = getPosition();
        }
        dispatchStateChanged(1);
    }

    private void updateScrollEventValues() {
        int top;
        a aVar = this.f3992g;
        int iFindFirstVisibleItemPosition = this.f3989d.findFirstVisibleItemPosition();
        aVar.f3999a = iFindFirstVisibleItemPosition;
        if (iFindFirstVisibleItemPosition == -1) {
            aVar.a();
            return;
        }
        View viewFindViewByPosition = this.f3989d.findViewByPosition(iFindFirstVisibleItemPosition);
        if (viewFindViewByPosition == null) {
            aVar.a();
            return;
        }
        int leftDecorationWidth = this.f3989d.getLeftDecorationWidth(viewFindViewByPosition);
        int rightDecorationWidth = this.f3989d.getRightDecorationWidth(viewFindViewByPosition);
        int topDecorationHeight = this.f3989d.getTopDecorationHeight(viewFindViewByPosition);
        int bottomDecorationHeight = this.f3989d.getBottomDecorationHeight(viewFindViewByPosition);
        ViewGroup.LayoutParams layoutParams = viewFindViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            leftDecorationWidth += marginLayoutParams.leftMargin;
            rightDecorationWidth += marginLayoutParams.rightMargin;
            topDecorationHeight += marginLayoutParams.topMargin;
            bottomDecorationHeight += marginLayoutParams.bottomMargin;
        }
        int height = viewFindViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = viewFindViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        if (this.f3989d.getOrientation() == 0) {
            top = (viewFindViewByPosition.getLeft() - leftDecorationWidth) - this.f3988c.getPaddingLeft();
            if (this.f3987b.d()) {
                top = -top;
            }
            height = width;
        } else {
            top = (viewFindViewByPosition.getTop() - topDecorationHeight) - this.f3988c.getPaddingTop();
        }
        int i10 = -top;
        aVar.f4001c = i10;
        if (i10 >= 0) {
            aVar.f4000b = height == 0 ? 0.0f : i10 / height;
        } else {
            if (!new androidx.viewpager2.widget.a(this.f3989d).d()) {
                throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(aVar.f4001c)));
            }
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        }
    }

    double getRelativeScrollPosition() {
        updateScrollEventValues();
        a aVar = this.f3992g;
        return ((double) aVar.f3999a) + ((double) aVar.f4000b);
    }

    int getScrollState() {
        return this.f3991f;
    }

    boolean isFakeDragging() {
        return this.f3998m;
    }

    boolean isIdle() {
        return this.f3991f == 0;
    }

    void notifyDataSetChangeHappened() {
        this.f3997l = true;
    }

    void notifyProgrammaticScroll(int i10, boolean z10) {
        this.f3990e = z10 ? 2 : 3;
        this.f3998m = false;
        boolean z11 = this.f3994i != i10;
        this.f3994i = i10;
        dispatchStateChanged(2);
        if (z11) {
            dispatchSelected(i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.u
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        if (!(this.f3990e == 1 && this.f3991f == 1) && i10 == 1) {
            startDrag(false);
            return;
        }
        if (isInAnyDraggingState() && i10 == 2) {
            if (this.f3996k) {
                dispatchStateChanged(2);
                this.f3995j = true;
                return;
            }
            return;
        }
        if (isInAnyDraggingState() && i10 == 0) {
            updateScrollEventValues();
            if (this.f3996k) {
                a aVar = this.f3992g;
                if (aVar.f4001c == 0) {
                    int i11 = this.f3993h;
                    int i12 = aVar.f3999a;
                    if (i11 != i12) {
                        dispatchSelected(i12);
                    }
                }
            } else {
                int i13 = this.f3992g.f3999a;
                if (i13 != -1) {
                    dispatchScrolled(i13, 0.0f, 0);
                }
            }
            dispatchStateChanged(0);
            resetState();
        }
        if (this.f3990e == 2 && i10 == 0 && this.f3997l) {
            updateScrollEventValues();
            a aVar2 = this.f3992g;
            if (aVar2.f4001c == 0) {
                int i14 = this.f3994i;
                int i15 = aVar2.f3999a;
                if (i14 != i15) {
                    if (i15 == -1) {
                        i15 = 0;
                    }
                    dispatchSelected(i15);
                }
                dispatchStateChanged(0);
                resetState();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0033  */
    @Override // androidx.recyclerview.widget.RecyclerView.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onScrolled(androidx.recyclerview.widget.RecyclerView r4, int r5, int r6) {
        /*
            r3 = this;
            r4 = 1
            r3.f3996k = r4
            r3.updateScrollEventValues()
            boolean r0 = r3.f3995j
            r1 = -1
            r2 = 0
            if (r0 == 0) goto L37
            r3.f3995j = r2
            if (r6 > 0) goto L1f
            if (r6 != 0) goto L29
            if (r5 >= 0) goto L16
            r5 = r4
            goto L17
        L16:
            r5 = r2
        L17:
            androidx.viewpager2.widget.ViewPager2 r6 = r3.f3987b
            boolean r6 = r6.d()
            if (r5 != r6) goto L29
        L1f:
            androidx.viewpager2.widget.e$a r5 = r3.f3992g
            int r6 = r5.f4001c
            if (r6 == 0) goto L29
            int r5 = r5.f3999a
            int r5 = r5 + r4
            goto L2d
        L29:
            androidx.viewpager2.widget.e$a r5 = r3.f3992g
            int r5 = r5.f3999a
        L2d:
            r3.f3994i = r5
            int r6 = r3.f3993h
            if (r6 == r5) goto L45
            r3.dispatchSelected(r5)
            goto L45
        L37:
            int r5 = r3.f3990e
            if (r5 != 0) goto L45
            androidx.viewpager2.widget.e$a r5 = r3.f3992g
            int r5 = r5.f3999a
            if (r5 != r1) goto L42
            r5 = r2
        L42:
            r3.dispatchSelected(r5)
        L45:
            androidx.viewpager2.widget.e$a r5 = r3.f3992g
            int r6 = r5.f3999a
            if (r6 != r1) goto L4c
            r6 = r2
        L4c:
            float r0 = r5.f4000b
            int r5 = r5.f4001c
            r3.dispatchScrolled(r6, r0, r5)
            androidx.viewpager2.widget.e$a r5 = r3.f3992g
            int r6 = r5.f3999a
            int r0 = r3.f3994i
            if (r6 == r0) goto L5d
            if (r0 != r1) goto L6b
        L5d:
            int r5 = r5.f4001c
            if (r5 != 0) goto L6b
            int r5 = r3.f3991f
            if (r5 == r4) goto L6b
            r3.dispatchStateChanged(r2)
            r3.resetState()
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.e.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    void setOnPageChangeCallback(ViewPager2.i iVar) {
        this.f3986a = iVar;
    }
}
