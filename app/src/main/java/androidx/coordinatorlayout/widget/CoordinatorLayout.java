package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.R$attr;
import androidx.coordinatorlayout.R$style;
import androidx.coordinatorlayout.R$styleable;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.j;
import androidx.core.view.m0;
import androidx.core.view.x;
import androidx.core.view.y;
import androidx.core.view.z;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements x, y {
    static final Comparator A;
    private static final c0.e B;

    /* JADX INFO: renamed from: x */
    static final String f1842x;

    /* JADX INFO: renamed from: y */
    static final Class[] f1843y;

    /* JADX INFO: renamed from: z */
    static final ThreadLocal f1844z;

    /* JADX INFO: renamed from: a */
    private final List f1845a;

    /* JADX INFO: renamed from: b */
    private final androidx.coordinatorlayout.widget.a f1846b;

    /* JADX INFO: renamed from: c */
    private final List f1847c;

    /* JADX INFO: renamed from: f */
    private final List f1848f;

    /* JADX INFO: renamed from: h */
    private Paint f1849h;

    /* JADX INFO: renamed from: i */
    private final int[] f1850i;

    /* JADX INFO: renamed from: j */
    private final int[] f1851j;

    /* JADX INFO: renamed from: k */
    private boolean f1852k;

    /* JADX INFO: renamed from: l */
    private boolean f1853l;

    /* JADX INFO: renamed from: m */
    private int[] f1854m;

    /* JADX INFO: renamed from: n */
    private View f1855n;

    /* JADX INFO: renamed from: o */
    private View f1856o;

    /* JADX INFO: renamed from: p */
    private g f1857p;

    /* JADX INFO: renamed from: q */
    private boolean f1858q;

    /* JADX INFO: renamed from: r */
    private a1 f1859r;

    /* JADX INFO: renamed from: s */
    private boolean f1860s;

    /* JADX INFO: renamed from: t */
    private Drawable f1861t;

    /* JADX INFO: renamed from: u */
    ViewGroup.OnHierarchyChangeListener f1862u;

    /* JADX INFO: renamed from: v */
    private a0 f1863v;

    /* JADX INFO: renamed from: w */
    private final z f1864w;

    class a implements a0 {
        a() {
        }

        @Override // androidx.core.view.a0
        public a1 onApplyWindowInsets(View view, a1 a1Var) {
            return CoordinatorLayout.this.U(a1Var);
        }
    }

    public interface b {
        c getBehavior();
    }

    public static abstract class c {
        public c() {
        }

        public static Object getTag(View view) {
            return ((f) view.getLayoutParams()).f1885r;
        }

        public static void setTag(View view, Object obj) {
            ((f) view.getLayoutParams()).f1885r = obj;
        }

        public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, View view) {
            return getScrimOpacity(coordinatorLayout, view) > 0.0f;
        }

        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            return false;
        }

        public int getScrimColor(CoordinatorLayout coordinatorLayout, View view) {
            return -16777216;
        }

        public float getScrimOpacity(CoordinatorLayout coordinatorLayout, View view) {
            return 0.0f;
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return false;
        }

        public a1 onApplyWindowInsets(CoordinatorLayout coordinatorLayout, View view, a1 a1Var) {
            return a1Var;
        }

        public void onAttachedToLayoutParams(f fVar) {
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return false;
        }

        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, View view, View view2) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
            return false;
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
            return false;
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, View view, View view2, float f10, float f11, boolean z10) {
            return false;
        }

        public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, View view, View view2, float f10, float f11) {
            return false;
        }

        @Deprecated
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr) {
        }

        @Deprecated
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13) {
        }

        @Deprecated
        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10) {
        }

        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z10) {
            return false;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10) {
            return false;
        }

        @Deprecated
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2) {
        }

        public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public c(Context context, AttributeSet attributeSet) {
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr, int i12) {
            if (i12 == 0) {
                onNestedPreScroll(coordinatorLayout, view, view2, i10, i11, iArr);
            }
        }

        @Deprecated
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14) {
            if (i14 == 0) {
                onNestedScroll(coordinatorLayout, view, view2, i10, i11, i12, i13);
            }
        }

        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
            if (i11 == 0) {
                onNestedScrollAccepted(coordinatorLayout, view, view2, view3, i10);
            }
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
            if (i11 == 0) {
                return onStartNestedScroll(coordinatorLayout, view, view2, view3, i10);
            }
            return false;
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10) {
            if (i10 == 0) {
                onStopNestedScroll(coordinatorLayout, view, view2);
            }
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            iArr[0] = iArr[0] + i12;
            iArr[1] = iArr[1] + i13;
            onNestedScroll(coordinatorLayout, view, view2, i10, i11, i12, i13, i14);
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface d {
        Class value();
    }

    private class e implements ViewGroup.OnHierarchyChangeListener {
        e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f1862u;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.F(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f1862u;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    class g implements ViewTreeObserver.OnPreDrawListener {
        g() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.F(0);
            return true;
        }
    }

    static class h implements Comparator {
        h() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a */
        public int compare(View view, View view2) {
            float fI = m0.I(view);
            float fI2 = m0.I(view2);
            if (fI > fI2) {
                return -1;
            }
            return fI < fI2 ? 1 : 0;
        }
    }

    static {
        Package r02 = CoordinatorLayout.class.getPackage();
        f1842x = r02 != null ? r02.getName() : null;
        A = new h();
        f1843y = new Class[]{Context.class, AttributeSet.class};
        f1844z = new ThreadLocal();
        B = new c0.g(12);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    private void A(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        Rect rectE = e();
        rectE.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        if (this.f1859r != null && m0.s(this) && !m0.s(view)) {
            rectE.left += this.f1859r.k();
            rectE.top += this.f1859r.m();
            rectE.right -= this.f1859r.l();
            rectE.bottom -= this.f1859r.j();
        }
        Rect rectE2 = e();
        j.a(Q(fVar.f1870c), view.getMeasuredWidth(), view.getMeasuredHeight(), rectE, rectE2, i10);
        view.layout(rectE2.left, rectE2.top, rectE2.right, rectE2.bottom);
        M(rectE);
        M(rectE2);
    }

    private void B(View view, View view2, int i10) {
        Rect rectE = e();
        Rect rectE2 = e();
        try {
            r(view2, rectE);
            s(view, i10, rectE, rectE2);
            view.layout(rectE2.left, rectE2.top, rectE2.right, rectE2.bottom);
        } finally {
            M(rectE);
            M(rectE2);
        }
    }

    private void C(View view, int i10, int i11) {
        f fVar = (f) view.getLayoutParams();
        int iB = j.b(R(fVar.f1870c), i11);
        int i12 = iB & 7;
        int i13 = iB & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i11 == 1) {
            i10 = width - i10;
        }
        int iU = u(i10) - measuredWidth;
        if (i12 == 1) {
            iU += measuredWidth / 2;
        } else if (i12 == 5) {
            iU += measuredWidth;
        }
        int i14 = i13 != 16 ? i13 != 80 ? 0 : measuredHeight : measuredHeight / 2;
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(iU, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(i14, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth + iMax, measuredHeight + iMax2);
    }

    private void D(View view, Rect rect, int i10) {
        boolean z10;
        boolean z11;
        int width;
        int i11;
        int i12;
        int i13;
        int height;
        int i14;
        int i15;
        int i16;
        if (m0.O(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            f fVar = (f) view.getLayoutParams();
            c cVarF = fVar.f();
            Rect rectE = e();
            Rect rectE2 = e();
            rectE2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (cVarF == null || !cVarF.getInsetDodgeRect(this, view, rectE)) {
                rectE.set(rectE2);
            } else if (!rectE2.contains(rectE)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectE.toShortString() + " | Bounds:" + rectE2.toShortString());
            }
            M(rectE2);
            if (rectE.isEmpty()) {
                M(rectE);
                return;
            }
            int iB = j.b(fVar.f1875h, i10);
            boolean z12 = true;
            if ((iB & 48) != 48 || (i15 = (rectE.top - ((ViewGroup.MarginLayoutParams) fVar).topMargin) - fVar.f1877j) >= (i16 = rect.top)) {
                z10 = false;
            } else {
                T(view, i16 - i15);
                z10 = true;
            }
            if ((iB & 80) == 80 && (height = ((getHeight() - rectE.bottom) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) + fVar.f1877j) < (i14 = rect.bottom)) {
                T(view, height - i14);
                z10 = true;
            }
            if (!z10) {
                T(view, 0);
            }
            if ((iB & 3) != 3 || (i12 = (rectE.left - ((ViewGroup.MarginLayoutParams) fVar).leftMargin) - fVar.f1876i) >= (i13 = rect.left)) {
                z11 = false;
            } else {
                S(view, i13 - i12);
                z11 = true;
            }
            if ((iB & 5) != 5 || (width = ((getWidth() - rectE.right) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin) + fVar.f1876i) >= (i11 = rect.right)) {
                z12 = z11;
            } else {
                S(view, width - i11);
            }
            if (!z12) {
                S(view, 0);
            }
            M(rectE);
        }
    }

    static c I(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0) {
            String str2 = f1842x;
            if (!TextUtils.isEmpty(str2)) {
                str = str2 + '.' + str;
            }
        }
        try {
            ThreadLocal threadLocal = f1844z;
            Map map = (Map) threadLocal.get();
            if (map == null) {
                map = new HashMap();
                threadLocal.set(map);
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, false, context.getClassLoader()).getConstructor(f1843y);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (c) constructor.newInstance(context, attributeSet);
        } catch (Exception e10) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e10);
        }
    }

    private boolean J(MotionEvent motionEvent, int i10) {
        int actionMasked = motionEvent.getActionMasked();
        List list = this.f1847c;
        x(list);
        int size = list.size();
        MotionEvent motionEventObtain = null;
        boolean zOnInterceptTouchEvent = false;
        boolean z10 = false;
        for (int i11 = 0; i11 < size; i11++) {
            View view = (View) list.get(i11);
            f fVar = (f) view.getLayoutParams();
            c cVarF = fVar.f();
            if (!(zOnInterceptTouchEvent || z10) || actionMasked == 0) {
                if (!zOnInterceptTouchEvent && cVarF != null) {
                    if (i10 == 0) {
                        zOnInterceptTouchEvent = cVarF.onInterceptTouchEvent(this, view, motionEvent);
                    } else if (i10 == 1) {
                        zOnInterceptTouchEvent = cVarF.onTouchEvent(this, view, motionEvent);
                    }
                    if (zOnInterceptTouchEvent) {
                        this.f1855n = view;
                    }
                }
                boolean zC = fVar.c();
                boolean zI = fVar.i(this, view);
                z10 = zI && !zC;
                if (zI && !z10) {
                    break;
                }
            } else if (cVarF != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i10 == 0) {
                    cVarF.onInterceptTouchEvent(this, view, motionEventObtain);
                } else if (i10 == 1) {
                    cVarF.onTouchEvent(this, view, motionEventObtain);
                }
            }
        }
        list.clear();
        return zOnInterceptTouchEvent;
    }

    private void K() {
        this.f1845a.clear();
        this.f1846b.c();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            f fVarW = w(childAt);
            fVarW.d(this, childAt);
            this.f1846b.b(childAt);
            for (int i11 = 0; i11 < childCount; i11++) {
                if (i11 != i10) {
                    View childAt2 = getChildAt(i11);
                    if (fVarW.b(this, childAt, childAt2)) {
                        if (!this.f1846b.d(childAt2)) {
                            this.f1846b.b(childAt2);
                        }
                        this.f1846b.a(childAt2, childAt);
                    }
                }
            }
        }
        this.f1845a.addAll(this.f1846b.i());
        Collections.reverse(this.f1845a);
    }

    private static void M(Rect rect) {
        rect.setEmpty();
        B.a(rect);
    }

    private void O(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            c cVarF = ((f) childAt.getLayoutParams()).f();
            if (cVarF != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z10) {
                    cVarF.onInterceptTouchEvent(this, childAt, motionEventObtain);
                } else {
                    cVarF.onTouchEvent(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            ((f) getChildAt(i11).getLayoutParams()).m();
        }
        this.f1855n = null;
        this.f1852k = false;
    }

    private static int P(int i10) {
        if (i10 == 0) {
            return 17;
        }
        return i10;
    }

    private static int Q(int i10) {
        if ((i10 & 7) == 0) {
            i10 |= 8388611;
        }
        return (i10 & 112) == 0 ? i10 | 48 : i10;
    }

    private static int R(int i10) {
        if (i10 == 0) {
            return 8388661;
        }
        return i10;
    }

    private void S(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        int i11 = fVar.f1876i;
        if (i11 != i10) {
            m0.T(view, i10 - i11);
            fVar.f1876i = i10;
        }
    }

    private void T(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        int i11 = fVar.f1877j;
        if (i11 != i10) {
            m0.U(view, i10 - i11);
            fVar.f1877j = i10;
        }
    }

    private void V() {
        if (!m0.s(this)) {
            m0.y0(this, null);
            return;
        }
        if (this.f1863v == null) {
            this.f1863v = new a();
        }
        m0.y0(this, this.f1863v);
        setSystemUiVisibility(1280);
    }

    private static Rect e() {
        Rect rect = (Rect) B.b();
        return rect == null ? new Rect() : rect;
    }

    private static int g(int i10, int i11, int i12) {
        return i10 < i11 ? i11 : i10 > i12 ? i12 : i10;
    }

    private void h(f fVar, Rect rect, int i10, int i11) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i10) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i11) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        rect.set(iMax, iMax2, i10 + iMax, i11 + iMax2);
    }

    private a1 i(a1 a1Var) {
        c cVarF;
        if (a1Var.q()) {
            return a1Var;
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (m0.s(childAt) && (cVarF = ((f) childAt.getLayoutParams()).f()) != null) {
                a1Var = cVarF.onApplyWindowInsets(this, childAt, a1Var);
                if (a1Var.q()) {
                    break;
                }
            }
        }
        return a1Var;
    }

    private void t(View view, int i10, Rect rect, Rect rect2, f fVar, int i11, int i12) {
        int iB = j.b(P(fVar.f1870c), i10);
        int iB2 = j.b(Q(fVar.f1871d), i10);
        int i13 = iB & 7;
        int i14 = iB & 112;
        int i15 = iB2 & 7;
        int i16 = iB2 & 112;
        int iWidth = i15 != 1 ? i15 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int iHeight = i16 != 16 ? i16 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i13 == 1) {
            iWidth -= i11 / 2;
        } else if (i13 != 5) {
            iWidth -= i11;
        }
        if (i14 == 16) {
            iHeight -= i12 / 2;
        } else if (i14 != 80) {
            iHeight -= i12;
        }
        rect2.set(iWidth, iHeight, i11 + iWidth, i12 + iHeight);
    }

    private int u(int i10) {
        int[] iArr = this.f1854m;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i10);
            return 0;
        }
        if (i10 >= 0 && i10 < iArr.length) {
            return iArr[i10];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i10 + " out of range for " + this);
        return 0;
    }

    private void x(List list) {
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i10 = childCount - 1; i10 >= 0; i10--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i10) : i10));
        }
        Comparator comparator = A;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private boolean y(View view) {
        return this.f1846b.j(view);
    }

    void E(View view, int i10) {
        c cVarF;
        f fVar = (f) view.getLayoutParams();
        if (fVar.f1878k != null) {
            Rect rectE = e();
            Rect rectE2 = e();
            Rect rectE3 = e();
            r(fVar.f1878k, rectE);
            o(view, false, rectE2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            t(view, i10, rectE, rectE3, fVar, measuredWidth, measuredHeight);
            boolean z10 = (rectE3.left == rectE2.left && rectE3.top == rectE2.top) ? false : true;
            h(fVar, rectE3, measuredWidth, measuredHeight);
            int i11 = rectE3.left - rectE2.left;
            int i12 = rectE3.top - rectE2.top;
            if (i11 != 0) {
                m0.T(view, i11);
            }
            if (i12 != 0) {
                m0.U(view, i12);
            }
            if (z10 && (cVarF = fVar.f()) != null) {
                cVarF.onDependentViewChanged(this, view, fVar.f1878k);
            }
            M(rectE);
            M(rectE2);
            M(rectE3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void F(int r18) {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.F(int):void");
    }

    public void G(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        if (fVar.a()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        View view2 = fVar.f1878k;
        if (view2 != null) {
            B(view, view2, i10);
            return;
        }
        int i11 = fVar.f1872e;
        if (i11 >= 0) {
            C(view, i11, i10);
        } else {
            A(view, i10);
        }
    }

    public void H(View view, int i10, int i11, int i12, int i13) {
        measureChildWithMargins(view, i10, i11, i12, i13);
    }

    void L(View view, Rect rect) {
        ((f) view.getLayoutParams()).q(rect);
    }

    void N() {
        if (this.f1853l && this.f1857p != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1857p);
        }
        this.f1858q = false;
    }

    final a1 U(a1 a1Var) {
        if (c0.c.a(this.f1859r, a1Var)) {
            return a1Var;
        }
        this.f1859r = a1Var;
        boolean z10 = false;
        boolean z11 = a1Var != null && a1Var.m() > 0;
        this.f1860s = z11;
        if (!z11 && getBackground() == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        a1 a1VarI = i(a1Var);
        requestLayout();
        return a1VarI;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j10) {
        f fVar = (f) view.getLayoutParams();
        c cVar = fVar.f1868a;
        if (cVar != null) {
            float scrimOpacity = cVar.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.f1849h == null) {
                    this.f1849h = new Paint();
                }
                this.f1849h.setColor(fVar.f1868a.getScrimColor(this, view));
                this.f1849h.setAlpha(g(Math.round(scrimOpacity * 255.0f), 0, 255));
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f1849h);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1861t;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    void f() {
        if (this.f1853l) {
            if (this.f1857p == null) {
                this.f1857p = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1857p);
        }
        this.f1858q = true;
    }

    final List<View> getDependencySortedChildren() {
        K();
        return Collections.unmodifiableList(this.f1845a);
    }

    public final a1 getLastWindowInsets() {
        return this.f1859r;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f1864w.a();
    }

    public Drawable getStatusBarBackground() {
        return this.f1861t;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    public void j(View view) {
        List listG = this.f1846b.g(view);
        if (listG == null || listG.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < listG.size(); i10++) {
            View view2 = (View) listG.get(i10);
            c cVarF = ((f) view2.getLayoutParams()).f();
            if (cVarF != null) {
                cVarF.onDependentViewChanged(this, view2, view);
            }
        }
    }

    void k() {
        int childCount = getChildCount();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= childCount) {
                break;
            }
            if (y(getChildAt(i10))) {
                z10 = true;
                break;
            }
            i10++;
        }
        if (z10 != this.f1858q) {
            if (z10) {
                f();
            } else {
                N();
            }
        }
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: l */
    public f generateDefaultLayoutParams() {
        return new f(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m */
    public f generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: n */
    public f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof f ? new f((f) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    void o(View view, boolean z10, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z10) {
            r(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        O(false);
        if (this.f1858q) {
            if (this.f1857p == null) {
                this.f1857p = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1857p);
        }
        if (this.f1859r == null && m0.s(this)) {
            m0.f0(this);
        }
        this.f1853l = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        O(false);
        if (this.f1858q && this.f1857p != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1857p);
        }
        View view = this.f1856o;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f1853l = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1860s || this.f1861t == null) {
            return;
        }
        a1 a1Var = this.f1859r;
        int iM = a1Var != null ? a1Var.m() : 0;
        if (iM > 0) {
            this.f1861t.setBounds(0, 0, getWidth(), iM);
            this.f1861t.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            O(true);
        }
        boolean zJ = J(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            O(true);
        }
        return zJ;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        c cVarF;
        int iV = m0.v(this);
        int size = this.f1845a.size();
        for (int i14 = 0; i14 < size; i14++) {
            View view = (View) this.f1845a.get(i14);
            if (view.getVisibility() != 8 && ((cVarF = ((f) view.getLayoutParams()).f()) == null || !cVarF.onLayoutChild(this, view, iV))) {
                G(view, iV);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00fd  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r31, int r32) {
        /*
            Method dump skipped, instruction units count: 393
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        c cVarF;
        int childCount = getChildCount();
        boolean zOnNestedFling = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(0) && (cVarF = fVar.f()) != null) {
                    zOnNestedFling |= cVarF.onNestedFling(this, childAt, view, f10, f11, z10);
                }
            }
        }
        if (zOnNestedFling) {
            F(1);
        }
        return zOnNestedFling;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f10, float f11) {
        c cVarF;
        int childCount = getChildCount();
        boolean zOnNestedPreFling = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(0) && (cVarF = fVar.f()) != null) {
                    zOnNestedPreFling |= cVarF.onNestedPreFling(this, childAt, view, f10, f11);
                }
            }
        }
        return zOnNestedPreFling;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        onNestedPreScroll(view, i10, i11, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        onNestedScroll(view, i10, i11, i12, i13, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        onNestedScrollAccepted(view, view2, i10, 0);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray sparseArray = savedState.f1865a;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id = childAt.getId();
            c cVarF = w(childAt).f();
            if (id != -1 && cVarF != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                cVarF.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id = childAt.getId();
            c cVarF = ((f) childAt.getLayoutParams()).f();
            if (id != -1 && cVarF != null && (parcelableOnSaveInstanceState = cVarF.onSaveInstanceState(this, childAt)) != null) {
                sparseArray.append(id, parcelableOnSaveInstanceState);
            }
        }
        savedState.f1865a = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return onStartNestedScroll(view, view2, i10, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0015 A[PHI: r3
      0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:34:0x0024, B:29:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0054  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.f1855n
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L17
            boolean r3 = r0.J(r1, r4)
            if (r3 == 0) goto L15
            goto L18
        L15:
            r6 = r5
            goto L2c
        L17:
            r3 = r5
        L18:
            android.view.View r6 = r0.f1855n
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$f r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$c r6 = r6.f()
            if (r6 == 0) goto L15
            android.view.View r7 = r0.f1855n
            boolean r6 = r6.onTouchEvent(r0, r7, r1)
        L2c:
            android.view.View r7 = r0.f1855n
            r8 = 0
            if (r7 != 0) goto L37
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L4a
        L37:
            if (r3 == 0) goto L4a
            long r11 = android.os.SystemClock.uptimeMillis()
            r15 = 0
            r16 = 0
            r13 = 3
            r14 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L4a:
            if (r8 == 0) goto L4f
            r8.recycle()
        L4f:
            if (r2 == r4) goto L54
            r1 = 3
            if (r2 != r1) goto L57
        L54:
            r0.O(r5)
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public List p(View view) {
        List listH = this.f1846b.h(view);
        this.f1848f.clear();
        if (listH != null) {
            this.f1848f.addAll(listH);
        }
        return this.f1848f;
    }

    public List q(View view) {
        List listG = this.f1846b.g(view);
        this.f1848f.clear();
        if (listG != null) {
            this.f1848f.addAll(listG);
        }
        return this.f1848f;
    }

    void r(View view, Rect rect) {
        androidx.coordinatorlayout.widget.b.a(this, view, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        c cVarF = ((f) view.getLayoutParams()).f();
        if (cVarF == null || !cVarF.onRequestChildRectangleOnScreen(this, view, rect, z10)) {
            return super.requestChildRectangleOnScreen(view, rect, z10);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        super.requestDisallowInterceptTouchEvent(z10);
        if (!z10 || this.f1852k) {
            return;
        }
        O(false);
        this.f1852k = true;
    }

    void s(View view, int i10, Rect rect, Rect rect2) {
        f fVar = (f) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        t(view, i10, rect, rect2, fVar, measuredWidth, measuredHeight);
        h(fVar, rect2, measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z10) {
        super.setFitsSystemWindows(z10);
        V();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1862u = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f1861t;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f1861t = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f1861t.setState(getDrawableState());
                }
                v.a.m(this.f1861t, m0.v(this));
                this.f1861t.setVisible(getVisibility() == 0, false);
                this.f1861t.setCallback(this);
            }
            m0.Z(this);
        }
    }

    public void setStatusBarBackgroundColor(int i10) {
        setStatusBarBackground(new ColorDrawable(i10));
    }

    public void setStatusBarBackgroundResource(int i10) {
        setStatusBarBackground(i10 != 0 ? r.a.e(getContext(), i10) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f1861t;
        if (drawable == null || drawable.isVisible() == z10) {
            return;
        }
        this.f1861t.setVisible(z10, false);
    }

    void v(View view, Rect rect) {
        rect.set(((f) view.getLayoutParams()).h());
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1861t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    f w(View view) {
        f fVar = (f) view.getLayoutParams();
        if (!fVar.f1869b) {
            if (view instanceof b) {
                c behavior = ((b) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                fVar.o(behavior);
                fVar.f1869b = true;
            } else {
                d dVar = null;
                for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    dVar = (d) superclass.getAnnotation(d.class);
                    if (dVar != null) {
                        break;
                    }
                }
                if (dVar != null) {
                    try {
                        fVar.o((c) dVar.value().getDeclaredConstructor(null).newInstance(null));
                    } catch (Exception e10) {
                        Log.e("CoordinatorLayout", "Default behavior class " + dVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e10);
                    }
                }
                fVar.f1869b = true;
            }
        }
        return fVar;
    }

    public boolean z(View view, int i10, int i11) {
        Rect rectE = e();
        r(view, rectE);
        try {
            return rectE.contains(i10, i11);
        } finally {
            M(rectE);
        }
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.coordinatorLayoutStyle);
    }

    @Override // androidx.core.view.x
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        c cVarF;
        int childCount = getChildCount();
        boolean z10 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(i12) && (cVarF = fVar.f()) != null) {
                    int[] iArr2 = this.f1850i;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    cVarF.onNestedPreScroll(this, childAt, view, i10, i11, iArr2, i12);
                    int[] iArr3 = this.f1850i;
                    iMax = i10 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.f1850i;
                    iMax2 = i11 > 0 ? Math.max(iMax2, iArr4[1]) : Math.min(iMax2, iArr4[1]);
                    z10 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z10) {
            F(1);
        }
    }

    @Override // androidx.core.view.x
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        onNestedScroll(view, i10, i11, i12, i13, 0, this.f1851j);
    }

    @Override // androidx.core.view.x
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        c cVarF;
        this.f1864w.c(view, view2, i10, i11);
        this.f1856o = view2;
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.j(i11) && (cVarF = fVar.f()) != null) {
                cVarF.onNestedScrollAccepted(this, childAt, view, view2, i10, i11);
            }
        }
    }

    @Override // androidx.core.view.x
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                c cVarF = fVar.f();
                if (cVarF != null) {
                    boolean zOnStartNestedScroll = cVarF.onStartNestedScroll(this, childAt, view, view2, i10, i11);
                    z10 |= zOnStartNestedScroll;
                    fVar.r(i11, zOnStartNestedScroll);
                } else {
                    fVar.r(i11, false);
                }
            }
        }
        return z10;
    }

    @Override // androidx.core.view.x
    public void onStopNestedScroll(View view, int i10) {
        this.f1864w.d(view, i10);
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.j(i10)) {
                c cVarF = fVar.f();
                if (cVarF != null) {
                    cVarF.onStopNestedScroll(this, childAt, view, i10);
                }
                fVar.l(i10);
                fVar.k();
            }
        }
        this.f1856o = null;
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i10);
        this.f1845a = new ArrayList();
        this.f1846b = new androidx.coordinatorlayout.widget.a();
        this.f1847c = new ArrayList();
        this.f1848f = new ArrayList();
        this.f1850i = new int[2];
        this.f1851j = new int[2];
        this.f1864w = new z(this);
        if (i10 == 0) {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, 0, R$style.Widget_Support_CoordinatorLayout);
        } else {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, i10, 0);
        }
        if (i10 == 0) {
            saveAttributeDataForStyleable(context, R$styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, 0, R$style.Widget_Support_CoordinatorLayout);
        } else {
            saveAttributeDataForStyleable(context, R$styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f1854m = resources.getIntArray(resourceId);
            float f10 = resources.getDisplayMetrics().density;
            int length = this.f1854m.length;
            for (int i11 = 0; i11 < length; i11++) {
                this.f1854m[i11] = (int) (r12[i11] * f10);
            }
        }
        this.f1861t = typedArrayObtainStyledAttributes.getDrawable(R$styleable.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        V();
        super.setOnHierarchyChangeListener(new e());
        if (m0.t(this) == 0) {
            m0.t0(this, 1);
        }
    }

    @Override // androidx.core.view.y
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        c cVarF;
        boolean z10;
        int iMin;
        int childCount = getChildCount();
        boolean z11 = false;
        int iMax = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(i14) && (cVarF = fVar.f()) != null) {
                    int[] iArr2 = this.f1850i;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    cVarF.onNestedScroll(this, childAt, view, i10, i11, i12, i13, i14, iArr2);
                    int[] iArr3 = this.f1850i;
                    iMax = i12 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    if (i13 > 0) {
                        z10 = true;
                        iMin = Math.max(i15, this.f1850i[1]);
                    } else {
                        z10 = true;
                        iMin = Math.min(i15, this.f1850i[1]);
                    }
                    i15 = iMin;
                    z11 = z10;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + i15;
        if (z11) {
            F(1);
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        SparseArray f1865a;

        static class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i10 = parcel.readInt();
            int[] iArr = new int[i10];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.f1865a = new SparseArray(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                this.f1865a.append(iArr[i11], parcelableArray[i11]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            SparseArray sparseArray = this.f1865a;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i11 = 0; i11 < size; i11++) {
                iArr[i11] = this.f1865a.keyAt(i11);
                parcelableArr[i11] = (Parcelable) this.f1865a.valueAt(i11);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i10);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class f extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a */
        c f1868a;

        /* JADX INFO: renamed from: b */
        boolean f1869b;

        /* JADX INFO: renamed from: c */
        public int f1870c;

        /* JADX INFO: renamed from: d */
        public int f1871d;

        /* JADX INFO: renamed from: e */
        public int f1872e;

        /* JADX INFO: renamed from: f */
        int f1873f;

        /* JADX INFO: renamed from: g */
        public int f1874g;

        /* JADX INFO: renamed from: h */
        public int f1875h;

        /* JADX INFO: renamed from: i */
        int f1876i;

        /* JADX INFO: renamed from: j */
        int f1877j;

        /* JADX INFO: renamed from: k */
        View f1878k;

        /* JADX INFO: renamed from: l */
        View f1879l;

        /* JADX INFO: renamed from: m */
        private boolean f1880m;

        /* JADX INFO: renamed from: n */
        private boolean f1881n;

        /* JADX INFO: renamed from: o */
        private boolean f1882o;

        /* JADX INFO: renamed from: p */
        private boolean f1883p;

        /* JADX INFO: renamed from: q */
        final Rect f1884q;

        /* JADX INFO: renamed from: r */
        Object f1885r;

        public f(int i10, int i11) {
            super(i10, i11);
            this.f1869b = false;
            this.f1870c = 0;
            this.f1871d = 0;
            this.f1872e = -1;
            this.f1873f = -1;
            this.f1874g = 0;
            this.f1875h = 0;
            this.f1884q = new Rect();
        }

        private void n(View view, CoordinatorLayout coordinatorLayout) {
            View viewFindViewById = coordinatorLayout.findViewById(this.f1873f);
            this.f1878k = viewFindViewById;
            if (viewFindViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f1879l = null;
                    this.f1878k = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1873f) + " to anchor view " + view);
            }
            if (viewFindViewById == coordinatorLayout) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                this.f1879l = null;
                this.f1878k = null;
                return;
            }
            for (ViewParent parent = viewFindViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (!coordinatorLayout.isInEditMode()) {
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    this.f1879l = null;
                    this.f1878k = null;
                    return;
                }
                if (parent instanceof View) {
                    viewFindViewById = parent;
                }
            }
            this.f1879l = viewFindViewById;
        }

        private boolean s(View view, int i10) {
            int iB = j.b(((f) view.getLayoutParams()).f1874g, i10);
            return iB != 0 && (j.b(this.f1875h, i10) & iB) == iB;
        }

        private boolean t(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f1878k.getId() != this.f1873f) {
                return false;
            }
            View view2 = this.f1878k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.f1879l = null;
                    this.f1878k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
            this.f1879l = view2;
            return true;
        }

        boolean a() {
            return this.f1878k == null && this.f1873f != -1;
        }

        boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            c cVar;
            return view2 == this.f1879l || s(view2, m0.v(coordinatorLayout)) || ((cVar = this.f1868a) != null && cVar.layoutDependsOn(coordinatorLayout, view, view2));
        }

        boolean c() {
            if (this.f1868a == null) {
                this.f1880m = false;
            }
            return this.f1880m;
        }

        View d(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f1873f == -1) {
                this.f1879l = null;
                this.f1878k = null;
                return null;
            }
            if (this.f1878k == null || !t(view, coordinatorLayout)) {
                n(view, coordinatorLayout);
            }
            return this.f1878k;
        }

        public int e() {
            return this.f1873f;
        }

        public c f() {
            return this.f1868a;
        }

        boolean g() {
            return this.f1883p;
        }

        Rect h() {
            return this.f1884q;
        }

        boolean i(CoordinatorLayout coordinatorLayout, View view) {
            boolean z10 = this.f1880m;
            if (z10) {
                return true;
            }
            c cVar = this.f1868a;
            boolean zBlocksInteractionBelow = (cVar != null ? cVar.blocksInteractionBelow(coordinatorLayout, view) : false) | z10;
            this.f1880m = zBlocksInteractionBelow;
            return zBlocksInteractionBelow;
        }

        boolean j(int i10) {
            if (i10 == 0) {
                return this.f1881n;
            }
            if (i10 != 1) {
                return false;
            }
            return this.f1882o;
        }

        void k() {
            this.f1883p = false;
        }

        void l(int i10) {
            r(i10, false);
        }

        void m() {
            this.f1880m = false;
        }

        public void o(c cVar) {
            c cVar2 = this.f1868a;
            if (cVar2 != cVar) {
                if (cVar2 != null) {
                    cVar2.onDetachedFromLayoutParams();
                }
                this.f1868a = cVar;
                this.f1885r = null;
                this.f1869b = true;
                if (cVar != null) {
                    cVar.onAttachedToLayoutParams(this);
                }
            }
        }

        void p(boolean z10) {
            this.f1883p = z10;
        }

        void q(Rect rect) {
            this.f1884q.set(rect);
        }

        void r(int i10, boolean z10) {
            if (i10 == 0) {
                this.f1881n = z10;
            } else {
                if (i10 != 1) {
                    return;
                }
                this.f1882o = z10;
            }
        }

        f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1869b = false;
            this.f1870c = 0;
            this.f1871d = 0;
            this.f1872e = -1;
            this.f1873f = -1;
            this.f1874g = 0;
            this.f1875h = 0;
            this.f1884q = new Rect();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout_Layout);
            this.f1870c = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f1873f = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1871d = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f1872e = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f1874g = typedArrayObtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f1875h = typedArrayObtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.CoordinatorLayout_Layout_layout_behavior);
            this.f1869b = zHasValue;
            if (zHasValue) {
                this.f1868a = CoordinatorLayout.I(context, attributeSet, typedArrayObtainStyledAttributes.getString(R$styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            typedArrayObtainStyledAttributes.recycle();
            c cVar = this.f1868a;
            if (cVar != null) {
                cVar.onAttachedToLayoutParams(this);
            }
        }

        public f(f fVar) {
            super((ViewGroup.MarginLayoutParams) fVar);
            this.f1869b = false;
            this.f1870c = 0;
            this.f1871d = 0;
            this.f1872e = -1;
            this.f1873f = -1;
            this.f1874g = 0;
            this.f1875h = 0;
            this.f1884q = new Rect();
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1869b = false;
            this.f1870c = 0;
            this.f1871d = 0;
            this.f1872e = -1;
            this.f1873f = -1;
            this.f1874g = 0;
            this.f1875h = 0;
            this.f1884q = new Rect();
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1869b = false;
            this.f1870c = 0;
            this.f1871d = 0;
            this.f1872e = -1;
            this.f1873f = -1;
            this.f1874g = 0;
            this.f1875h = 0;
            this.f1884q = new Rect();
        }
    }
}
