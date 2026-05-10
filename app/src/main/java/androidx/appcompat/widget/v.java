package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R$attr;
import androidx.core.view.u0;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class v extends ListView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f983c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f984f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f985h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f986i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d f987j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f988k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f989l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f990m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private u0 f991n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private androidx.core.widget.h f992o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    f f993p;

    static class a {
        static void a(View view, float f10, float f11) {
            view.drawableHotspotChanged(f10, f11);
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Method f994a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static Method f995b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static Method f996c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f997d;

        static {
            try {
                Class cls = Integer.TYPE;
                Class cls2 = Boolean.TYPE;
                Class cls3 = Float.TYPE;
                Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, cls2, cls3, cls3);
                f994a = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
                f995b = declaredMethod2;
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
                f996c = declaredMethod3;
                declaredMethod3.setAccessible(true);
                f997d = true;
            } catch (NoSuchMethodException e10) {
                e10.printStackTrace();
            }
        }

        static boolean a() {
            return f997d;
        }

        static void b(v vVar, int i10, View view) {
            try {
                f994a.invoke(vVar, Integer.valueOf(i10), view, Boolean.FALSE, -1, -1);
                f995b.invoke(vVar, Integer.valueOf(i10));
                f996c.invoke(vVar, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    static class c {
        static boolean a(AbsListView absListView) {
            return absListView.isSelectedChildViewEnabled();
        }

        static void b(AbsListView absListView, boolean z10) {
            absListView.setSelectedChildViewEnabled(z10);
        }
    }

    private static class d extends f.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f998b;

        d(Drawable drawable) {
            super(drawable);
            this.f998b = true;
        }

        void b(boolean z10) {
            this.f998b = z10;
        }

        @Override // f.c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f998b) {
                super.draw(canvas);
            }
        }

        @Override // f.c, android.graphics.drawable.Drawable
        public void setHotspot(float f10, float f11) {
            if (this.f998b) {
                super.setHotspot(f10, f11);
            }
        }

        @Override // f.c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i10, int i11, int i12, int i13) {
            if (this.f998b) {
                super.setHotspotBounds(i10, i11, i12, i13);
            }
        }

        @Override // f.c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f998b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // f.c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z10, boolean z11) {
            if (this.f998b) {
                return super.setVisible(z10, z11);
            }
            return false;
        }
    }

    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Field f999a;

        static {
            Field declaredField = null;
            try {
                declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                e10.printStackTrace();
            }
            f999a = declaredField;
        }

        static boolean a(AbsListView absListView) {
            Field field = f999a;
            if (field == null) {
                return false;
            }
            try {
                return field.getBoolean(absListView);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        static void b(AbsListView absListView, boolean z10) {
            Field field = f999a;
            if (field != null) {
                try {
                    field.set(absListView, Boolean.valueOf(z10));
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private class f implements Runnable {
        f() {
        }

        public void a() {
            v vVar = v.this;
            vVar.f993p = null;
            vVar.removeCallbacks(this);
        }

        public void b() {
            v.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            v vVar = v.this;
            vVar.f993p = null;
            vVar.drawableStateChanged();
        }
    }

    v(Context context, boolean z10) {
        super(context, null, R$attr.dropDownListViewStyle);
        this.f981a = new Rect();
        this.f982b = 0;
        this.f983c = 0;
        this.f984f = 0;
        this.f985h = 0;
        this.f989l = z10;
        setCacheColorHint(0);
    }

    private void a() {
        this.f990m = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f986i - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        u0 u0Var = this.f991n;
        if (u0Var != null) {
            u0Var.c();
            this.f991n = null;
        }
    }

    private void b(View view, int i10) {
        performItemClick(view, i10, getItemIdAtPosition(i10));
    }

    private void c(Canvas canvas) {
        Drawable selector;
        if (this.f981a.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f981a);
        selector.draw(canvas);
    }

    private void f(int i10, View view) {
        Rect rect = this.f981a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f982b;
        rect.top -= this.f983c;
        rect.right += this.f984f;
        rect.bottom += this.f985h;
        boolean zK = k();
        if (view.isEnabled() != zK) {
            l(!zK);
            if (i10 != -1) {
                refreshDrawableState();
            }
        }
    }

    private void g(int i10, View view) {
        Drawable selector = getSelector();
        boolean z10 = (selector == null || i10 == -1) ? false : true;
        if (z10) {
            selector.setVisible(false, false);
        }
        f(i10, view);
        if (z10) {
            Rect rect = this.f981a;
            float fExactCenterX = rect.exactCenterX();
            float fExactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            v.a.k(selector, fExactCenterX, fExactCenterY);
        }
    }

    private void h(int i10, View view, float f10, float f11) {
        g(i10, view);
        Drawable selector = getSelector();
        if (selector == null || i10 == -1) {
            return;
        }
        v.a.k(selector, f10, f11);
    }

    private void i(View view, int i10, float f10, float f11) {
        View childAt;
        this.f990m = true;
        a.a(this, f10, f11);
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i11 = this.f986i;
        if (i11 != -1 && (childAt = getChildAt(i11 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f986i = i10;
        a.a(view, f10 - view.getLeft(), f11 - view.getTop());
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        h(i10, view, f10, f11);
        j(false);
        refreshDrawableState();
    }

    private void j(boolean z10) {
        d dVar = this.f987j;
        if (dVar != null) {
            dVar.b(z10);
        }
    }

    private boolean k() {
        return Build.VERSION.SDK_INT >= 33 ? c.a(this) : e.a(this);
    }

    private void l(boolean z10) {
        if (Build.VERSION.SDK_INT >= 33) {
            c.b(this, z10);
        } else {
            e.b(this, z10);
        }
    }

    private boolean m() {
        return this.f990m;
    }

    private void n() {
        Drawable selector = getSelector();
        if (selector != null && m() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    public int d(int i10, int i11, int i12, int i13, int i14) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        View view = null;
        while (i15 < count) {
            int itemViewType = adapter.getItemViewType(i15);
            if (itemViewType != i16) {
                view = null;
                i16 = itemViewType;
            }
            view = adapter.getView(i15, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i18 = layoutParams.height;
            view.measure(i10, i18 > 0 ? View.MeasureSpec.makeMeasureSpec(i18, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i15 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i13) {
                return (i14 < 0 || i15 <= i14 || i17 <= 0 || measuredHeight == i13) ? i13 : i17;
            }
            if (i14 >= 0 && i15 >= i14) {
                i17 = measuredHeight;
            }
            i15++;
        }
        return measuredHeight;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f993p != null) {
            return;
        }
        super.drawableStateChanged();
        j(true);
        n();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean e(android.view.MotionEvent r8, int r9) {
        /*
            r7 = this;
            int r0 = r8.getActionMasked()
            r1 = 1
            r2 = 0
            if (r0 == r1) goto L16
            r3 = 2
            if (r0 == r3) goto L14
            r9 = 3
            if (r0 == r9) goto L11
        Le:
            r3 = r1
            r9 = r2
            goto L46
        L11:
            r9 = r2
            r3 = r9
            goto L46
        L14:
            r3 = r1
            goto L17
        L16:
            r3 = r2
        L17:
            int r9 = r8.findPointerIndex(r9)
            if (r9 >= 0) goto L1e
            goto L11
        L1e:
            float r4 = r8.getX(r9)
            int r4 = (int) r4
            float r9 = r8.getY(r9)
            int r9 = (int) r9
            int r5 = r7.pointToPosition(r4, r9)
            r6 = -1
            if (r5 != r6) goto L31
            r9 = r1
            goto L46
        L31:
            int r3 = r7.getFirstVisiblePosition()
            int r3 = r5 - r3
            android.view.View r3 = r7.getChildAt(r3)
            float r4 = (float) r4
            float r9 = (float) r9
            r7.i(r3, r5, r4, r9)
            if (r0 != r1) goto Le
            r7.b(r3, r5)
            goto Le
        L46:
            if (r3 == 0) goto L4a
            if (r9 == 0) goto L4d
        L4a:
            r7.a()
        L4d:
            if (r3 == 0) goto L65
            androidx.core.widget.h r9 = r7.f992o
            if (r9 != 0) goto L5a
            androidx.core.widget.h r9 = new androidx.core.widget.h
            r9.<init>(r7)
            r7.f992o = r9
        L5a:
            androidx.core.widget.h r9 = r7.f992o
            r9.m(r1)
            androidx.core.widget.h r9 = r7.f992o
            r9.onTouch(r7, r8)
            goto L6c
        L65:
            androidx.core.widget.h r7 = r7.f992o
            if (r7 == 0) goto L6c
            r7.m(r2)
        L6c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.v.e(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f989l || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f989l || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f989l || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f989l && this.f988k) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f993p = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f993p == null) {
            f fVar = new f();
            this.f993p = fVar;
            fVar.b();
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (b.a()) {
                        b.b(this, iPointToPosition, childAt);
                    } else {
                        setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                    }
                }
                n();
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f986i = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        f fVar = this.f993p;
        if (fVar != null) {
            fVar.a();
        }
        return super.onTouchEvent(motionEvent);
    }

    void setListSelectionHidden(boolean z10) {
        this.f988k = z10;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        d dVar = drawable != null ? new d(drawable) : null;
        this.f987j = dVar;
        super.setSelector(dVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f982b = rect.left;
        this.f983c = rect.top;
        this.f984f = rect.right;
        this.f985h = rect.bottom;
    }
}
