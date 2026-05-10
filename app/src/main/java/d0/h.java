package d0;

import android.R;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.app.t;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.ConfigPackage;
import d0.k;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import kotlinx.serialization.json.internal.ReaderJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a */
    private final AccessibilityNodeInfo f11459a;

    /* JADX INFO: renamed from: b */
    public int f11460b = -1;

    /* JADX INFO: renamed from: c */
    private int f11461c = -1;

    public static class a {
        public static final a A;
        public static final a B;
        public static final a C;
        public static final a D;
        public static final a E;
        public static final a F;
        public static final a G;
        public static final a H;
        public static final a I;
        public static final a J;
        public static final a K;
        public static final a L;
        public static final a M;
        public static final a N;
        public static final a O;
        public static final a P;
        public static final a Q;
        public static final a R;
        public static final a S;
        public static final a T;
        public static final a U;
        public static final a V;

        /* JADX INFO: renamed from: e */
        public static final a f11462e = new a(1, null);

        /* JADX INFO: renamed from: f */
        public static final a f11463f = new a(2, null);

        /* JADX INFO: renamed from: g */
        public static final a f11464g = new a(4, null);

        /* JADX INFO: renamed from: h */
        public static final a f11465h = new a(8, null);

        /* JADX INFO: renamed from: i */
        public static final a f11466i = new a(16, null);

        /* JADX INFO: renamed from: j */
        public static final a f11467j = new a(32, null);

        /* JADX INFO: renamed from: k */
        public static final a f11468k = new a(64, null);

        /* JADX INFO: renamed from: l */
        public static final a f11469l = new a(128, null);

        /* JADX INFO: renamed from: m */
        public static final a f11470m = new a(COUIToolTips.ALIGN_TOP, (CharSequence) null, k.b.class);

        /* JADX INFO: renamed from: n */
        public static final a f11471n = new a(ConfigPackage.FRAME_SIZE_1, (CharSequence) null, k.b.class);

        /* JADX INFO: renamed from: o */
        public static final a f11472o = new a(1024, (CharSequence) null, k.c.class);

        /* JADX INFO: renamed from: p */
        public static final a f11473p = new a(ConfigPackage.FRAME_SIZE_3, (CharSequence) null, k.c.class);

        /* JADX INFO: renamed from: q */
        public static final a f11474q = new a(ConfigPackage.FRAME_SIZE_5, null);

        /* JADX INFO: renamed from: r */
        public static final a f11475r = new a(ConfigPackage.FRAME_SIZE_6, null);

        /* JADX INFO: renamed from: s */
        public static final a f11476s = new a(ReaderJsonLexerKt.BATCH_SIZE, null);

        /* JADX INFO: renamed from: t */
        public static final a f11477t = new a(32768, null);

        /* JADX INFO: renamed from: u */
        public static final a f11478u = new a(65536, null);

        /* JADX INFO: renamed from: v */
        public static final a f11479v = new a(131072, (CharSequence) null, k.g.class);

        /* JADX INFO: renamed from: w */
        public static final a f11480w = new a(262144, null);

        /* JADX INFO: renamed from: x */
        public static final a f11481x = new a(524288, null);

        /* JADX INFO: renamed from: y */
        public static final a f11482y = new a(1048576, null);

        /* JADX INFO: renamed from: z */
        public static final a f11483z = new a(2097152, (CharSequence) null, k.h.class);

        /* JADX INFO: renamed from: a */
        final Object f11484a;

        /* JADX INFO: renamed from: b */
        private final int f11485b;

        /* JADX INFO: renamed from: c */
        private final Class f11486c;

        /* JADX INFO: renamed from: d */
        protected final k f11487d;

        static {
            int i10 = Build.VERSION.SDK_INT;
            A = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen, null, null, null);
            B = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition, null, null, k.e.class);
            C = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null, null, null);
            D = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft, null, null, null);
            E = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null, null, null);
            F = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight, null, null, null);
            G = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP, R.id.accessibilityActionPageUp, null, null, null);
            H = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN, R.id.accessibilityActionPageDown, null, null, null);
            I = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT, R.id.accessibilityActionPageLeft, null, null, null);
            J = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT, R.id.accessibilityActionPageRight, null, null, null);
            K = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick, null, null, null);
            L = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, R.id.accessibilityActionSetProgress, null, null, k.f.class);
            M = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW, R.id.accessibilityActionMoveWindow, null, null, k.d.class);
            N = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP, R.id.accessibilityActionShowTooltip, null, null, null);
            O = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP, R.id.accessibilityActionHideTooltip, null, null, null);
            P = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD, R.id.accessibilityActionPressAndHold, null, null, null);
            Q = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER, R.id.accessibilityActionImeEnter, null, null, null);
            R = new a(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null, null, null);
            S = new a(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP : null, R.id.accessibilityActionDragDrop, null, null, null);
            T = new a(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL : null, R.id.accessibilityActionDragCancel, null, null, null);
            U = new a(i10 >= 33 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS : null, R.id.accessibilityActionShowTextSuggestions, null, null, null);
            V = new a(i10 >= 34 ? d.a() : null, R.id.accessibilityActionScrollInDirection, null, null, null);
        }

        public a(int i10, CharSequence charSequence) {
            this(null, i10, charSequence, null, null);
        }

        public a a(CharSequence charSequence, k kVar) {
            return new a(null, this.f11485b, charSequence, kVar, this.f11486c);
        }

        public int b() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f11484a).getId();
        }

        public CharSequence c() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f11484a).getLabel();
        }

        public boolean d(View view, Bundle bundle) {
            if (this.f11487d == null) {
                return false;
            }
            Class cls = this.f11486c;
            if (cls != null) {
                try {
                    t.a(cls.getDeclaredConstructor(null).newInstance(null));
                    throw null;
                } catch (Exception e10) {
                    Class cls2 = this.f11486c;
                    Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? AbstractJsonLexerKt.NULL : cls2.getName()), e10);
                }
            }
            return this.f11487d.perform(view, null);
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = this.f11484a;
            return obj2 == null ? aVar.f11484a == null : obj2.equals(aVar.f11484a);
        }

        public int hashCode() {
            Object obj = this.f11484a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("AccessibilityActionCompat: ");
            String strH = h.h(this.f11485b);
            if (strH.equals("ACTION_UNKNOWN") && c() != null) {
                strH = c().toString();
            }
            sb.append(strH);
            return sb.toString();
        }

        public a(int i10, CharSequence charSequence, k kVar) {
            this(null, i10, charSequence, kVar, null);
        }

        a(Object obj) {
            this(obj, 0, null, null, null);
        }

        private a(int i10, CharSequence charSequence, Class cls) {
            this(null, i10, charSequence, null, cls);
        }

        a(Object obj, int i10, CharSequence charSequence, k kVar, Class cls) {
            this.f11485b = i10;
            this.f11487d = kVar;
            if (obj == null) {
                this.f11484a = new AccessibilityNodeInfo.AccessibilityAction(i10, charSequence);
            } else {
                this.f11484a = obj;
            }
            this.f11486c = cls;
        }
    }

    private static class b {
        public static CharSequence a(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getStateDescription();
        }

        public static void b(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
            accessibilityNodeInfo.setStateDescription(charSequence);
        }
    }

    private static class c {
        public static String a(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getUniqueId();
        }

        public static boolean b(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isTextSelectable();
        }
    }

    private static class d {
        public static AccessibilityNodeInfo.AccessibilityAction a() {
            return AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_IN_DIRECTION;
        }

        public static void b(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
            accessibilityNodeInfo.getBoundsInWindow(rect);
        }

        public static CharSequence c(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getContainerTitle();
        }

        public static boolean d(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isAccessibilityDataSensitive();
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a */
        final Object f11488a;

        e(Object obj) {
            this.f11488a = obj;
        }

        public static e a(int i10, int i11, boolean z10) {
            return new e(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z10));
        }

        public static e b(int i10, int i11, boolean z10, int i12) {
            return new e(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z10, i12));
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a */
        final Object f11489a;

        f(Object obj) {
            this.f11489a = obj;
        }

        public static f a(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
            return new f(AccessibilityNodeInfo.CollectionItemInfo.obtain(i10, i11, i12, i13, z10, z11));
        }
    }

    public static class g {

        /* JADX INFO: renamed from: a */
        final Object f11490a;

        g(Object obj) {
            this.f11490a = obj;
        }

        public static g a(int i10, float f10, float f11, float f12) {
            return new g(AccessibilityNodeInfo.RangeInfo.obtain(i10, f10, f11, f12));
        }
    }

    private h(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f11459a = accessibilityNodeInfo;
    }

    private boolean B() {
        return !f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    public static h M0(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new h(accessibilityNodeInfo);
    }

    public static h V() {
        return M0(AccessibilityNodeInfo.obtain());
    }

    public static h W(View view) {
        return M0(AccessibilityNodeInfo.obtain(view));
    }

    public static h X(h hVar) {
        return M0(AccessibilityNodeInfo.obtain(hVar.f11459a));
    }

    private List f(String str) {
        ArrayList<Integer> integerArrayList = this.f11459a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.f11459a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    static String h(int i10) {
        if (i10 == 1) {
            return "ACTION_FOCUS";
        }
        if (i10 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i10) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case COUIToolTips.ALIGN_END /* 64 */:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case COUIToolTips.ALIGN_TOP /* 256 */:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case ConfigPackage.FRAME_SIZE_1 /* 512 */:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case ConfigPackage.FRAME_SIZE_3 /* 2048 */:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case ConfigPackage.FRAME_SIZE_5 /* 4096 */:
                return "ACTION_SCROLL_FORWARD";
            case ConfigPackage.FRAME_SIZE_6 /* 8192 */:
                return "ACTION_SCROLL_BACKWARD";
            case ReaderJsonLexerKt.BATCH_SIZE /* 16384 */:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            case R.id.accessibilityActionScrollInDirection:
                return "ACTION_SCROLL_IN_DIRECTION";
            default:
                switch (i10) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i10) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                switch (i10) {
                                    case R.id.accessibilityActionImeEnter:
                                        return "ACTION_IME_ENTER";
                                    case R.id.accessibilityActionDragStart:
                                        return "ACTION_DRAG_START";
                                    case R.id.accessibilityActionDragDrop:
                                        return "ACTION_DRAG_DROP";
                                    case R.id.accessibilityActionDragCancel:
                                        return "ACTION_DRAG_CANCEL";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
        }
    }

    private boolean j(int i10) {
        Bundle bundleT = t();
        return bundleT != null && (bundleT.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i10) == i10;
    }

    public static ClickableSpan[] p(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public String A() {
        return this.f11459a.getViewIdResourceName();
    }

    public void A0(CharSequence charSequence) {
        this.f11459a.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", charSequence);
    }

    public void B0(boolean z10) {
        this.f11459a.setScreenReaderFocusable(z10);
    }

    public boolean C() {
        return Build.VERSION.SDK_INT >= 34 ? d.d(this.f11459a) : j(64);
    }

    public void C0(boolean z10) {
        this.f11459a.setScrollable(z10);
    }

    public boolean D() {
        return this.f11459a.isAccessibilityFocused();
    }

    public void D0(boolean z10) {
        this.f11459a.setSelected(z10);
    }

    public boolean E() {
        return this.f11459a.isCheckable();
    }

    public void E0(boolean z10) {
        this.f11459a.setShowingHintText(z10);
    }

    public boolean F() {
        return this.f11459a.isChecked();
    }

    public void F0(View view) {
        this.f11461c = -1;
        this.f11459a.setSource(view);
    }

    public boolean G() {
        return this.f11459a.isClickable();
    }

    public void G0(View view, int i10) {
        this.f11461c = i10;
        this.f11459a.setSource(view, i10);
    }

    public boolean H() {
        return this.f11459a.isContextClickable();
    }

    public void H0(CharSequence charSequence) {
        b.b(this.f11459a, charSequence);
    }

    public boolean I() {
        return this.f11459a.isEnabled();
    }

    public void I0(CharSequence charSequence) {
        this.f11459a.setText(charSequence);
    }

    public boolean J() {
        return this.f11459a.getExtras().getBoolean("androidx.view.accessibility.AccessibilityNodeInfoCompat.IS_REQUIRED_KEY");
    }

    public void J0(View view) {
        this.f11459a.setTraversalAfter(view);
    }

    public boolean K() {
        return this.f11459a.isFocusable();
    }

    public void K0(boolean z10) {
        this.f11459a.setVisibleToUser(z10);
    }

    public boolean L() {
        return this.f11459a.isFocused();
    }

    public AccessibilityNodeInfo L0() {
        return this.f11459a;
    }

    public boolean M() {
        return j(67108864);
    }

    public boolean N() {
        return this.f11459a.isImportantForAccessibility();
    }

    public boolean O() {
        return this.f11459a.isLongClickable();
    }

    public boolean P() {
        return this.f11459a.isPassword();
    }

    public boolean Q() {
        return this.f11459a.isScrollable();
    }

    public boolean R() {
        return this.f11459a.isSelected();
    }

    public boolean S() {
        return this.f11459a.isShowingHintText();
    }

    public boolean T() {
        return Build.VERSION.SDK_INT >= 33 ? c.b(this.f11459a) : j(8388608);
    }

    public boolean U() {
        return this.f11459a.isVisibleToUser();
    }

    public boolean Y(int i10, Bundle bundle) {
        return this.f11459a.performAction(i10, bundle);
    }

    public void Z() {
    }

    public void a(int i10) {
        this.f11459a.addAction(i10);
    }

    public boolean a0(a aVar) {
        return this.f11459a.removeAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f11484a);
    }

    public void b(a aVar) {
        this.f11459a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f11484a);
    }

    public void b0(boolean z10) {
        this.f11459a.setAccessibilityFocused(z10);
    }

    public void c(View view) {
        this.f11459a.addChild(view);
    }

    public void c0(Rect rect) {
        this.f11459a.setBoundsInParent(rect);
    }

    public void d(View view, int i10) {
        this.f11459a.addChild(view, i10);
    }

    public void d0(Rect rect) {
        this.f11459a.setBoundsInScreen(rect);
    }

    public void e(CharSequence charSequence, View view) {
    }

    public void e0(boolean z10) {
        this.f11459a.setCanOpenPopup(z10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f11459a;
        if (accessibilityNodeInfo == null) {
            if (hVar.f11459a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(hVar.f11459a)) {
            return false;
        }
        return this.f11461c == hVar.f11461c && this.f11460b == hVar.f11460b;
    }

    public void f0(boolean z10) {
        this.f11459a.setCheckable(z10);
    }

    public List g() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.f11459a.getActionList();
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new a(actionList.get(i10)));
        }
        return arrayList;
    }

    public void g0(boolean z10) {
        this.f11459a.setChecked(z10);
    }

    public void h0(CharSequence charSequence) {
        this.f11459a.setClassName(charSequence);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f11459a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public int i() {
        return this.f11459a.getActions();
    }

    public void i0(boolean z10) {
        this.f11459a.setClickable(z10);
    }

    public void j0(Object obj) {
        this.f11459a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((e) obj).f11488a);
    }

    public void k(Rect rect) {
        this.f11459a.getBoundsInParent(rect);
    }

    public void k0(Object obj) {
        this.f11459a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((f) obj).f11489a);
    }

    public void l(Rect rect) {
        this.f11459a.getBoundsInScreen(rect);
    }

    public void l0(CharSequence charSequence) {
        this.f11459a.setContentDescription(charSequence);
    }

    public void m(Rect rect) {
        if (Build.VERSION.SDK_INT >= 34) {
            d.b(this.f11459a, rect);
            return;
        }
        Rect rect2 = (Rect) this.f11459a.getExtras().getParcelable("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOUNDS_IN_WINDOW_KEY");
        if (rect2 != null) {
            rect.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
    }

    public void m0(boolean z10) {
        this.f11459a.setDismissable(z10);
    }

    public int n() {
        return this.f11459a.getChildCount();
    }

    public void n0(boolean z10) {
        this.f11459a.setEnabled(z10);
    }

    public CharSequence o() {
        return this.f11459a.getClassName();
    }

    public void o0(CharSequence charSequence) {
        this.f11459a.setError(charSequence);
    }

    public void p0(boolean z10) {
        this.f11459a.setFocusable(z10);
    }

    public CharSequence q() {
        return Build.VERSION.SDK_INT >= 34 ? d.c(this.f11459a) : this.f11459a.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.CONTAINER_TITLE_KEY");
    }

    public void q0(boolean z10) {
        this.f11459a.setFocused(z10);
    }

    public CharSequence r() {
        return this.f11459a.getContentDescription();
    }

    public void r0(boolean z10) {
        this.f11459a.setHeading(z10);
    }

    public CharSequence s() {
        return this.f11459a.getError();
    }

    public void s0(CharSequence charSequence) {
        this.f11459a.setHintText(charSequence);
    }

    public Bundle t() {
        return this.f11459a.getExtras();
    }

    public void t0(View view) {
        this.f11459a.setLabelFor(view);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        k(rect);
        sb.append("; boundsInParent: " + rect);
        l(rect);
        sb.append("; boundsInScreen: " + rect);
        m(rect);
        sb.append("; boundsInWindow: " + rect);
        sb.append("; packageName: ");
        sb.append(v());
        sb.append("; className: ");
        sb.append(o());
        sb.append("; text: ");
        sb.append(x());
        sb.append("; error: ");
        sb.append(s());
        sb.append("; maxTextLength: ");
        sb.append(u());
        sb.append("; stateDescription: ");
        sb.append(w());
        sb.append("; contentDescription: ");
        sb.append(r());
        sb.append("; tooltipText: ");
        sb.append(y());
        sb.append("; viewIdResName: ");
        sb.append(A());
        sb.append("; uniqueId: ");
        sb.append(z());
        sb.append("; checkable: ");
        sb.append(E());
        sb.append("; checked: ");
        sb.append(F());
        sb.append("; fieldRequired: ");
        sb.append(J());
        sb.append("; focusable: ");
        sb.append(K());
        sb.append("; focused: ");
        sb.append(L());
        sb.append("; selected: ");
        sb.append(R());
        sb.append("; clickable: ");
        sb.append(G());
        sb.append("; longClickable: ");
        sb.append(O());
        sb.append("; contextClickable: ");
        sb.append(H());
        sb.append("; enabled: ");
        sb.append(I());
        sb.append("; password: ");
        sb.append(P());
        sb.append("; scrollable: " + Q());
        sb.append("; containerTitle: ");
        sb.append(q());
        sb.append("; granularScrollingSupported: ");
        sb.append(M());
        sb.append("; importantForAccessibility: ");
        sb.append(N());
        sb.append("; visible: ");
        sb.append(U());
        sb.append("; isTextSelectable: ");
        sb.append(T());
        sb.append("; accessibilityDataSensitive: ");
        sb.append(C());
        sb.append("; [");
        List listG = g();
        for (int i10 = 0; i10 < listG.size(); i10++) {
            a aVar = (a) listG.get(i10);
            String strH = h(aVar.b());
            if (strH.equals("ACTION_UNKNOWN") && aVar.c() != null) {
                strH = aVar.c().toString();
            }
            sb.append(strH);
            if (i10 != listG.size() - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public int u() {
        return this.f11459a.getMaxTextLength();
    }

    public void u0(int i10) {
        this.f11459a.setMaxTextLength(i10);
    }

    public CharSequence v() {
        return this.f11459a.getPackageName();
    }

    public void v0(CharSequence charSequence) {
        this.f11459a.setPackageName(charSequence);
    }

    public CharSequence w() {
        return b.a(this.f11459a);
    }

    public void w0(CharSequence charSequence) {
        this.f11459a.setPaneTitle(charSequence);
    }

    public CharSequence x() {
        if (!B()) {
            return this.f11459a.getText();
        }
        List listF = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List listF2 = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List listF3 = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List listF4 = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f11459a.getText(), 0, this.f11459a.getText().length()));
        for (int i10 = 0; i10 < listF.size(); i10++) {
            spannableString.setSpan(new d0.a(((Integer) listF4.get(i10)).intValue(), this, t().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), ((Integer) listF.get(i10)).intValue(), ((Integer) listF2.get(i10)).intValue(), ((Integer) listF3.get(i10)).intValue());
        }
        return spannableString;
    }

    public void x0(View view) {
        this.f11460b = -1;
        this.f11459a.setParent(view);
    }

    public CharSequence y() {
        return this.f11459a.getTooltipText();
    }

    public void y0(View view, int i10) {
        this.f11460b = i10;
        this.f11459a.setParent(view, i10);
    }

    public String z() {
        return Build.VERSION.SDK_INT >= 33 ? c.a(this.f11459a) : this.f11459a.getExtras().getString("androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY");
    }

    public void z0(g gVar) {
        this.f11459a.setRangeInfo((AccessibilityNodeInfo.RangeInfo) gVar.f11490a);
    }
}
