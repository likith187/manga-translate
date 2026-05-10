package androidx.core.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.R$id;
import androidx.core.view.a;
import androidx.core.view.z0;
import com.oplus.aiunit.core.ConfigPackage;
import d0.h;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class m0 {

    /* JADX INFO: renamed from: a */
    private static WeakHashMap f2085a;

    /* JADX INFO: renamed from: b */
    private static final int[] f2086b = {R$id.accessibility_custom_action_0, R$id.accessibility_custom_action_1, R$id.accessibility_custom_action_2, R$id.accessibility_custom_action_3, R$id.accessibility_custom_action_4, R$id.accessibility_custom_action_5, R$id.accessibility_custom_action_6, R$id.accessibility_custom_action_7, R$id.accessibility_custom_action_8, R$id.accessibility_custom_action_9, R$id.accessibility_custom_action_10, R$id.accessibility_custom_action_11, R$id.accessibility_custom_action_12, R$id.accessibility_custom_action_13, R$id.accessibility_custom_action_14, R$id.accessibility_custom_action_15, R$id.accessibility_custom_action_16, R$id.accessibility_custom_action_17, R$id.accessibility_custom_action_18, R$id.accessibility_custom_action_19, R$id.accessibility_custom_action_20, R$id.accessibility_custom_action_21, R$id.accessibility_custom_action_22, R$id.accessibility_custom_action_23, R$id.accessibility_custom_action_24, R$id.accessibility_custom_action_25, R$id.accessibility_custom_action_26, R$id.accessibility_custom_action_27, R$id.accessibility_custom_action_28, R$id.accessibility_custom_action_29, R$id.accessibility_custom_action_30, R$id.accessibility_custom_action_31};

    /* JADX INFO: renamed from: c */
    private static final b0 f2087c = new b0() { // from class: androidx.core.view.l0
    };

    /* JADX INFO: renamed from: d */
    private static final e f2088d = new e();

    class a extends f {
        a(int i10, Class cls, int i11) {
            super(i10, cls, i11);
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: h */
        public Boolean c(View view) {
            return Boolean.valueOf(l.c(view));
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: i */
        public void d(View view, Boolean bool) {
            l.f(view, bool.booleanValue());
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: j */
        public boolean g(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    class b extends f {
        b(int i10, Class cls, int i11, int i12) {
            super(i10, cls, i11, i12);
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: h */
        public CharSequence c(View view) {
            return l.a(view);
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: i */
        public void d(View view, CharSequence charSequence) {
            l.e(view, charSequence);
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: j */
        public boolean g(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    class c extends f {
        c(int i10, Class cls, int i11, int i12) {
            super(i10, cls, i11, i12);
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: h */
        public CharSequence c(View view) {
            return n.b(view);
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: i */
        public void d(View view, CharSequence charSequence) {
            n.d(view, charSequence);
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: j */
        public boolean g(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    class d extends f {
        d(int i10, Class cls, int i11) {
            super(i10, cls, i11);
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: h */
        public Boolean c(View view) {
            return Boolean.valueOf(l.b(view));
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: i */
        public void d(View view, Boolean bool) {
            l.d(view, bool.booleanValue());
        }

        @Override // androidx.core.view.m0.f
        /* JADX INFO: renamed from: j */
        public boolean g(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    static class e implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a */
        private final WeakHashMap f2089a = new WeakHashMap();

        e() {
        }

        private void b(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        private void d(View view) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }

        void a(View view) {
            this.f2089a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(this);
            if (view.isAttachedToWindow()) {
                b(view);
            }
        }

        void c(View view) {
            this.f2089a.remove(view);
            view.removeOnAttachStateChangeListener(this);
            d(view);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            b(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    static abstract class f {

        /* JADX INFO: renamed from: a */
        private final int f2090a;

        /* JADX INFO: renamed from: b */
        private final Class f2091b;

        /* JADX INFO: renamed from: c */
        private final int f2092c;

        /* JADX INFO: renamed from: d */
        private final int f2093d;

        f(int i10, Class cls, int i11) {
            this(i10, cls, 0, i11);
        }

        private boolean b() {
            return Build.VERSION.SDK_INT >= this.f2092c;
        }

        boolean a(Boolean bool, Boolean bool2) {
            return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
        }

        abstract Object c(View view);

        abstract void d(View view, Object obj);

        Object e(View view) {
            if (b()) {
                return c(view);
            }
            Object tag = view.getTag(this.f2090a);
            if (this.f2091b.isInstance(tag)) {
                return tag;
            }
            return null;
        }

        void f(View view, Object obj) {
            if (b()) {
                d(view, obj);
            } else if (g(e(view), obj)) {
                m0.h(view);
                view.setTag(this.f2090a, obj);
                m0.S(view, this.f2093d);
            }
        }

        abstract boolean g(Object obj, Object obj2);

        f(int i10, Class cls, int i11, int i12) {
            this.f2090a = i10;
            this.f2091b = cls;
            this.f2093d = i11;
            this.f2092c = i12;
        }
    }

    static class g {
        static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        static void b(View view) {
            view.requestApplyInsets();
        }
    }

    private static class h {

        class a implements View.OnApplyWindowInsetsListener {

            /* JADX INFO: renamed from: a */
            a1 f2094a = null;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ View f2095b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ a0 f2096c;

            a(View view, a0 a0Var) {
                this.f2095b = view;
                this.f2096c = a0Var;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                a1 a1VarZ = a1.z(windowInsets, view);
                this.f2094a = a1VarZ;
                return this.f2096c.onApplyWindowInsets(view, a1VarZ).x();
            }
        }

        static a1 a(View view, a1 a1Var, Rect rect) {
            WindowInsets windowInsetsX = a1Var.x();
            if (windowInsetsX != null) {
                return a1.z(view.computeSystemWindowInsets(windowInsetsX, rect), view);
            }
            rect.setEmpty();
            return a1Var;
        }

        static ColorStateList b(View view) {
            return view.getBackgroundTintList();
        }

        static PorterDuff.Mode c(View view) {
            return view.getBackgroundTintMode();
        }

        static float d(View view) {
            return view.getElevation();
        }

        static String e(View view) {
            return view.getTransitionName();
        }

        static float f(View view) {
            return view.getTranslationZ();
        }

        static float g(View view) {
            return view.getZ();
        }

        static boolean h(View view) {
            return view.isNestedScrollingEnabled();
        }

        static void i(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        static void j(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        static void k(View view, float f10) {
            view.setElevation(f10);
        }

        static void l(View view, boolean z10) {
            view.setNestedScrollingEnabled(z10);
        }

        static void m(View view, a0 a0Var) {
            a aVar = a0Var != null ? new a(view, a0Var) : null;
            if (view.getTag(R$id.tag_compat_insets_dispatch) != null) {
                return;
            }
            if (aVar != null) {
                view.setOnApplyWindowInsetsListener(aVar);
            } else {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R$id.tag_window_insets_animation_callback));
            }
        }

        static void n(View view, String str) {
            view.setTransitionName(str);
        }

        static void o(View view, float f10) {
            view.setTranslationZ(f10);
        }

        static void p(View view, float f10) {
            view.setZ(f10);
        }

        static void q(View view) {
            view.stopNestedScroll();
        }
    }

    private static class i {
        public static a1 a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            a1 a1VarY = a1.y(rootWindowInsets);
            a1VarY.v(a1VarY);
            a1VarY.d(view.getRootView());
            return a1VarY;
        }

        static void b(View view, int i10, int i11) {
            view.setScrollIndicators(i10, i11);
        }
    }

    static class j {
        static void a(View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }
    }

    static class k {
        static int a(View view) {
            return view.getImportantForAutofill();
        }

        static void b(View view, int i10) {
            view.setImportantForAutofill(i10);
        }
    }

    static class l {
        static CharSequence a(View view) {
            return view.getAccessibilityPaneTitle();
        }

        static boolean b(View view) {
            return view.isAccessibilityHeading();
        }

        static boolean c(View view) {
            return view.isScreenReaderFocusable();
        }

        static void d(View view, boolean z10) {
            view.setAccessibilityHeading(z10);
        }

        static void e(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        static void f(View view, boolean z10) {
            view.setScreenReaderFocusable(z10);
        }
    }

    private static class m {
        static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        static void b(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10, int i11) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i10, i11);
        }
    }

    private static class n {
        static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        static CharSequence b(View view) {
            return view.getStateDescription();
        }

        public static c1 c(View view) {
            WindowInsetsController windowInsetsController = view.getWindowInsetsController();
            if (windowInsetsController != null) {
                return c1.f(windowInsetsController);
            }
            return null;
        }

        static void d(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    public static int A(View view) {
        return view.getPaddingStart();
    }

    public static void A0(View view, d0 d0Var) {
        j.a(view, (PointerIcon) (d0Var != null ? d0Var.a() : null));
    }

    public static ViewParent B(View view) {
        return view.getParentForAccessibility();
    }

    public static void B0(View view, int i10, int i11) {
        i.b(view, i10, i11);
    }

    public static a1 C(View view) {
        return i.a(view);
    }

    public static void C0(View view, CharSequence charSequence) {
        H0().f(view, charSequence);
    }

    public static CharSequence D(View view) {
        return (CharSequence) H0().e(view);
    }

    public static void D0(View view, String str) {
        h.n(view, str);
    }

    public static String E(View view) {
        return h.e(view);
    }

    public static void E0(View view, float f10) {
        h.o(view, f10);
    }

    public static float F(View view) {
        return h.f(view);
    }

    public static void F0(View view, z0.b bVar) {
        z0.d(view, bVar);
    }

    public static c1 G(View view) {
        return n.c(view);
    }

    public static void G0(View view, float f10) {
        h.p(view, f10);
    }

    public static int H(View view) {
        return view.getWindowSystemUiVisibility();
    }

    private static f H0() {
        return new c(R$id.tag_state_description, CharSequence.class, 64, 30);
    }

    public static float I(View view) {
        return h.g(view);
    }

    public static void I0(View view) {
        h.q(view);
    }

    public static boolean J(View view) {
        return k(view) != null;
    }

    public static boolean K(View view) {
        return view.hasOnClickListeners();
    }

    public static boolean L(View view) {
        return view.hasTransientState();
    }

    public static boolean M(View view) {
        Boolean bool = (Boolean) a().e(view);
        return bool != null && bool.booleanValue();
    }

    public static boolean N(View view) {
        return view.isAttachedToWindow();
    }

    public static boolean O(View view) {
        return view.isLaidOut();
    }

    public static boolean P(View view) {
        return h.h(view);
    }

    public static boolean Q(View view) {
        return view.isPaddingRelative();
    }

    public static boolean R(View view) {
        Boolean bool = (Boolean) i0().e(view);
        return bool != null && bool.booleanValue();
    }

    static void S(View view, int i10) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z10 = l(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z10) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z10 ? 32 : ConfigPackage.FRAME_SIZE_3);
                accessibilityEventObtain.setContentChangeTypes(i10);
                if (z10) {
                    accessibilityEventObtain.getText().add(l(view));
                    u0(view);
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i10 == 32) {
                AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.setEventType(32);
                accessibilityEventObtain2.setContentChangeTypes(i10);
                accessibilityEventObtain2.setSource(view);
                view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.getText().add(l(view));
                accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
                return;
            }
            if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i10);
                } catch (AbstractMethodError e10) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e10);
                }
            }
        }
    }

    public static void T(View view, int i10) {
        view.offsetLeftAndRight(i10);
    }

    public static void U(View view, int i10) {
        view.offsetTopAndBottom(i10);
    }

    public static a1 V(View view, a1 a1Var) {
        WindowInsets windowInsetsX = a1Var.x();
        if (windowInsetsX != null) {
            WindowInsets windowInsetsA = g.a(view, windowInsetsX);
            if (!windowInsetsA.equals(windowInsetsX)) {
                return a1.z(windowInsetsA, view);
            }
        }
        return a1Var;
    }

    public static void W(View view, d0.h hVar) {
        view.onInitializeAccessibilityNodeInfo(hVar.L0());
    }

    private static f X() {
        return new b(R$id.tag_accessibility_pane_title, CharSequence.class, 8, 28);
    }

    public static boolean Y(View view, int i10, Bundle bundle) {
        return view.performAccessibilityAction(i10, bundle);
    }

    public static void Z(View view) {
        view.postInvalidateOnAnimation();
    }

    private static f a() {
        return new d(R$id.tag_accessibility_heading, Boolean.class, 28);
    }

    public static void a0(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public static int b(View view, CharSequence charSequence, d0.k kVar) {
        int iN = n(view, charSequence);
        if (iN != -1) {
            c(view, new h.a(iN, charSequence, kVar));
        }
        return iN;
    }

    public static void b0(View view, Runnable runnable, long j10) {
        view.postOnAnimationDelayed(runnable, j10);
    }

    private static void c(View view, h.a aVar) {
        h(view);
        d0(aVar.b(), view);
        m(view).add(aVar);
        S(view, 0);
    }

    public static void c0(View view, int i10) {
        d0(i10, view);
        S(view, 0);
    }

    public static u0 d(View view) {
        if (f2085a == null) {
            f2085a = new WeakHashMap();
        }
        u0 u0Var = (u0) f2085a.get(view);
        if (u0Var != null) {
            return u0Var;
        }
        u0 u0Var2 = new u0(view);
        f2085a.put(view, u0Var2);
        return u0Var2;
    }

    private static void d0(int i10, View view) {
        List listM = m(view);
        for (int i11 = 0; i11 < listM.size(); i11++) {
            if (((h.a) listM.get(i11)).b() == i10) {
                listM.remove(i11);
                return;
            }
        }
    }

    public static a1 e(View view, a1 a1Var, Rect rect) {
        return h.a(view, a1Var, rect);
    }

    public static void e0(View view, h.a aVar, CharSequence charSequence, d0.k kVar) {
        if (kVar == null && charSequence == null) {
            c0(view, aVar.b());
        } else {
            c(view, aVar.a(charSequence, kVar));
        }
    }

    public static a1 f(View view, a1 a1Var) {
        WindowInsets windowInsetsX = a1Var.x();
        if (windowInsetsX != null) {
            WindowInsets windowInsetsA = n.a(view, windowInsetsX);
            if (!windowInsetsA.equals(windowInsetsX)) {
                return a1.z(windowInsetsA, view);
            }
        }
        return a1Var;
    }

    public static void f0(View view) {
        g.b(view);
    }

    static boolean g(View view, KeyEvent keyEvent) {
        return false;
    }

    public static int g0(int i10, int i11, int i12) {
        return View.resolveSizeAndState(i10, i11, i12);
    }

    static void h(View view) {
        androidx.core.view.a aVarJ = j(view);
        if (aVarJ == null) {
            aVarJ = new androidx.core.view.a();
        }
        j0(view, aVarJ);
    }

    public static void h0(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10, int i11) {
        m.b(view, context, iArr, attributeSet, typedArray, i10, i11);
    }

    public static int i() {
        return View.generateViewId();
    }

    private static f i0() {
        return new a(R$id.tag_screen_reader_focusable, Boolean.class, 28);
    }

    public static androidx.core.view.a j(View view) {
        View.AccessibilityDelegate accessibilityDelegateK = k(view);
        if (accessibilityDelegateK == null) {
            return null;
        }
        return accessibilityDelegateK instanceof a.C0014a ? ((a.C0014a) accessibilityDelegateK).f2008a : new androidx.core.view.a(accessibilityDelegateK);
    }

    public static void j0(View view, androidx.core.view.a aVar) {
        if (aVar == null && (k(view) instanceof a.C0014a)) {
            aVar = new androidx.core.view.a();
        }
        u0(view);
        view.setAccessibilityDelegate(aVar == null ? null : aVar.getBridge());
    }

    private static View.AccessibilityDelegate k(View view) {
        return m.a(view);
    }

    public static void k0(View view, boolean z10) {
        a().f(view, Boolean.valueOf(z10));
    }

    public static CharSequence l(View view) {
        return (CharSequence) X().e(view);
    }

    public static void l0(View view, int i10) {
        view.setAccessibilityLiveRegion(i10);
    }

    private static List m(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R$id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R$id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    public static void m0(View view, CharSequence charSequence) {
        X().f(view, charSequence);
        if (charSequence != null) {
            f2088d.a(view);
        } else {
            f2088d.c(view);
        }
    }

    private static int n(View view, CharSequence charSequence) {
        List listM = m(view);
        for (int i10 = 0; i10 < listM.size(); i10++) {
            if (TextUtils.equals(charSequence, ((h.a) listM.get(i10)).c())) {
                return ((h.a) listM.get(i10)).b();
            }
        }
        int i11 = -1;
        int i12 = 0;
        while (true) {
            int[] iArr = f2086b;
            if (i12 >= iArr.length || i11 != -1) {
                break;
            }
            int i13 = iArr[i12];
            boolean z10 = true;
            for (int i14 = 0; i14 < listM.size(); i14++) {
                z10 &= ((h.a) listM.get(i14)).b() != i13;
            }
            if (z10) {
                i11 = i13;
            }
            i12++;
        }
        return i11;
    }

    public static void n0(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static ColorStateList o(View view) {
        return h.b(view);
    }

    public static void o0(View view, ColorStateList colorStateList) {
        h.i(view, colorStateList);
    }

    public static PorterDuff.Mode p(View view) {
        return h.c(view);
    }

    public static void p0(View view, PorterDuff.Mode mode) {
        h.j(view, mode);
    }

    public static Display q(View view) {
        return view.getDisplay();
    }

    public static void q0(View view, Rect rect) {
        view.setClipBounds(rect);
    }

    public static float r(View view) {
        return h.d(view);
    }

    public static void r0(View view, float f10) {
        h.k(view, f10);
    }

    public static boolean s(View view) {
        return view.getFitsSystemWindows();
    }

    public static void s0(View view, boolean z10) {
        view.setFitsSystemWindows(z10);
    }

    public static int t(View view) {
        return view.getImportantForAccessibility();
    }

    public static void t0(View view, int i10) {
        view.setImportantForAccessibility(i10);
    }

    public static int u(View view) {
        return k.a(view);
    }

    private static void u0(View view) {
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    public static int v(View view) {
        return view.getLayoutDirection();
    }

    public static void v0(View view, int i10) {
        k.b(view, i10);
    }

    public static int w(View view) {
        return view.getMeasuredState();
    }

    public static void w0(View view, int i10) {
        view.setLabelFor(i10);
    }

    public static int x(View view) {
        return view.getMinimumHeight();
    }

    public static void x0(View view, boolean z10) {
        h.l(view, z10);
    }

    public static int y(View view) {
        return view.getMinimumWidth();
    }

    public static void y0(View view, a0 a0Var) {
        h.m(view, a0Var);
    }

    public static int z(View view) {
        return view.getPaddingEnd();
    }

    public static void z0(View view, int i10, int i11, int i12, int i13) {
        view.setPaddingRelative(i10, i11, i12, i13);
    }
}
