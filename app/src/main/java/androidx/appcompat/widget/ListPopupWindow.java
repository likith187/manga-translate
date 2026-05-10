package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.ShowableListMenu;

/* JADX INFO: loaded from: classes.dex */
public class ListPopupWindow implements ShowableListMenu {
    private final h A;
    private final g B;
    private final e C;
    private Runnable D;
    final Handler E;
    private final Rect F;
    private Rect G;
    private boolean H;
    PopupWindow I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ListAdapter f720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    v f721c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f722f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f723h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f724i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f725j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f726k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f727l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f728m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f729n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f730o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f731p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f732q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f733r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f734s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f735t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private DataSetObserver f736u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private View f737v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Drawable f738w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private AdapterView.OnItemClickListener f739x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private AdapterView.OnItemSelectedListener f740y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final i f741z;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View viewO = ListPopupWindow.this.o();
            if (viewO == null || viewO.getWindowToken() == null) {
                return;
            }
            ListPopupWindow.this.show();
        }
    }

    class b implements AdapterView.OnItemSelectedListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
            v vVar;
            if (i10 == -1 || (vVar = ListPopupWindow.this.f721c) == null) {
                return;
            }
            vVar.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView adapterView) {
        }
    }

    static class c {
        static int a(PopupWindow popupWindow, View view, int i10, boolean z10) {
            return popupWindow.getMaxAvailableHeight(view, i10, z10);
        }
    }

    static class d {
        static void a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        static void b(PopupWindow popupWindow, boolean z10) {
            popupWindow.setIsClippedToScreen(z10);
        }
    }

    private class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.m();
        }
    }

    private class f extends DataSetObserver {
        f() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.isShowing()) {
                ListPopupWindow.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    private class g implements AbsListView.OnScrollListener {
        g() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            if (i10 != 1 || ListPopupWindow.this.v() || ListPopupWindow.this.I.getContentView() == null) {
                return;
            }
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            listPopupWindow.E.removeCallbacks(listPopupWindow.f741z);
            ListPopupWindow.this.f741z.run();
        }
    }

    private class h implements View.OnTouchListener {
        h() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.I) != null && popupWindow.isShowing() && x10 >= 0 && x10 < ListPopupWindow.this.I.getWidth() && y10 >= 0 && y10 < ListPopupWindow.this.I.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.E.postDelayed(listPopupWindow.f741z, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
            listPopupWindow2.E.removeCallbacks(listPopupWindow2.f741z);
            return false;
        }
    }

    private class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v vVar = ListPopupWindow.this.f721c;
            if (vVar == null || !vVar.isAttachedToWindow() || ListPopupWindow.this.f721c.getCount() <= ListPopupWindow.this.f721c.getChildCount()) {
                return;
            }
            int childCount = ListPopupWindow.this.f721c.getChildCount();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (childCount <= listPopupWindow.f733r) {
                listPopupWindow.I.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, R$attr.listPopupWindowStyle);
    }

    private void K(boolean z10) {
        d.b(this.I, z10);
    }

    private int l() {
        int measuredHeight;
        int i10;
        int iMakeMeasureSpec;
        View view;
        int i11;
        if (this.f721c == null) {
            Context context = this.f719a;
            this.D = new a();
            v vVarN = n(context, !this.H);
            this.f721c = vVarN;
            Drawable drawable = this.f738w;
            if (drawable != null) {
                vVarN.setSelector(drawable);
            }
            this.f721c.setAdapter(this.f720b);
            this.f721c.setOnItemClickListener(this.f739x);
            this.f721c.setFocusable(true);
            this.f721c.setFocusableInTouchMode(true);
            this.f721c.setOnItemSelectedListener(new b());
            this.f721c.setOnScrollListener(this.B);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f740y;
            if (onItemSelectedListener != null) {
                this.f721c.setOnItemSelectedListener(onItemSelectedListener);
            }
            v vVar = this.f721c;
            View view2 = this.f734s;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i12 = this.f735t;
                if (i12 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(vVar, layoutParams);
                } else if (i12 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.f735t);
                } else {
                    linearLayout.addView(vVar, layoutParams);
                    linearLayout.addView(view2);
                }
                int i13 = this.f723h;
                if (i13 >= 0) {
                    i11 = Integer.MIN_VALUE;
                } else {
                    i13 = 0;
                    i11 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i13, i11), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                measuredHeight = 0;
                view = vVar;
            }
            this.I.setContentView(view);
        } else {
            View view3 = this.f734s;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.I.getBackground();
        if (background != null) {
            background.getPadding(this.F);
            Rect rect = this.F;
            int i14 = rect.top;
            i10 = rect.bottom + i14;
            if (!this.f727l) {
                this.f725j = -i14;
            }
        } else {
            this.F.setEmpty();
            i10 = 0;
        }
        int iP = p(o(), this.f725j, this.I.getInputMethodMode() == 2);
        if (this.f731p || this.f722f == -1) {
            return iP + i10;
        }
        int i15 = this.f723h;
        if (i15 == -2) {
            int i16 = this.f719a.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.F;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i16 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i15 != -1) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i15, 1073741824);
        } else {
            int i17 = this.f719a.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.F;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i17 - (rect3.left + rect3.right), 1073741824);
        }
        int iD = this.f721c.d(iMakeMeasureSpec, 0, -1, iP - measuredHeight, -1);
        if (iD > 0) {
            measuredHeight += i10 + this.f721c.getPaddingTop() + this.f721c.getPaddingBottom();
        }
        return iD + measuredHeight;
    }

    private int p(View view, int i10, boolean z10) {
        return c.a(this.I, view, i10, z10);
    }

    private void x() {
        View view = this.f734s;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f734s);
            }
        }
    }

    public void A(int i10) {
        Drawable background = this.I.getBackground();
        if (background == null) {
            N(i10);
            return;
        }
        background.getPadding(this.F);
        Rect rect = this.F;
        this.f723h = rect.left + rect.right + i10;
    }

    public void B(int i10) {
        this.f730o = i10;
    }

    public void C(Rect rect) {
        this.G = rect != null ? new Rect(rect) : null;
    }

    public void D(int i10) {
        if (i10 < 0 && -2 != i10 && -1 != i10) {
            throw new IllegalArgumentException("Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT.");
        }
        this.f722f = i10;
    }

    public void E(int i10) {
        this.I.setInputMethodMode(i10);
    }

    public void F(boolean z10) {
        this.H = z10;
        this.I.setFocusable(z10);
    }

    public void G(PopupWindow.OnDismissListener onDismissListener) {
        this.I.setOnDismissListener(onDismissListener);
    }

    public void H(AdapterView.OnItemClickListener onItemClickListener) {
        this.f739x = onItemClickListener;
    }

    public void I(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f740y = onItemSelectedListener;
    }

    public void J(boolean z10) {
        this.f729n = true;
        this.f728m = z10;
    }

    public void L(int i10) {
        this.f735t = i10;
    }

    public void M(int i10) {
        v vVar = this.f721c;
        if (!isShowing() || vVar == null) {
            return;
        }
        vVar.setListSelectionHidden(false);
        vVar.setSelection(i10);
        if (vVar.getChoiceMode() != 0) {
            vVar.setItemChecked(i10, true);
        }
    }

    public void N(int i10) {
        this.f723h = i10;
    }

    public void a(Drawable drawable) {
        this.I.setBackgroundDrawable(drawable);
    }

    public int b() {
        return this.f724i;
    }

    public Drawable c() {
        return this.I.getBackground();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        this.I.dismiss();
        x();
        this.I.setContentView(null);
        this.f721c = null;
        this.E.removeCallbacks(this.f741z);
    }

    public void e(int i10) {
        this.f725j = i10;
        this.f727l = true;
    }

    public void g(int i10) {
        this.f724i = i10;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView getListView() {
        return this.f721c;
    }

    public int i() {
        if (this.f727l) {
            return this.f725j;
        }
        return 0;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return this.I.isShowing();
    }

    public void k(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f736u;
        if (dataSetObserver == null) {
            this.f736u = new f();
        } else {
            ListAdapter listAdapter2 = this.f720b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f720b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f736u);
        }
        v vVar = this.f721c;
        if (vVar != null) {
            vVar.setAdapter(this.f720b);
        }
    }

    public void m() {
        v vVar = this.f721c;
        if (vVar != null) {
            vVar.setListSelectionHidden(true);
            vVar.requestLayout();
        }
    }

    v n(Context context, boolean z10) {
        return new v(context, z10);
    }

    public View o() {
        return this.f737v;
    }

    public Object q() {
        if (isShowing()) {
            return this.f721c.getSelectedItem();
        }
        return null;
    }

    public long r() {
        if (isShowing()) {
            return this.f721c.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int s() {
        if (isShowing()) {
            return this.f721c.getSelectedItemPosition();
        }
        return -1;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        int iL = l();
        boolean zV = v();
        androidx.core.widget.i.b(this.I, this.f726k);
        if (this.I.isShowing()) {
            if (o().isAttachedToWindow()) {
                int width = this.f723h;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = o().getWidth();
                }
                int i10 = this.f722f;
                if (i10 == -1) {
                    if (!zV) {
                        iL = -1;
                    }
                    if (zV) {
                        this.I.setWidth(this.f723h == -1 ? -1 : 0);
                        this.I.setHeight(0);
                    } else {
                        this.I.setWidth(this.f723h == -1 ? -1 : 0);
                        this.I.setHeight(-1);
                    }
                } else if (i10 != -2) {
                    iL = i10;
                }
                this.I.setOutsideTouchable((this.f732q || this.f731p) ? false : true);
                this.I.update(o(), this.f724i, this.f725j, width < 0 ? -1 : width, iL < 0 ? -1 : iL);
                return;
            }
            return;
        }
        int width2 = this.f723h;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = o().getWidth();
        }
        int i11 = this.f722f;
        if (i11 == -1) {
            iL = -1;
        } else if (i11 != -2) {
            iL = i11;
        }
        this.I.setWidth(width2);
        this.I.setHeight(iL);
        K(true);
        this.I.setOutsideTouchable((this.f732q || this.f731p) ? false : true);
        this.I.setTouchInterceptor(this.A);
        if (this.f729n) {
            androidx.core.widget.i.a(this.I, this.f728m);
        }
        d.a(this.I, this.G);
        androidx.core.widget.i.c(this.I, o(), this.f724i, this.f725j, this.f730o);
        this.f721c.setSelection(-1);
        if (!this.H || this.f721c.isInTouchMode()) {
            m();
        }
        if (this.H) {
            return;
        }
        this.E.post(this.C);
    }

    public View t() {
        if (isShowing()) {
            return this.f721c.getSelectedView();
        }
        return null;
    }

    public int u() {
        return this.f723h;
    }

    public boolean v() {
        return this.I.getInputMethodMode() == 2;
    }

    public boolean w() {
        return this.H;
    }

    public void y(View view) {
        this.f737v = view;
    }

    public void z(int i10) {
        this.I.setAnimationStyle(i10);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f722f = -2;
        this.f723h = -2;
        this.f726k = 1002;
        this.f730o = 0;
        this.f731p = false;
        this.f732q = false;
        this.f733r = Integer.MAX_VALUE;
        this.f735t = 0;
        this.f741z = new i();
        this.A = new h();
        this.B = new g();
        this.C = new e();
        this.F = new Rect();
        this.f719a = context;
        this.E = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ListPopupWindow, i10, i11);
        this.f724i = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f725j = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f727l = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        l lVar = new l(context, attributeSet, i10, i11);
        this.I = lVar;
        lVar.setInputMethodMode(1);
    }
}
