package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.collection.j;
import androidx.core.view.m0;
import androidx.customview.widget.b;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.coui.appcompat.version.COUIVersionUtil;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.protocol.AIProtocol;
import d0.h;
import d0.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends androidx.core.view.a {
    private static final String DEFAULT_CLASS_NAME = "android.view.View";
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private static final Rect INVALID_PARENT_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final b.a NODE_ADAPTER = new C0018a();
    private static final b.InterfaceC0019b SPARSE_VALUES_ADAPTER = new b();
    private final View mHost;
    private final AccessibilityManager mManager;
    private c mNodeProvider;
    private final Rect mTempScreenRect = new Rect();
    private final Rect mTempParentRect = new Rect();
    private final Rect mTempVisibleRect = new Rect();
    private final int[] mTempGlobalRect = new int[2];
    int mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
    int mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
    private int mHoveredVirtualViewId = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: androidx.customview.widget.a$a */
    class C0018a implements b.a {
        C0018a() {
        }

        @Override // androidx.customview.widget.b.a
        /* JADX INFO: renamed from: b */
        public void a(h hVar, Rect rect) {
            hVar.k(rect);
        }
    }

    class b implements b.InterfaceC0019b {
        b() {
        }

        @Override // androidx.customview.widget.b.InterfaceC0019b
        /* JADX INFO: renamed from: c */
        public h a(j jVar, int i10) {
            return (h) jVar.j(i10);
        }

        @Override // androidx.customview.widget.b.InterfaceC0019b
        /* JADX INFO: renamed from: d */
        public int b(j jVar) {
            return jVar.i();
        }
    }

    private class c extends i {
        c() {
        }

        @Override // d0.i
        public h b(int i10) {
            return h.X(a.this.obtainAccessibilityNodeInfo(i10));
        }

        @Override // d0.i
        public h d(int i10) {
            int i11 = i10 == 2 ? a.this.mAccessibilityFocusedVirtualViewId : a.this.mKeyboardFocusedVirtualViewId;
            if (i11 == Integer.MIN_VALUE) {
                return null;
            }
            return b(i11);
        }

        @Override // d0.i
        public boolean f(int i10, int i11, Bundle bundle) {
            return a.this.performAction(i10, i11, bundle);
        }
    }

    public a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.mHost = view;
        this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (m0.t(view) == 0) {
            m0.t0(view, 1);
        }
    }

    private boolean c(int i10) {
        if (this.mAccessibilityFocusedVirtualViewId != i10) {
            return false;
        }
        this.mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
        this.mHost.invalidate();
        sendEventForVirtualView(i10, 65536);
        return true;
    }

    private boolean d() {
        int i10 = this.mKeyboardFocusedVirtualViewId;
        return i10 != Integer.MIN_VALUE && onPerformActionForVirtualView(i10, 16, null);
    }

    private AccessibilityEvent e(int i10, int i11) {
        return i10 != -1 ? f(i10, i11) : g(i11);
    }

    private AccessibilityEvent f(int i10, int i11) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i11);
        h hVarObtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(i10);
        accessibilityEventObtain.getText().add(hVarObtainAccessibilityNodeInfo.x());
        accessibilityEventObtain.setContentDescription(hVarObtainAccessibilityNodeInfo.r());
        accessibilityEventObtain.setScrollable(hVarObtainAccessibilityNodeInfo.Q());
        accessibilityEventObtain.setPassword(hVarObtainAccessibilityNodeInfo.P());
        accessibilityEventObtain.setEnabled(hVarObtainAccessibilityNodeInfo.I());
        accessibilityEventObtain.setChecked(hVarObtainAccessibilityNodeInfo.F());
        onPopulateEventForVirtualView(i10, accessibilityEventObtain);
        if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain.setClassName(hVarObtainAccessibilityNodeInfo.o());
        d0.j.c(accessibilityEventObtain, this.mHost, i10);
        accessibilityEventObtain.setPackageName(this.mHost.getContext().getPackageName());
        return accessibilityEventObtain;
    }

    private AccessibilityEvent g(int i10) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i10);
        this.mHost.onInitializeAccessibilityEvent(accessibilityEventObtain);
        return accessibilityEventObtain;
    }

    private h h(int i10) {
        h hVarV = h.V();
        hVarV.n0(true);
        hVarV.p0(true);
        hVarV.h0("android.view.View");
        Rect rect = INVALID_PARENT_BOUNDS;
        hVarV.c0(rect);
        hVarV.d0(rect);
        hVarV.x0(this.mHost);
        onPopulateNodeForVirtualView(i10, hVarV);
        if (hVarV.x() == null && hVarV.r() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        hVarV.k(this.mTempParentRect);
        if (this.mTempParentRect.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int i11 = hVarV.i();
        if ((i11 & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((i11 & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        hVarV.v0(this.mHost.getContext().getPackageName());
        hVarV.G0(this.mHost, i10);
        if (this.mAccessibilityFocusedVirtualViewId == i10) {
            hVarV.b0(true);
            hVarV.a(128);
        } else {
            hVarV.b0(false);
            hVarV.a(64);
        }
        boolean z10 = this.mKeyboardFocusedVirtualViewId == i10;
        if (z10) {
            hVarV.a(2);
        } else if (hVarV.K()) {
            hVarV.a(1);
        }
        hVarV.q0(z10);
        this.mHost.getLocationOnScreen(this.mTempGlobalRect);
        hVarV.l(this.mTempScreenRect);
        if (this.mTempScreenRect.equals(rect)) {
            hVarV.k(this.mTempScreenRect);
            if (hVarV.f11460b != -1) {
                h hVarV2 = h.V();
                for (int i12 = hVarV.f11460b; i12 != -1; i12 = hVarV2.f11460b) {
                    hVarV2.y0(this.mHost, -1);
                    hVarV2.c0(INVALID_PARENT_BOUNDS);
                    onPopulateNodeForVirtualView(i12, hVarV2);
                    hVarV2.k(this.mTempParentRect);
                    Rect rect2 = this.mTempScreenRect;
                    Rect rect3 = this.mTempParentRect;
                    rect2.offset(rect3.left, rect3.top);
                }
                hVarV2.Z();
            }
            this.mTempScreenRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
        }
        if (this.mHost.getLocalVisibleRect(this.mTempVisibleRect)) {
            this.mTempVisibleRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
            if (this.mTempScreenRect.intersect(this.mTempVisibleRect)) {
                hVarV.d0(this.mTempScreenRect);
                if (m(this.mTempScreenRect)) {
                    hVarV.K0(true);
                }
            }
        }
        return hVarV;
    }

    private h i() {
        h hVarW = h.W(this.mHost);
        m0.W(this.mHost, hVarW);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (hVarW.n() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            hVarW.d(this.mHost, ((Integer) arrayList.get(i10)).intValue());
        }
        return hVarW;
    }

    private j j() {
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        j jVar = new j();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            jVar.h(((Integer) arrayList.get(i10)).intValue(), h(((Integer) arrayList.get(i10)).intValue()));
        }
        return jVar;
    }

    private void k(int i10, Rect rect) {
        obtainAccessibilityNodeInfo(i10).k(rect);
    }

    private static Rect l(View view, int i10, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i10 == 17) {
            rect.set(width, 0, width, height);
        } else if (i10 == 33) {
            rect.set(0, height, width, height);
        } else if (i10 == 66) {
            rect.set(-1, 0, -1, height);
        } else {
            if (i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            rect.set(0, -1, width, -1);
        }
        return rect;
    }

    private boolean m(Rect rect) {
        if (rect == null || rect.isEmpty() || this.mHost.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.mHost.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private static int n(int i10) {
        if (i10 == 19) {
            return 33;
        }
        if (i10 == 21) {
            return 17;
        }
        if (i10 != 22) {
            return AIProtocol.PROTOCOL_VERSION_AIGC_CLOUD;
        }
        return 66;
    }

    private boolean o(int i10, Rect rect) {
        h hVar;
        j jVarJ = j();
        int i11 = this.mKeyboardFocusedVirtualViewId;
        h hVar2 = i11 == Integer.MIN_VALUE ? null : (h) jVarJ.e(i11);
        if (i10 == 1 || i10 == 2) {
            hVar = (h) androidx.customview.widget.b.d(jVarJ, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, hVar2, i10, m0.v(this.mHost) == 1, false);
        } else {
            if (i10 != 17 && i10 != 33 && i10 != 66 && i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i12 = this.mKeyboardFocusedVirtualViewId;
            if (i12 != Integer.MIN_VALUE) {
                k(i12, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                l(this.mHost, i10, rect2);
            }
            hVar = (h) androidx.customview.widget.b.c(jVarJ, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, hVar2, rect2, i10);
        }
        return requestKeyboardFocusForVirtualView(hVar != null ? jVarJ.g(jVarJ.f(hVar)) : Integer.MIN_VALUE);
    }

    private boolean p(int i10, int i11, Bundle bundle) {
        return i11 != 1 ? i11 != 2 ? i11 != 64 ? i11 != 128 ? onPerformActionForVirtualView(i10, i11, bundle) : c(i10) : r(i10) : clearKeyboardFocusForVirtualView(i10) : requestKeyboardFocusForVirtualView(i10);
    }

    private boolean q(int i10, Bundle bundle) {
        return m0.Y(this.mHost, i10, bundle);
    }

    private boolean r(int i10) {
        int i11;
        if (!this.mManager.isEnabled() || !this.mManager.isTouchExplorationEnabled() || (i11 = this.mAccessibilityFocusedVirtualViewId) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            c(i11);
        }
        this.mAccessibilityFocusedVirtualViewId = i10;
        this.mHost.invalidate();
        sendEventForVirtualView(i10, 32768);
        return true;
    }

    private void s(int i10) {
        int i11 = this.mHoveredVirtualViewId;
        if (i11 == i10) {
            return;
        }
        this.mHoveredVirtualViewId = i10;
        sendEventForVirtualView(i10, 128);
        sendEventForVirtualView(i11, COUIToolTips.ALIGN_TOP);
    }

    public final boolean clearKeyboardFocusForVirtualView(int i10) {
        if (this.mKeyboardFocusedVirtualViewId != i10) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
        onVirtualViewKeyboardFocusChanged(i10, false);
        sendEventForVirtualView(i10, 8);
        return true;
    }

    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.mManager.isEnabled() || !this.mManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
            s(virtualViewAt);
            return virtualViewAt != Integer.MIN_VALUE;
        }
        if (action != 10 || this.mHoveredVirtualViewId == Integer.MIN_VALUE) {
            return false;
        }
        s(Integer.MIN_VALUE);
        return true;
    }

    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i10 = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 61) {
            if (keyEvent.hasNoModifiers()) {
                return o(2, null);
            }
            if (keyEvent.hasModifiers(1)) {
                return o(1, null);
            }
            return false;
        }
        if (keyCode != 66) {
            switch (keyCode) {
                case 19:
                case 20:
                case COUIVersionUtil.COUI_8_2 /* 21 */:
                case 22:
                    if (!keyEvent.hasNoModifiers()) {
                        return false;
                    }
                    int iN = n(keyCode);
                    int repeatCount = keyEvent.getRepeatCount() + 1;
                    boolean z10 = false;
                    while (i10 < repeatCount && o(iN, null)) {
                        i10++;
                        z10 = true;
                    }
                    return z10;
                case 23:
                    break;
                default:
                    return false;
            }
        }
        if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        d();
        return true;
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.mAccessibilityFocusedVirtualViewId;
    }

    @Override // androidx.core.view.a
    public i getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new c();
        }
        return this.mNodeProvider;
    }

    @Deprecated
    public int getFocusedVirtualView() {
        return getAccessibilityFocusedVirtualViewId();
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.mKeyboardFocusedVirtualViewId;
    }

    protected abstract int getVirtualViewAt(float f10, float f11);

    protected abstract void getVisibleVirtualViews(List list);

    public final void invalidateRoot() {
        invalidateVirtualView(-1, 1);
    }

    public final void invalidateVirtualView(int i10) {
        invalidateVirtualView(i10, 0);
    }

    h obtainAccessibilityNodeInfo(int i10) {
        return i10 == -1 ? i() : h(i10);
    }

    public final void onFocusChanged(boolean z10, int i10, Rect rect) {
        int i11 = this.mKeyboardFocusedVirtualViewId;
        if (i11 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i11);
        }
        if (z10) {
            o(i10, rect);
        }
    }

    @Override // androidx.core.view.a
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        onPopulateEventForHost(accessibilityEvent);
    }

    @Override // androidx.core.view.a
    public void onInitializeAccessibilityNodeInfo(View view, h hVar) {
        super.onInitializeAccessibilityNodeInfo(view, hVar);
        onPopulateNodeForHost(hVar);
    }

    protected abstract boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle);

    protected void onPopulateEventForHost(AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateEventForVirtualView(int i10, AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateNodeForHost(h hVar) {
    }

    protected abstract void onPopulateNodeForVirtualView(int i10, h hVar);

    protected void onVirtualViewKeyboardFocusChanged(int i10, boolean z10) {
    }

    boolean performAction(int i10, int i11, Bundle bundle) {
        return i10 != -1 ? p(i10, i11, bundle) : q(i11, bundle);
    }

    public final boolean requestKeyboardFocusForVirtualView(int i10) {
        int i11;
        if ((!this.mHost.isFocused() && !this.mHost.requestFocus()) || (i11 = this.mKeyboardFocusedVirtualViewId) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i11);
        }
        if (i10 == Integer.MIN_VALUE) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = i10;
        onVirtualViewKeyboardFocusChanged(i10, true);
        sendEventForVirtualView(i10, 8);
        return true;
    }

    public final boolean sendEventForVirtualView(int i10, int i11) {
        ViewParent parent;
        if (i10 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return false;
        }
        return parent.requestSendAccessibilityEvent(this.mHost, e(i10, i11));
    }

    public final void invalidateVirtualView(int i10, int i11) {
        ViewParent parent;
        if (i10 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return;
        }
        AccessibilityEvent accessibilityEventE = e(i10, ConfigPackage.FRAME_SIZE_3);
        d0.b.b(accessibilityEventE, i11);
        parent.requestSendAccessibilityEvent(this.mHost, accessibilityEventE);
    }
}
