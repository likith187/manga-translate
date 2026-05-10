package androidx.drawerlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.a1;
import androidx.core.view.j;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.c;
import androidx.drawerlayout.R$attr;
import androidx.drawerlayout.R$dimen;
import androidx.drawerlayout.R$styleable;
import com.coui.appcompat.uiutil.UIUtil;
import d0.h;
import d0.k;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {
    private static final int[] O = {R.attr.colorPrimaryDark};
    static final int[] P = {R.attr.layout_gravity};
    static final boolean Q = true;
    private static final boolean R = true;
    private static boolean S = true;
    private Drawable A;
    private Drawable B;
    private CharSequence C;
    private CharSequence D;
    private Object E;
    private boolean F;
    private Drawable G;
    private Drawable H;
    private Drawable I;
    private Drawable J;
    private final ArrayList K;
    private Rect L;
    private Matrix M;
    private final k N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f2226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f2227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2228c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2229f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f2230h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Paint f2231i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.customview.widget.c f2232j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.customview.widget.c f2233k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final h f2234l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final h f2235m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f2236n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f2237o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f2238p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f2239q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f2240r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f2241s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f2242t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f2243u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private e f2244v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private List f2245w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f2246x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f2247y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Drawable f2248z;

    class a implements k {
        a() {
        }

        @Override // d0.k
        public boolean perform(View view, k.a aVar) {
            if (!DrawerLayout.this.A(view) || DrawerLayout.this.p(view) == 2) {
                return false;
            }
            DrawerLayout.this.d(view);
            return true;
        }
    }

    class b implements View.OnApplyWindowInsetsListener {
        b() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).M(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    class c extends androidx.core.view.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f2256a = new Rect();

        c() {
        }

        private void c(d0.h hVar, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (DrawerLayout.y(childAt)) {
                    hVar.c(childAt);
                }
            }
        }

        private void d(d0.h hVar, d0.h hVar2) {
            Rect rect = this.f2256a;
            hVar2.l(rect);
            hVar.d0(rect);
            hVar.K0(hVar2.U());
            hVar.v0(hVar2.v());
            hVar.h0(hVar2.o());
            hVar.l0(hVar2.r());
            hVar.n0(hVar2.I());
            hVar.q0(hVar2.L());
            hVar.b0(hVar2.D());
            hVar.D0(hVar2.R());
            hVar.a(hVar2.i());
        }

        @Override // androidx.core.view.a
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View viewN = DrawerLayout.this.n();
            if (viewN == null) {
                return true;
            }
            CharSequence charSequenceQ = DrawerLayout.this.q(DrawerLayout.this.r(viewN));
            if (charSequenceQ == null) {
                return true;
            }
            text.add(charSequenceQ);
            return true;
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
            if (DrawerLayout.Q) {
                super.onInitializeAccessibilityNodeInfo(view, hVar);
            } else {
                d0.h hVarX = d0.h.X(hVar);
                super.onInitializeAccessibilityNodeInfo(view, hVarX);
                hVar.F0(view);
                Object objB = m0.B(view);
                if (objB instanceof View) {
                    hVar.x0((View) objB);
                }
                d(hVar, hVarX);
                hVarX.Z();
                c(hVar, (ViewGroup) view);
            }
            hVar.h0("androidx.drawerlayout.widget.DrawerLayout");
            hVar.p0(false);
            hVar.q0(false);
            hVar.a0(h.a.f11462e);
            hVar.a0(h.a.f11463f);
        }

        @Override // androidx.core.view.a
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.Q || DrawerLayout.y(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    static final class d extends androidx.core.view.a {
        d() {
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
            super.onInitializeAccessibilityNodeInfo(view, hVar);
            if (DrawerLayout.y(view)) {
                return;
            }
            hVar.x0(null);
        }
    }

    public interface e {
        void a(int i10);

        void b(View view, float f10);

        void c(View view);

        void d(View view);
    }

    public static abstract class g implements e {
        @Override // androidx.drawerlayout.widget.DrawerLayout.e
        public void a(int i10) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.e
        public void b(View view, float f10) {
        }
    }

    private class h extends c.AbstractC0020c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f2262a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.customview.widget.c f2263b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f2264c = new a();

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                h.this.b();
            }
        }

        h(int i10) {
            this.f2262a = i10;
        }

        private void a() {
            View viewL = DrawerLayout.this.l(this.f2262a == 3 ? 5 : 3);
            if (viewL != null) {
                DrawerLayout.this.d(viewL);
            }
        }

        void b() {
            View viewL;
            int width;
            int iX = this.f2263b.x();
            boolean z10 = this.f2262a == 3;
            if (z10) {
                viewL = DrawerLayout.this.l(3);
                width = (viewL != null ? -viewL.getWidth() : 0) + iX;
            } else {
                viewL = DrawerLayout.this.l(5);
                width = DrawerLayout.this.getWidth() - iX;
            }
            if (viewL != null) {
                if (((!z10 || viewL.getLeft() >= width) && (z10 || viewL.getLeft() <= width)) || DrawerLayout.this.p(viewL) != 0) {
                    return;
                }
                f fVar = (f) viewL.getLayoutParams();
                this.f2263b.Q(viewL, width, viewL.getTop());
                fVar.f2260c = true;
                DrawerLayout.this.invalidate();
                a();
                DrawerLayout.this.b();
            }
        }

        public void c() {
            DrawerLayout.this.removeCallbacks(this.f2264c);
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            if (DrawerLayout.this.c(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i10, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i10, width));
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
        }

        public void d(androidx.customview.widget.c cVar) {
            this.f2263b = cVar;
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.this.B(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onEdgeDragStarted(int i10, int i11) {
            View viewL = (i10 & 1) == 1 ? DrawerLayout.this.l(3) : DrawerLayout.this.l(5);
            if (viewL == null || DrawerLayout.this.p(viewL) != 0) {
                return;
            }
            this.f2263b.b(viewL, i11);
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public boolean onEdgeLock(int i10) {
            return false;
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onEdgeTouched(int i10, int i11) {
            DrawerLayout.this.postDelayed(this.f2264c, 160L);
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewCaptured(View view, int i10) {
            ((f) view.getLayoutParams()).f2260c = false;
            a();
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewDragStateChanged(int i10) {
            DrawerLayout.this.R(i10, this.f2263b.v());
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            float width = (DrawerLayout.this.c(view, 3) ? i10 + r3 : DrawerLayout.this.getWidth() - i10) / view.getWidth();
            DrawerLayout.this.O(view, width);
            view.setVisibility(width == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewReleased(View view, float f10, float f11) {
            int i10;
            float fS = DrawerLayout.this.s(view);
            int width = view.getWidth();
            if (DrawerLayout.this.c(view, 3)) {
                i10 = (f10 > 0.0f || (f10 == 0.0f && fS > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f10 < 0.0f || (f10 == 0.0f && fS > 0.5f)) {
                    width2 -= width;
                }
                i10 = width2;
            }
            this.f2263b.O(i10, view.getTop());
            DrawerLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public boolean tryCaptureView(View view, int i10) {
            return DrawerLayout.this.B(view) && DrawerLayout.this.c(view, this.f2262a) && DrawerLayout.this.p(view) == 0;
        }
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    private boolean D(float f10, float f11, View view) {
        if (this.L == null) {
            this.L = new Rect();
        }
        view.getHitRect(this.L);
        return this.L.contains((int) f10, (int) f11);
    }

    private void E(Drawable drawable, int i10) {
        if (drawable == null || !v.a.h(drawable)) {
            return;
        }
        v.a.m(drawable, i10);
    }

    private Drawable J() {
        int iV = m0.v(this);
        if (iV == 0) {
            Drawable drawable = this.G;
            if (drawable != null) {
                E(drawable, iV);
                return this.G;
            }
        } else {
            Drawable drawable2 = this.H;
            if (drawable2 != null) {
                E(drawable2, iV);
                return this.H;
            }
        }
        return this.I;
    }

    private Drawable K() {
        int iV = m0.v(this);
        if (iV == 0) {
            Drawable drawable = this.H;
            if (drawable != null) {
                E(drawable, iV);
                return this.H;
            }
        } else {
            Drawable drawable2 = this.G;
            if (drawable2 != null) {
                E(drawable2, iV);
                return this.G;
            }
        }
        return this.J;
    }

    private void L() {
        if (R) {
            return;
        }
        this.A = J();
        this.B = K();
    }

    private void P(View view) {
        h.a aVar = h.a.f11482y;
        m0.c0(view, aVar.b());
        if (!A(view) || p(view) == 2) {
            return;
        }
        m0.e0(view, aVar, null, this.N);
    }

    private void Q(View view, boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((z10 || B(childAt)) && !(z10 && childAt == view)) {
                m0.t0(childAt, 4);
            } else {
                m0.t0(childAt, 1);
            }
        }
    }

    private boolean k(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent motionEventT = t(motionEvent, view);
            boolean zDispatchGenericMotionEvent = view.dispatchGenericMotionEvent(motionEventT);
            motionEventT.recycle();
            return zDispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean zDispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return zDispatchGenericMotionEvent2;
    }

    private MotionEvent t(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.M == null) {
                this.M = new Matrix();
            }
            matrix.invert(this.M);
            motionEventObtain.transform(this.M);
        }
        return motionEventObtain;
    }

    static String u(int i10) {
        return (i10 & 3) == 3 ? "LEFT" : (i10 & 5) == 5 ? "RIGHT" : Integer.toHexString(i10);
    }

    private static boolean v(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    private boolean w() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((f) getChildAt(i10).getLayoutParams()).f2260c) {
                return true;
            }
        }
        return false;
    }

    private boolean x() {
        return n() != null;
    }

    static boolean y(View view) {
        return (m0.t(view) == 4 || m0.t(view) == 2) ? false : true;
    }

    public boolean A(View view) {
        if (B(view)) {
            return (((f) view.getLayoutParams()).f2261d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    boolean B(View view) {
        int iB = j.b(((f) view.getLayoutParams()).f2258a, m0.v(view));
        return ((iB & 3) == 0 && (iB & 5) == 0) ? false : true;
    }

    public boolean C(View view) {
        if (B(view)) {
            return ((f) view.getLayoutParams()).f2259b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    void F(View view, float f10) {
        float fS = s(view);
        float width = view.getWidth();
        int i10 = ((int) (width * f10)) - ((int) (fS * width));
        if (!c(view, 3)) {
            i10 = -i10;
        }
        view.offsetLeftAndRight(i10);
        O(view, f10);
    }

    public void G(View view) {
        H(view, true);
    }

    public void H(View view, boolean z10) {
        if (!B(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        f fVar = (f) view.getLayoutParams();
        if (this.f2238p) {
            fVar.f2259b = 1.0f;
            fVar.f2261d = 1;
            Q(view, true);
            P(view);
        } else if (z10) {
            fVar.f2261d |= 2;
            if (c(view, 3)) {
                this.f2232j.Q(view, 0, view.getTop());
            } else {
                this.f2233k.Q(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            F(view, 1.0f);
            R(0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    public void I(e eVar) {
        List list;
        if (eVar == null || (list = this.f2245w) == null) {
            return;
        }
        list.remove(eVar);
    }

    public void M(Object obj, boolean z10) {
        this.E = obj;
        this.F = z10;
        setWillNotDraw(!z10 && getBackground() == null);
        requestLayout();
    }

    public void N(int i10, int i11) {
        View viewL;
        int iB = j.b(i11, m0.v(this));
        if (i11 == 3) {
            this.f2239q = i10;
        } else if (i11 == 5) {
            this.f2240r = i10;
        } else if (i11 == 8388611) {
            this.f2241s = i10;
        } else if (i11 == 8388613) {
            this.f2242t = i10;
        }
        if (i10 != 0) {
            (iB == 3 ? this.f2232j : this.f2233k).a();
        }
        if (i10 != 1) {
            if (i10 == 2 && (viewL = l(iB)) != null) {
                G(viewL);
                return;
            }
            return;
        }
        View viewL2 = l(iB);
        if (viewL2 != null) {
            d(viewL2);
        }
    }

    void O(View view, float f10) {
        f fVar = (f) view.getLayoutParams();
        if (f10 == fVar.f2259b) {
            return;
        }
        fVar.f2259b = f10;
        j(view, f10);
    }

    void R(int i10, View view) {
        int i11;
        int iA = this.f2232j.A();
        int iA2 = this.f2233k.A();
        if (iA == 1 || iA2 == 1) {
            i11 = 1;
        } else {
            i11 = 2;
            if (iA != 2 && iA2 != 2) {
                i11 = 0;
            }
        }
        if (view != null && i10 == 0) {
            float f10 = ((f) view.getLayoutParams()).f2259b;
            if (f10 == 0.0f) {
                h(view);
            } else if (f10 == 1.0f) {
                i(view);
            }
        }
        if (i11 != this.f2236n) {
            this.f2236n = i11;
            List list = this.f2245w;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((e) this.f2245w.get(size)).a(i11);
                }
            }
        }
    }

    public void a(e eVar) {
        if (eVar == null) {
            return;
        }
        if (this.f2245w == null) {
            this.f2245w = new ArrayList();
        }
        this.f2245w.add(eVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i10, int i11) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (!B(childAt)) {
                this.K.add(childAt);
            } else if (A(childAt)) {
                childAt.addFocusables(arrayList, i10, i11);
                z10 = true;
            }
        }
        if (!z10) {
            int size = this.K.size();
            for (int i13 = 0; i13 < size; i13++) {
                View view = (View) this.K.get(i13);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i10, i11);
                }
            }
        }
        this.K.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (m() != null || B(view)) {
            m0.t0(view, 4);
        } else {
            m0.t0(view, 1);
        }
        if (Q) {
            return;
        }
        m0.j0(view, this.f2226a);
    }

    void b() {
        if (this.f2243u) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            getChildAt(i10).dispatchTouchEvent(motionEventObtain);
        }
        motionEventObtain.recycle();
        this.f2243u = true;
    }

    boolean c(View view, int i10) {
        return (r(view) & i10) == i10;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < childCount; i10++) {
            fMax = Math.max(fMax, ((f) getChildAt(i10).getLayoutParams()).f2259b);
        }
        this.f2230h = fMax;
        boolean zM = this.f2232j.m(true);
        boolean zM2 = this.f2233k.m(true);
        if (zM || zM2) {
            m0.Z(this);
        }
    }

    public void d(View view) {
        e(view, true);
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f2230h <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        for (int i10 = childCount - 1; i10 >= 0; i10--) {
            View childAt = getChildAt(i10);
            if (D(x10, y10, childAt) && !z(childAt) && k(motionEvent, childAt)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j10) {
        int height = getHeight();
        boolean z10 = z(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i10 = 0;
        if (z10) {
            int childCount = getChildCount();
            int i11 = 0;
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (childAt != view && childAt.getVisibility() == 0 && v(childAt) && B(childAt) && childAt.getHeight() >= height) {
                    if (c(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i11) {
                            i11 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i11, 0, width, getHeight());
            i10 = i11;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j10);
        canvas.restoreToCount(iSave);
        float f10 = this.f2230h;
        if (f10 > 0.0f && z10) {
            this.f2231i.setColor((this.f2229f & UIUtil.CONSTANT_COLOR_MASK) | (((int) ((((-16777216) & r2) >>> 24) * f10)) << 24));
            canvas.drawRect(i10, 0.0f, width, getHeight(), this.f2231i);
        } else if (this.A != null && c(view, 3)) {
            int intrinsicWidth = this.A.getIntrinsicWidth();
            int right2 = view.getRight();
            float fMax = Math.max(0.0f, Math.min(right2 / this.f2232j.x(), 1.0f));
            this.A.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.A.setAlpha((int) (fMax * 255.0f));
            this.A.draw(canvas);
        } else if (this.B != null && c(view, 5)) {
            int intrinsicWidth2 = this.B.getIntrinsicWidth();
            int left2 = view.getLeft();
            float fMax2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f2233k.x(), 1.0f));
            this.B.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.B.setAlpha((int) (fMax2 * 255.0f));
            this.B.draw(canvas);
        }
        return zDrawChild;
    }

    public void e(View view, boolean z10) {
        if (!B(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        f fVar = (f) view.getLayoutParams();
        if (this.f2238p) {
            fVar.f2259b = 0.0f;
            fVar.f2261d = 0;
        } else if (z10) {
            fVar.f2261d |= 4;
            if (c(view, 3)) {
                this.f2232j.Q(view, -view.getWidth(), view.getTop());
            } else {
                this.f2233k.Q(view, getWidth(), view.getTop());
            }
        } else {
            F(view, 0.0f);
            R(0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    public void f() {
        g(false);
    }

    void g(boolean z10) {
        int childCount = getChildCount();
        boolean zQ = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            f fVar = (f) childAt.getLayoutParams();
            if (B(childAt) && (!z10 || fVar.f2260c)) {
                zQ |= c(childAt, 3) ? this.f2232j.Q(childAt, -childAt.getWidth(), childAt.getTop()) : this.f2233k.Q(childAt, getWidth(), childAt.getTop());
                fVar.f2260c = false;
            }
        }
        this.f2234l.c();
        this.f2235m.c();
        if (zQ) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof f ? new f((f) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    public float getDrawerElevation() {
        if (R) {
            return this.f2227b;
        }
        return 0.0f;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f2248z;
    }

    void h(View view) {
        View rootView;
        f fVar = (f) view.getLayoutParams();
        if ((fVar.f2261d & 1) == 1) {
            fVar.f2261d = 0;
            List list = this.f2245w;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((e) this.f2245w.get(size)).d(view);
                }
            }
            Q(view, false);
            P(view);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    void i(View view) {
        f fVar = (f) view.getLayoutParams();
        if ((fVar.f2261d & 1) == 0) {
            fVar.f2261d = 1;
            List list = this.f2245w;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((e) this.f2245w.get(size)).c(view);
                }
            }
            Q(view, true);
            P(view);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    void j(View view, float f10) {
        List list = this.f2245w;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((e) this.f2245w.get(size)).b(view, f10);
            }
        }
    }

    View l(int i10) {
        int iB = j.b(i10, m0.v(this)) & 7;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if ((r(childAt) & 7) == iB) {
                return childAt;
            }
        }
        return null;
    }

    View m() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((((f) childAt.getLayoutParams()).f2261d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    View n() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (B(childAt) && C(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    public int o(int i10) {
        int iV = m0.v(this);
        if (i10 == 3) {
            int i11 = this.f2239q;
            if (i11 != 3) {
                return i11;
            }
            int i12 = iV == 0 ? this.f2241s : this.f2242t;
            if (i12 != 3) {
                return i12;
            }
            return 0;
        }
        if (i10 == 5) {
            int i13 = this.f2240r;
            if (i13 != 3) {
                return i13;
            }
            int i14 = iV == 0 ? this.f2242t : this.f2241s;
            if (i14 != 3) {
                return i14;
            }
            return 0;
        }
        if (i10 == 8388611) {
            int i15 = this.f2241s;
            if (i15 != 3) {
                return i15;
            }
            int i16 = iV == 0 ? this.f2239q : this.f2240r;
            if (i16 != 3) {
                return i16;
            }
            return 0;
        }
        if (i10 != 8388613) {
            return 0;
        }
        int i17 = this.f2242t;
        if (i17 != 3) {
            return i17;
        }
        int i18 = iV == 0 ? this.f2240r : this.f2239q;
        if (i18 != 3) {
            return i18;
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2238p = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2238p = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.F || this.f2248z == null) {
            return;
        }
        Object obj = this.E;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f2248z.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f2248z.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getActionMasked()
            androidx.customview.widget.c r1 = r6.f2232j
            boolean r1 = r1.P(r7)
            androidx.customview.widget.c r2 = r6.f2233k
            boolean r2 = r2.P(r7)
            r1 = r1 | r2
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L38
            if (r0 == r2) goto L31
            r7 = 2
            r4 = 3
            if (r0 == r7) goto L1e
            if (r0 == r4) goto L31
            goto L36
        L1e:
            androidx.customview.widget.c r7 = r6.f2232j
            boolean r7 = r7.d(r4)
            if (r7 == 0) goto L36
            androidx.drawerlayout.widget.DrawerLayout$h r7 = r6.f2234l
            r7.c()
            androidx.drawerlayout.widget.DrawerLayout$h r7 = r6.f2235m
            r7.c()
            goto L36
        L31:
            r6.g(r2)
            r6.f2243u = r3
        L36:
            r7 = r3
            goto L60
        L38:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.f2246x = r0
            r6.f2247y = r7
            float r4 = r6.f2230h
            r5 = 0
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L5d
            androidx.customview.widget.c r4 = r6.f2232j
            int r0 = (int) r0
            int r7 = (int) r7
            android.view.View r7 = r4.t(r0, r7)
            if (r7 == 0) goto L5d
            boolean r7 = r6.z(r7)
            if (r7 == 0) goto L5d
            r7 = r2
            goto L5e
        L5d:
            r7 = r3
        L5e:
            r6.f2243u = r3
        L60:
            if (r1 != 0) goto L70
            if (r7 != 0) goto L70
            boolean r7 = r6.w()
            if (r7 != 0) goto L70
            boolean r6 = r6.f2243u
            if (r6 == 0) goto L6f
            goto L70
        L6f:
            r2 = r3
        L70:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 != 4 || !x()) {
            return super.onKeyDown(i10, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            return super.onKeyUp(i10, keyEvent);
        }
        View viewN = n();
        if (viewN != null && p(viewN) == 0) {
            f();
        }
        return viewN != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        WindowInsets rootWindowInsets;
        float f10;
        int i14;
        boolean z11 = true;
        this.f2237o = true;
        int i15 = i12 - i10;
        int childCount = getChildCount();
        int i16 = 0;
        while (i16 < childCount) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (z(childAt)) {
                    int i17 = ((ViewGroup.MarginLayoutParams) fVar).leftMargin;
                    childAt.layout(i17, ((ViewGroup.MarginLayoutParams) fVar).topMargin, childAt.getMeasuredWidth() + i17, ((ViewGroup.MarginLayoutParams) fVar).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (c(childAt, 3)) {
                        float f11 = measuredWidth;
                        i14 = (-measuredWidth) + ((int) (fVar.f2259b * f11));
                        f10 = (measuredWidth + i14) / f11;
                    } else {
                        float f12 = measuredWidth;
                        f10 = (i15 - r11) / f12;
                        i14 = i15 - ((int) (fVar.f2259b * f12));
                    }
                    boolean z12 = f10 != fVar.f2259b ? z11 : false;
                    int i18 = fVar.f2258a & 112;
                    if (i18 == 16) {
                        int i19 = i13 - i11;
                        int i20 = (i19 - measuredHeight) / 2;
                        int i21 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                        if (i20 < i21) {
                            i20 = i21;
                        } else {
                            int i22 = i20 + measuredHeight;
                            int i23 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                            if (i22 > i19 - i23) {
                                i20 = (i19 - i23) - measuredHeight;
                            }
                        }
                        childAt.layout(i14, i20, measuredWidth + i14, measuredHeight + i20);
                    } else if (i18 != 80) {
                        int i24 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                        childAt.layout(i14, i24, measuredWidth + i14, measuredHeight + i24);
                    } else {
                        int i25 = i13 - i11;
                        childAt.layout(i14, (i25 - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i14, i25 - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
                    }
                    if (z12) {
                        O(childAt, f10);
                    }
                    int i26 = fVar.f2259b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i26) {
                        childAt.setVisibility(i26);
                    }
                }
            }
            i16++;
            z11 = true;
        }
        if (S && (rootWindowInsets = getRootWindowInsets()) != null) {
            u.e eVarI = a1.y(rootWindowInsets).i();
            androidx.customview.widget.c cVar = this.f2232j;
            cVar.L(Math.max(cVar.w(), eVarI.f15807a));
            androidx.customview.widget.c cVar2 = this.f2233k;
            cVar2.L(Math.max(cVar2.w(), eVarI.f15809c));
        }
        this.f2237o = false;
        this.f2238p = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode == 0) {
                size = 300;
            }
            if (mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        boolean z10 = this.E != null && m0.s(this);
        int iV = m0.v(this);
        int childCount = getChildCount();
        boolean z11 = false;
        boolean z12 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (z10) {
                    int iB = j.b(fVar.f2258a, iV);
                    if (m0.s(childAt)) {
                        WindowInsets windowInsetsReplaceSystemWindowInsets = (WindowInsets) this.E;
                        if (iB == 3) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        } else if (iB == 5) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        }
                        childAt.dispatchApplyWindowInsets(windowInsetsReplaceSystemWindowInsets);
                    } else {
                        WindowInsets windowInsetsReplaceSystemWindowInsets2 = (WindowInsets) this.E;
                        if (iB == 3) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        } else if (iB == 5) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) fVar).topMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (z(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) fVar).leftMargin) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) fVar).topMargin) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin, 1073741824));
                } else {
                    if (!B(childAt)) {
                        throw new IllegalStateException("Child " + childAt + " at index " + i12 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    if (R) {
                        float fR = m0.r(childAt);
                        float f10 = this.f2227b;
                        if (fR != f10) {
                            m0.r0(childAt, f10);
                        }
                    }
                    int iR = r(childAt) & 7;
                    boolean z13 = iR == 3;
                    if ((z13 && z11) || (!z13 && z12)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + u(iR) + " but this DrawerLayout already has a drawer view along that edge");
                    }
                    if (z13) {
                        z11 = true;
                    } else {
                        z12 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i10, this.f2228c + ((ViewGroup.MarginLayoutParams) fVar).leftMargin + ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((ViewGroup.MarginLayoutParams) fVar).width), ViewGroup.getChildMeasureSpec(i11, ((ViewGroup.MarginLayoutParams) fVar).topMargin + ((ViewGroup.MarginLayoutParams) fVar).bottomMargin, ((ViewGroup.MarginLayoutParams) fVar).height));
                }
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View viewL;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i10 = savedState.f2249a;
        if (i10 != 0 && (viewL = l(i10)) != null) {
            G(viewL);
        }
        int i11 = savedState.f2250b;
        if (i11 != 3) {
            N(i11, 3);
        }
        int i12 = savedState.f2251c;
        if (i12 != 3) {
            N(i12, 5);
        }
        int i13 = savedState.f2252f;
        if (i13 != 3) {
            N(i13, 8388611);
        }
        int i14 = savedState.f2253h;
        if (i14 != 3) {
            N(i14, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        L();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            f fVar = (f) getChildAt(i10).getLayoutParams();
            int i11 = fVar.f2261d;
            boolean z10 = i11 == 1;
            boolean z11 = i11 == 2;
            if (z10 || z11) {
                savedState.f2249a = fVar.f2258a;
                break;
            }
        }
        savedState.f2250b = this.f2239q;
        savedState.f2251c = this.f2240r;
        savedState.f2252f = this.f2241s;
        savedState.f2253h = this.f2242t;
        return savedState;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            androidx.customview.widget.c r0 = r6.f2232j
            r0.F(r7)
            androidx.customview.widget.c r0 = r6.f2233k
            r0.F(r7)
            int r0 = r7.getAction()
            r0 = r0 & 255(0xff, float:3.57E-43)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L5f
            if (r0 == r2) goto L20
            r7 = 3
            if (r0 == r7) goto L1a
            goto L6d
        L1a:
            r6.g(r2)
            r6.f2243u = r1
            goto L6d
        L20:
            float r0 = r7.getX()
            float r7 = r7.getY()
            androidx.customview.widget.c r3 = r6.f2232j
            int r4 = (int) r0
            int r5 = (int) r7
            android.view.View r3 = r3.t(r4, r5)
            if (r3 == 0) goto L5a
            boolean r3 = r6.z(r3)
            if (r3 == 0) goto L5a
            float r3 = r6.f2246x
            float r0 = r0 - r3
            float r3 = r6.f2247y
            float r7 = r7 - r3
            androidx.customview.widget.c r3 = r6.f2232j
            int r3 = r3.z()
            float r0 = r0 * r0
            float r7 = r7 * r7
            float r0 = r0 + r7
            int r3 = r3 * r3
            float r7 = (float) r3
            int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r7 >= 0) goto L5a
            android.view.View r7 = r6.m()
            if (r7 == 0) goto L5a
            int r7 = r6.p(r7)
            r0 = 2
            if (r7 != r0) goto L5b
        L5a:
            r1 = r2
        L5b:
            r6.g(r1)
            goto L6d
        L5f:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.f2246x = r0
            r6.f2247y = r7
            r6.f2243u = r1
        L6d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public int p(View view) {
        if (B(view)) {
            return o(((f) view.getLayoutParams()).f2258a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public CharSequence q(int i10) {
        int iB = j.b(i10, m0.v(this));
        if (iB == 3) {
            return this.C;
        }
        if (iB == 5) {
            return this.D;
        }
        return null;
    }

    int r(View view) {
        return j.b(((f) view.getLayoutParams()).f2258a, m0.v(this));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        super.requestDisallowInterceptTouchEvent(z10);
        if (z10) {
            g(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f2237o) {
            return;
        }
        super.requestLayout();
    }

    float s(View view) {
        return ((f) view.getLayoutParams()).f2259b;
    }

    public void setDrawerElevation(float f10) {
        this.f2227b = f10;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (B(childAt)) {
                m0.r0(childAt, this.f2227b);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(e eVar) {
        e eVar2 = this.f2244v;
        if (eVar2 != null) {
            I(eVar2);
        }
        if (eVar != null) {
            a(eVar);
        }
        this.f2244v = eVar;
    }

    public void setDrawerLockMode(int i10) {
        N(i10, 3);
        N(i10, 5);
    }

    public void setScrimColor(int i10) {
        this.f2229f = i10;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f2248z = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i10) {
        this.f2248z = new ColorDrawable(i10);
        invalidate();
    }

    boolean z(View view) {
        return ((f) view.getLayoutParams()).f2258a == 0;
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.drawerLayoutStyle);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f2226a = new d();
        this.f2229f = -1728053248;
        this.f2231i = new Paint();
        this.f2238p = true;
        this.f2239q = 3;
        this.f2240r = 3;
        this.f2241s = 3;
        this.f2242t = 3;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.N = new a();
        setDescendantFocusability(262144);
        float f10 = getResources().getDisplayMetrics().density;
        this.f2228c = (int) ((64.0f * f10) + 0.5f);
        float f11 = f10 * 400.0f;
        h hVar = new h(3);
        this.f2234l = hVar;
        h hVar2 = new h(5);
        this.f2235m = hVar2;
        androidx.customview.widget.c cVarN = androidx.customview.widget.c.n(this, 1.0f, hVar);
        this.f2232j = cVarN;
        cVarN.M(1);
        cVarN.N(f11);
        hVar.d(cVarN);
        androidx.customview.widget.c cVarN2 = androidx.customview.widget.c.n(this, 1.0f, hVar2);
        this.f2233k = cVarN2;
        cVarN2.M(2);
        cVarN2.N(f11);
        hVar2.d(cVarN2);
        setFocusableInTouchMode(true);
        m0.t0(this, 1);
        m0.j0(this, new c());
        setMotionEventSplittingEnabled(false);
        if (m0.s(this)) {
            setOnApplyWindowInsetsListener(new b());
            setSystemUiVisibility(1280);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(O);
            try {
                this.f2248z = typedArrayObtainStyledAttributes.getDrawable(0);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.DrawerLayout, i10, 0);
        try {
            if (typedArrayObtainStyledAttributes2.hasValue(R$styleable.DrawerLayout_elevation)) {
                this.f2227b = typedArrayObtainStyledAttributes2.getDimension(R$styleable.DrawerLayout_elevation, 0.0f);
            } else {
                this.f2227b = getResources().getDimension(R$dimen.def_drawer_elevation);
            }
            typedArrayObtainStyledAttributes2.recycle();
            this.K = new ArrayList();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public void setStatusBarBackground(int i10) {
        this.f2248z = i10 != 0 ? r.a.e(getContext(), i10) : null;
        invalidate();
    }

    public static class f extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f2259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f2260c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2261d;

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2258a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.P);
            this.f2258a = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public f(int i10, int i11) {
            super(i10, i11);
            this.f2258a = 0;
        }

        public f(f fVar) {
            super((ViewGroup.MarginLayoutParams) fVar);
            this.f2258a = 0;
            this.f2258a = fVar.f2258a;
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2258a = 0;
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2258a = 0;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2249a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2250b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2251c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f2252f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f2253h;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2249a = 0;
            this.f2249a = parcel.readInt();
            this.f2250b = parcel.readInt();
            this.f2251c = parcel.readInt();
            this.f2252f = parcel.readInt();
            this.f2253h = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2249a);
            parcel.writeInt(this.f2250b);
            parcel.writeInt(this.f2251c);
            parcel.writeInt(this.f2252f);
            parcel.writeInt(this.f2253h);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f2249a = 0;
        }
    }
}
