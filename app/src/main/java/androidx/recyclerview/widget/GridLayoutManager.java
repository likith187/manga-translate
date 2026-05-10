package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import d0.h;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f3079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f3080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int[] f3081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View[] f3082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final SparseIntArray f3083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final SparseIntArray f3084f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    c f3085g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Rect f3086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f3087i;

    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int getSpanIndex(int i10, int i11) {
            return i10 % i11;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int getSpanSize(int i10) {
            return 1;
        }
    }

    public static abstract class c {
        final SparseIntArray mSpanIndexCache = new SparseIntArray();
        final SparseIntArray mSpanGroupIndexCache = new SparseIntArray();
        private boolean mCacheSpanIndices = false;
        private boolean mCacheSpanGroupIndices = false;

        static int findFirstKeyLessThan(SparseIntArray sparseIntArray, int i10) {
            int size = sparseIntArray.size() - 1;
            int i11 = 0;
            while (i11 <= size) {
                int i12 = (i11 + size) >>> 1;
                if (sparseIntArray.keyAt(i12) < i10) {
                    i11 = i12 + 1;
                } else {
                    size = i12 - 1;
                }
            }
            int i13 = i11 - 1;
            if (i13 < 0 || i13 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i13);
        }

        int getCachedSpanGroupIndex(int i10, int i11) {
            if (!this.mCacheSpanGroupIndices) {
                return getSpanGroupIndex(i10, i11);
            }
            int i12 = this.mSpanGroupIndexCache.get(i10, -1);
            if (i12 != -1) {
                return i12;
            }
            int spanGroupIndex = getSpanGroupIndex(i10, i11);
            this.mSpanGroupIndexCache.put(i10, spanGroupIndex);
            return spanGroupIndex;
        }

        int getCachedSpanIndex(int i10, int i11) {
            if (!this.mCacheSpanIndices) {
                return getSpanIndex(i10, i11);
            }
            int i12 = this.mSpanIndexCache.get(i10, -1);
            if (i12 != -1) {
                return i12;
            }
            int spanIndex = getSpanIndex(i10, i11);
            this.mSpanIndexCache.put(i10, spanIndex);
            return spanIndex;
        }

        public int getSpanGroupIndex(int i10, int i11) {
            int i12;
            int i13;
            int cachedSpanIndex;
            int iFindFirstKeyLessThan;
            if (!this.mCacheSpanGroupIndices || (iFindFirstKeyLessThan = findFirstKeyLessThan(this.mSpanGroupIndexCache, i10)) == -1) {
                i12 = 0;
                i13 = 0;
                cachedSpanIndex = 0;
            } else {
                i12 = this.mSpanGroupIndexCache.get(iFindFirstKeyLessThan);
                i13 = iFindFirstKeyLessThan + 1;
                cachedSpanIndex = getCachedSpanIndex(iFindFirstKeyLessThan, i11) + getSpanSize(iFindFirstKeyLessThan);
                if (cachedSpanIndex == i11) {
                    i12++;
                    cachedSpanIndex = 0;
                }
            }
            int spanSize = getSpanSize(i10);
            while (i13 < i10) {
                int spanSize2 = getSpanSize(i13);
                cachedSpanIndex += spanSize2;
                if (cachedSpanIndex == i11) {
                    i12++;
                    cachedSpanIndex = 0;
                } else if (cachedSpanIndex > i11) {
                    i12++;
                    cachedSpanIndex = spanSize2;
                }
                i13++;
            }
            return cachedSpanIndex + spanSize > i11 ? i12 + 1 : i12;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002b -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002f -> B:17:0x0030). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int getSpanIndex(int r6, int r7) {
            /*
                r5 = this;
                int r0 = r5.getSpanSize(r6)
                r1 = 0
                if (r0 != r7) goto L8
                return r1
            L8:
                boolean r2 = r5.mCacheSpanIndices
                if (r2 == 0) goto L20
                android.util.SparseIntArray r2 = r5.mSpanIndexCache
                int r2 = findFirstKeyLessThan(r2, r6)
                if (r2 < 0) goto L20
                android.util.SparseIntArray r3 = r5.mSpanIndexCache
                int r3 = r3.get(r2)
                int r4 = r5.getSpanSize(r2)
                int r3 = r3 + r4
                goto L30
            L20:
                r2 = r1
                r3 = r2
            L22:
                if (r2 >= r6) goto L33
                int r4 = r5.getSpanSize(r2)
                int r3 = r3 + r4
                if (r3 != r7) goto L2d
                r3 = r1
                goto L30
            L2d:
                if (r3 <= r7) goto L30
                r3 = r4
            L30:
                int r2 = r2 + 1
                goto L22
            L33:
                int r0 = r0 + r3
                if (r0 > r7) goto L37
                return r3
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.c.getSpanIndex(int, int):int");
        }

        public abstract int getSpanSize(int i10);

        public void invalidateSpanGroupIndexCache() {
            this.mSpanGroupIndexCache.clear();
        }

        public void invalidateSpanIndexCache() {
            this.mSpanIndexCache.clear();
        }

        public boolean isSpanGroupIndexCacheEnabled() {
            return this.mCacheSpanGroupIndices;
        }

        public boolean isSpanIndexCacheEnabled() {
            return this.mCacheSpanIndices;
        }

        public void setSpanGroupIndexCacheEnabled(boolean z10) {
            if (!z10) {
                this.mSpanGroupIndexCache.clear();
            }
            this.mCacheSpanGroupIndices = z10;
        }

        public void setSpanIndexCacheEnabled(boolean z10) {
            if (!z10) {
                this.mSpanGroupIndexCache.clear();
            }
            this.mCacheSpanIndices = z10;
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f3079a = false;
        this.f3080b = -1;
        this.f3083e = new SparseIntArray();
        this.f3084f = new SparseIntArray();
        this.f3085g = new a();
        this.f3086h = new Rect();
        b0(RecyclerView.p.getProperties(context, attributeSet, i10, i11).f3160b);
    }

    private void K(RecyclerView.w wVar, RecyclerView.a0 a0Var, int i10, boolean z10) {
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        if (z10) {
            i13 = 1;
            i12 = i10;
            i11 = 0;
        } else {
            i11 = i10 - 1;
            i12 = -1;
            i13 = -1;
        }
        while (i11 != i12) {
            View view = this.f3082d[i11];
            b bVar = (b) view.getLayoutParams();
            int iX = X(wVar, a0Var, getPosition(view));
            bVar.f3089f = iX;
            bVar.f3088e = i14;
            i14 += iX;
            i11 += i13;
        }
    }

    private void L() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            b bVar = (b) getChildAt(i10).getLayoutParams();
            int iA = bVar.a();
            this.f3083e.put(iA, bVar.f());
            this.f3084f.put(iA, bVar.e());
        }
    }

    private void M(int i10) {
        this.f3081c = N(this.f3081c, this.f3080b, i10);
    }

    static int[] N(int[] iArr, int i10, int i11) {
        int i12;
        if (iArr == null || iArr.length != i10 + 1 || iArr[iArr.length - 1] != i11) {
            iArr = new int[i10 + 1];
        }
        int i13 = 0;
        iArr[0] = 0;
        int i14 = i11 / i10;
        int i15 = i11 % i10;
        int i16 = 0;
        for (int i17 = 1; i17 <= i10; i17++) {
            i13 += i15;
            if (i13 <= 0 || i10 - i13 >= i15) {
                i12 = i14;
            } else {
                i12 = i14 + 1;
                i13 -= i10;
            }
            i16 += i12;
            iArr[i17] = i16;
        }
        return iArr;
    }

    private void O() {
        this.f3083e.clear();
        this.f3084f.clear();
    }

    private int P(RecyclerView.a0 a0Var) {
        if (getChildCount() != 0 && a0Var.b() != 0) {
            ensureLayoutState();
            boolean zIsSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!zIsSmoothScrollbarEnabled, true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!zIsSmoothScrollbarEnabled, true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                int cachedSpanGroupIndex = this.f3085g.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToStart), this.f3080b);
                int cachedSpanGroupIndex2 = this.f3085g.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToEnd), this.f3080b);
                int iMax = this.mShouldReverseLayout ? Math.max(0, ((this.f3085g.getCachedSpanGroupIndex(a0Var.b() - 1, this.f3080b) + 1) - Math.max(cachedSpanGroupIndex, cachedSpanGroupIndex2)) - 1) : Math.max(0, Math.min(cachedSpanGroupIndex, cachedSpanGroupIndex2));
                if (zIsSmoothScrollbarEnabled) {
                    return Math.round((iMax * (Math.abs(this.mOrientationHelper.d(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)) / ((this.f3085g.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToEnd), this.f3080b) - this.f3085g.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToStart), this.f3080b)) + 1))) + (this.mOrientationHelper.n() - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)));
                }
                return iMax;
            }
        }
        return 0;
    }

    private int Q(RecyclerView.a0 a0Var) {
        if (getChildCount() != 0 && a0Var.b() != 0) {
            ensureLayoutState();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled(), true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled(), true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                if (!isSmoothScrollbarEnabled()) {
                    return this.f3085g.getCachedSpanGroupIndex(a0Var.b() - 1, this.f3080b) + 1;
                }
                int iD = this.mOrientationHelper.d(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart);
                int cachedSpanGroupIndex = this.f3085g.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToStart), this.f3080b);
                return (int) ((iD / ((this.f3085g.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToEnd), this.f3080b) - cachedSpanGroupIndex) + 1)) * (this.f3085g.getCachedSpanGroupIndex(a0Var.b() - 1, this.f3080b) + 1));
            }
        }
        return 0;
    }

    private void R(RecyclerView.w wVar, RecyclerView.a0 a0Var, LinearLayoutManager.a aVar, int i10) {
        boolean z10 = i10 == 1;
        int iW = W(wVar, a0Var, aVar.f3094b);
        if (z10) {
            while (iW > 0) {
                int i11 = aVar.f3094b;
                if (i11 <= 0) {
                    return;
                }
                int i12 = i11 - 1;
                aVar.f3094b = i12;
                iW = W(wVar, a0Var, i12);
            }
            return;
        }
        int iB = a0Var.b() - 1;
        int i13 = aVar.f3094b;
        while (i13 < iB) {
            int i14 = i13 + 1;
            int iW2 = W(wVar, a0Var, i14);
            if (iW2 <= iW) {
                break;
            }
            i13 = i14;
            iW = iW2;
        }
        aVar.f3094b = i13;
    }

    private void S() {
        View[] viewArr = this.f3082d;
        if (viewArr == null || viewArr.length != this.f3080b) {
            this.f3082d = new View[this.f3080b];
        }
    }

    private int V(RecyclerView.w wVar, RecyclerView.a0 a0Var, int i10) {
        if (!a0Var.e()) {
            return this.f3085g.getCachedSpanGroupIndex(i10, this.f3080b);
        }
        int iF = wVar.f(i10);
        if (iF != -1) {
            return this.f3085g.getCachedSpanGroupIndex(iF, this.f3080b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i10);
        return 0;
    }

    private int W(RecyclerView.w wVar, RecyclerView.a0 a0Var, int i10) {
        if (!a0Var.e()) {
            return this.f3085g.getCachedSpanIndex(i10, this.f3080b);
        }
        int i11 = this.f3084f.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int iF = wVar.f(i10);
        if (iF != -1) {
            return this.f3085g.getCachedSpanIndex(iF, this.f3080b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i10);
        return 0;
    }

    private int X(RecyclerView.w wVar, RecyclerView.a0 a0Var, int i10) {
        if (!a0Var.e()) {
            return this.f3085g.getSpanSize(i10);
        }
        int i11 = this.f3083e.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int iF = wVar.f(i10);
        if (iF != -1) {
            return this.f3085g.getSpanSize(iF);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i10);
        return 1;
    }

    private void Y(float f10, int i10) {
        M(Math.max(Math.round(f10 * this.f3080b), i10));
    }

    private void Z(View view, int i10, boolean z10) {
        int childMeasureSpec;
        int childMeasureSpec2;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.f3164b;
        int i11 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i12 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int iT = T(bVar.f3088e, bVar.f3089f);
        if (this.mOrientation == 1) {
            childMeasureSpec2 = RecyclerView.p.getChildMeasureSpec(iT, i10, i12, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            childMeasureSpec = RecyclerView.p.getChildMeasureSpec(this.mOrientationHelper.o(), getHeightMode(), i11, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int childMeasureSpec3 = RecyclerView.p.getChildMeasureSpec(iT, i10, i11, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int childMeasureSpec4 = RecyclerView.p.getChildMeasureSpec(this.mOrientationHelper.o(), getWidthMode(), i12, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        a0(view, childMeasureSpec2, childMeasureSpec, z10);
    }

    private void a0(View view, int i10, int i11, boolean z10) {
        RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
        if (z10 ? shouldReMeasureChild(view, i10, i11, qVar) : shouldMeasureChild(view, i10, i11, qVar)) {
            view.measure(i10, i11);
        }
    }

    private void c0() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        M(height - paddingTop);
    }

    int T(int i10, int i11) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.f3081c;
            return iArr[i11 + i10] - iArr[i10];
        }
        int[] iArr2 = this.f3081c;
        int i12 = this.f3080b;
        return iArr2[i12 - i10] - iArr2[(i12 - i10) - i11];
    }

    public int U() {
        return this.f3080b;
    }

    public void b0(int i10) {
        if (i10 == this.f3080b) {
            return;
        }
        this.f3079a = true;
        if (i10 >= 1) {
            this.f3080b = i10;
            this.f3085g.invalidateSpanIndexCache();
            requestLayout();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean checkLayoutParams(RecyclerView.q qVar) {
        return qVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void collectPrefetchPositionsForLayoutState(RecyclerView.a0 a0Var, LinearLayoutManager.c cVar, RecyclerView.p.c cVar2) {
        int spanSize = this.f3080b;
        for (int i10 = 0; i10 < this.f3080b && cVar.c(a0Var) && spanSize > 0; i10++) {
            int i11 = cVar.f3105d;
            cVar2.a(i11, Math.max(0, cVar.f3108g));
            spanSize -= this.f3085g.getSpanSize(i11);
            cVar.f3105d += cVar.f3106e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollOffset(RecyclerView.a0 a0Var) {
        return this.f3087i ? P(a0Var) : super.computeHorizontalScrollOffset(a0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollRange(RecyclerView.a0 a0Var) {
        return this.f3087i ? Q(a0Var) : super.computeHorizontalScrollRange(a0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollOffset(RecyclerView.a0 a0Var) {
        return this.f3087i ? P(a0Var) : super.computeVerticalScrollOffset(a0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollRange(RecyclerView.a0 a0Var) {
        return this.f3087i ? Q(a0Var) : super.computeVerticalScrollRange(a0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    View findReferenceChild(RecyclerView.w wVar, RecyclerView.a0 a0Var, boolean z10, boolean z11) {
        int i10;
        int childCount;
        int childCount2 = getChildCount();
        int i11 = 1;
        if (z11) {
            childCount = getChildCount() - 1;
            i10 = -1;
            i11 = -1;
        } else {
            i10 = childCount2;
            childCount = 0;
        }
        int iB = a0Var.b();
        ensureLayoutState();
        int iN = this.mOrientationHelper.n();
        int i12 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        while (childCount != i10) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            if (position >= 0 && position < iB && W(wVar, a0Var, position) == 0) {
                if (((RecyclerView.q) childAt.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.g(childAt) < i12 && this.mOrientationHelper.d(childAt) >= iN) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            childCount += i11;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int getColumnCountForAccessibility(RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (this.mOrientation == 1) {
            return this.f3080b;
        }
        if (a0Var.b() < 1) {
            return 0;
        }
        return V(wVar, a0Var, a0Var.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int getRowCountForAccessibility(RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (this.mOrientation == 0) {
            return this.f3080b;
        }
        if (a0Var.b() < 1) {
            return 0;
        }
        return V(wVar, a0Var, a0Var.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void layoutChunk(RecyclerView.w wVar, RecyclerView.a0 a0Var, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int iF;
        int iF2;
        int iF3;
        int i17;
        int childMeasureSpec;
        int childMeasureSpec2;
        View viewD;
        int iM = this.mOrientationHelper.m();
        boolean z10 = iM != 1073741824;
        int i18 = getChildCount() > 0 ? this.f3081c[this.f3080b] : 0;
        if (z10) {
            c0();
        }
        boolean z11 = cVar.f3106e == 1;
        int iW = this.f3080b;
        if (!z11) {
            iW = W(wVar, a0Var, cVar.f3105d) + X(wVar, a0Var, cVar.f3105d);
        }
        int i19 = 0;
        while (i19 < this.f3080b && cVar.c(a0Var) && iW > 0) {
            int i20 = cVar.f3105d;
            int iX = X(wVar, a0Var, i20);
            if (iX > this.f3080b) {
                throw new IllegalArgumentException("Item at position " + i20 + " requires " + iX + " spans but GridLayoutManager has only " + this.f3080b + " spans.");
            }
            iW -= iX;
            if (iW < 0 || (viewD = cVar.d(wVar)) == null) {
                break;
            }
            this.f3082d[i19] = viewD;
            i19++;
        }
        if (i19 == 0) {
            bVar.f3099b = true;
            return;
        }
        K(wVar, a0Var, i19, z11);
        float f10 = 0.0f;
        int i21 = 0;
        for (int i22 = 0; i22 < i19; i22++) {
            View view = this.f3082d[i22];
            if (cVar.f3113l == null) {
                if (z11) {
                    addView(view);
                } else {
                    addView(view, 0);
                }
            } else if (z11) {
                addDisappearingView(view);
            } else {
                addDisappearingView(view, 0);
            }
            calculateItemDecorationsForChild(view, this.f3086h);
            Z(view, iM, false);
            int iE = this.mOrientationHelper.e(view);
            if (iE > i21) {
                i21 = iE;
            }
            float f11 = (this.mOrientationHelper.f(view) * 1.0f) / ((b) view.getLayoutParams()).f3089f;
            if (f11 > f10) {
                f10 = f11;
            }
        }
        if (z10) {
            Y(f10, i18);
            i21 = 0;
            for (int i23 = 0; i23 < i19; i23++) {
                View view2 = this.f3082d[i23];
                Z(view2, 1073741824, true);
                int iE2 = this.mOrientationHelper.e(view2);
                if (iE2 > i21) {
                    i21 = iE2;
                }
            }
        }
        for (int i24 = 0; i24 < i19; i24++) {
            View view3 = this.f3082d[i24];
            if (this.mOrientationHelper.e(view3) != i21) {
                b bVar2 = (b) view3.getLayoutParams();
                Rect rect = bVar2.f3164b;
                int i25 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar2).topMargin + ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin;
                int i26 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar2).leftMargin + ((ViewGroup.MarginLayoutParams) bVar2).rightMargin;
                int iT = T(bVar2.f3088e, bVar2.f3089f);
                if (this.mOrientation == 1) {
                    childMeasureSpec2 = RecyclerView.p.getChildMeasureSpec(iT, 1073741824, i26, ((ViewGroup.MarginLayoutParams) bVar2).width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i21 - i25, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i21 - i26, 1073741824);
                    childMeasureSpec = RecyclerView.p.getChildMeasureSpec(iT, 1073741824, i25, ((ViewGroup.MarginLayoutParams) bVar2).height, false);
                    childMeasureSpec2 = iMakeMeasureSpec;
                }
                a0(view3, childMeasureSpec2, childMeasureSpec, true);
            }
        }
        bVar.f3098a = i21;
        if (this.mOrientation == 1) {
            if (cVar.f3107f == -1) {
                i15 = cVar.f3103b;
                i17 = i15 - i21;
            } else {
                i17 = cVar.f3103b;
                i15 = i17 + i21;
            }
            i13 = i17;
            i14 = 0;
            i12 = 0;
        } else {
            if (cVar.f3107f == -1) {
                i11 = cVar.f3103b;
                i10 = i11 - i21;
            } else {
                i10 = cVar.f3103b;
                i11 = i10 + i21;
            }
            i12 = i10;
            i13 = 0;
            i14 = i11;
            i15 = 0;
        }
        int i27 = 0;
        while (i27 < i19) {
            View view4 = this.f3082d[i27];
            b bVar3 = (b) view4.getLayoutParams();
            if (this.mOrientation == 1) {
                if (isLayoutRTL()) {
                    int paddingLeft = getPaddingLeft() + this.f3081c[this.f3080b - bVar3.f3088e];
                    iF3 = i15;
                    iF = paddingLeft;
                    iF2 = paddingLeft - this.mOrientationHelper.f(view4);
                } else {
                    int paddingLeft2 = getPaddingLeft() + this.f3081c[bVar3.f3088e];
                    iF3 = i15;
                    iF2 = paddingLeft2;
                    iF = this.mOrientationHelper.f(view4) + paddingLeft2;
                }
                i16 = i13;
            } else {
                int paddingTop = getPaddingTop() + this.f3081c[bVar3.f3088e];
                i16 = paddingTop;
                iF = i14;
                iF2 = i12;
                iF3 = this.mOrientationHelper.f(view4) + paddingTop;
            }
            layoutDecoratedWithMargins(view4, iF2, i16, iF, iF3);
            if (bVar3.c() || bVar3.b()) {
                bVar.f3100c = true;
            }
            bVar.f3101d |= view4.hasFocusable();
            i27++;
            i15 = iF3;
            i14 = iF;
            i12 = iF2;
            i13 = i16;
        }
        Arrays.fill(this.f3082d, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void onAnchorReady(RecyclerView.w wVar, RecyclerView.a0 a0Var, LinearLayoutManager.a aVar, int i10) {
        super.onAnchorReady(wVar, a0Var, aVar, i10);
        c0();
        if (a0Var.b() > 0 && !a0Var.e()) {
            R(wVar, a0Var, aVar, i10);
        }
        S();
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d1, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x010f  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.View onFocusSearchFailed(android.view.View r24, int r25, androidx.recyclerview.widget.RecyclerView.w r26, androidx.recyclerview.widget.RecyclerView.a0 r27) {
        /*
            Method dump skipped, instruction units count: 317
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.RecyclerView$w, androidx.recyclerview.widget.RecyclerView$a0):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.w wVar, RecyclerView.a0 a0Var, View view, d0.h hVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, hVar);
            return;
        }
        b bVar = (b) layoutParams;
        int iV = V(wVar, a0Var, bVar.a());
        if (this.mOrientation == 0) {
            hVar.k0(h.f.a(bVar.e(), bVar.f(), iV, 1, false, false));
        } else {
            hVar.k0(h.f.a(iV, 1, bVar.e(), bVar.f(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        this.f3085g.invalidateSpanIndexCache();
        this.f3085g.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f3085g.invalidateSpanIndexCache();
        this.f3085g.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        this.f3085g.invalidateSpanIndexCache();
        this.f3085g.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        this.f3085g.invalidateSpanIndexCache();
        this.f3085g.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        this.f3085g.invalidateSpanIndexCache();
        this.f3085g.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutChildren(RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (a0Var.e()) {
            L();
        }
        super.onLayoutChildren(wVar, a0Var);
        O();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutCompleted(RecyclerView.a0 a0Var) {
        super.onLayoutCompleted(a0Var);
        this.f3079a = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int scrollHorizontallyBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        c0();
        S();
        return super.scrollHorizontallyBy(i10, wVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int scrollVerticallyBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        c0();
        S();
        return super.scrollVerticallyBy(i10, wVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void setMeasuredDimension(Rect rect, int i10, int i11) {
        int iChooseSize;
        int iChooseSize2;
        if (this.f3081c == null) {
            super.setMeasuredDimension(rect, i10, i11);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            iChooseSize2 = RecyclerView.p.chooseSize(i11, rect.height() + paddingTop, getMinimumHeight());
            int[] iArr = this.f3081c;
            iChooseSize = RecyclerView.p.chooseSize(i10, iArr[iArr.length - 1] + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.p.chooseSize(i10, rect.width() + paddingLeft, getMinimumWidth());
            int[] iArr2 = this.f3081c;
            iChooseSize2 = RecyclerView.p.chooseSize(i11, iArr2[iArr2.length - 1] + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z10) {
        if (z10) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.f3079a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    public static class b extends RecyclerView.q {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f3088e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f3089f;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3088e = -1;
            this.f3089f = 0;
        }

        public int e() {
            return this.f3088e;
        }

        public int f() {
            return this.f3089f;
        }

        public b(int i10, int i11) {
            super(i10, i11);
            this.f3088e = -1;
            this.f3089f = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3088e = -1;
            this.f3089f = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3088e = -1;
            this.f3089f = 0;
        }
    }

    public GridLayoutManager(Context context, int i10) {
        super(context);
        this.f3079a = false;
        this.f3080b = -1;
        this.f3083e = new SparseIntArray();
        this.f3084f = new SparseIntArray();
        this.f3085g = new a();
        this.f3086h = new Rect();
        b0(i10);
    }

    public GridLayoutManager(Context context, int i10, int i11, boolean z10) {
        super(context, i11, z10);
        this.f3079a = false;
        this.f3080b = -1;
        this.f3083e = new SparseIntArray();
        this.f3084f = new SparseIntArray();
        this.f3085g = new a();
        this.f3086h = new Rect();
        b0(i10);
    }
}
