package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.appcompat.R$attr;
import androidx.appcompat.app.a;
import androidx.appcompat.widget.LinearLayoutCompat;

/* JADX INFO: loaded from: classes.dex */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: o */
    private static final Interpolator f753o = new DecelerateInterpolator();

    /* JADX INFO: renamed from: a */
    Runnable f754a;

    /* JADX INFO: renamed from: b */
    private c f755b;

    /* JADX INFO: renamed from: c */
    LinearLayoutCompat f756c;

    /* JADX INFO: renamed from: f */
    private Spinner f757f;

    /* JADX INFO: renamed from: h */
    private boolean f758h;

    /* JADX INFO: renamed from: i */
    int f759i;

    /* JADX INFO: renamed from: j */
    int f760j;

    /* JADX INFO: renamed from: k */
    private int f761k;

    /* JADX INFO: renamed from: l */
    private int f762l;

    /* JADX INFO: renamed from: m */
    protected ViewPropertyAnimator f763m;

    /* JADX INFO: renamed from: n */
    protected final e f764n;

    class a implements Runnable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f765a;

        a(View view) {
            this.f765a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ScrollingTabContainerView.this.smoothScrollTo(this.f765a.getLeft() - ((ScrollingTabContainerView.this.getWidth() - this.f765a.getWidth()) / 2), 0);
            ScrollingTabContainerView.this.f754a = null;
        }
    }

    private class b extends BaseAdapter {
        b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.f756c.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            ((d) ScrollingTabContainerView.this.f756c.getChildAt(i10)).b();
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
                androidx.appcompat.app.t.a(getItem(i10));
                return scrollingTabContainerView.d(null, true);
            }
            androidx.appcompat.app.t.a(getItem(i10));
            ((d) view).a(null);
            return view;
        }
    }

    private class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((d) view).b();
            throw null;
        }
    }

    private class d extends LinearLayout {

        /* JADX INFO: renamed from: a */
        private final int[] f769a;

        public d(Context context, a.b bVar, boolean z10) {
            super(context, null, R$attr.actionBarTabStyle);
            int[] iArr = {R.attr.background};
            this.f769a = iArr;
            h0 h0VarW = h0.w(context, null, iArr, R$attr.actionBarTabStyle, 0);
            if (h0VarW.s(0)) {
                setBackgroundDrawable(h0VarW.g(0));
            }
            h0VarW.y();
            if (z10) {
                setGravity(8388627);
            }
            c();
        }

        public void a(a.b bVar) {
            c();
        }

        public a.b b() {
            return null;
        }

        public void c() {
            throw null;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (ScrollingTabContainerView.this.f759i > 0) {
                int measuredWidth = getMeasuredWidth();
                int i12 = ScrollingTabContainerView.this.f759i;
                if (measuredWidth > i12) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), i11);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z10) {
            boolean z11 = isSelected() != z10;
            super.setSelected(z10);
            if (z11 && z10) {
                sendAccessibilityEvent(4);
            }
        }
    }

    protected class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        private boolean f771a = false;

        /* JADX INFO: renamed from: b */
        private int f772b;

        protected e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f771a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f771a) {
                return;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.f763m = null;
            scrollingTabContainerView.setVisibility(this.f772b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f771a = false;
        }
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        this.f764n = new e();
        setHorizontalScrollBarEnabled(false);
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(context);
        setContentHeight(aVarB.f());
        this.f760j = aVarB.e();
        LinearLayoutCompat linearLayoutCompatC = c();
        this.f756c = linearLayoutCompatC;
        addView(linearLayoutCompatC, new ViewGroup.LayoutParams(-2, -1));
    }

    private Spinner b() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, R$attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    private LinearLayoutCompat c() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, R$attr.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        return linearLayoutCompat;
    }

    private boolean e() {
        Spinner spinner = this.f757f;
        return spinner != null && spinner.getParent() == this;
    }

    private void f() {
        if (e()) {
            return;
        }
        if (this.f757f == null) {
            this.f757f = b();
        }
        removeView(this.f756c);
        addView(this.f757f, new ViewGroup.LayoutParams(-2, -1));
        if (this.f757f.getAdapter() == null) {
            this.f757f.setAdapter((SpinnerAdapter) new b());
        }
        Runnable runnable = this.f754a;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f754a = null;
        }
        this.f757f.setSelection(this.f762l);
    }

    private boolean g() {
        if (!e()) {
            return false;
        }
        removeView(this.f757f);
        addView(this.f756c, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f757f.getSelectedItemPosition());
        return false;
    }

    public void a(int i10) {
        View childAt = this.f756c.getChildAt(i10);
        Runnable runnable = this.f754a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        a aVar = new a(childAt);
        this.f754a = aVar;
        post(aVar);
    }

    d d(a.b bVar, boolean z10) {
        d dVar = new d(getContext(), bVar, z10);
        if (z10) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f761k));
        } else {
            dVar.setFocusable(true);
            if (this.f755b == null) {
                this.f755b = new c();
            }
            dVar.setOnClickListener(this.f755b);
        }
        return dVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f754a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(getContext());
        setContentHeight(aVarB.f());
        this.f760j = aVarB.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f754a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
        ((d) view).b();
        throw null;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        boolean z10 = mode == 1073741824;
        setFillViewport(z10);
        int childCount = this.f756c.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f759i = -1;
        } else {
            if (childCount > 2) {
                this.f759i = (int) (View.MeasureSpec.getSize(i10) * 0.4f);
            } else {
                this.f759i = View.MeasureSpec.getSize(i10) / 2;
            }
            this.f759i = Math.min(this.f759i, this.f760j);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f761k, 1073741824);
        if (z10 || !this.f758h) {
            g();
        } else {
            this.f756c.measure(0, iMakeMeasureSpec);
            if (this.f756c.getMeasuredWidth() > View.MeasureSpec.getSize(i10)) {
                f();
            } else {
                g();
            }
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i10, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z10 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f762l);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView adapterView) {
    }

    public void setAllowCollapse(boolean z10) {
        this.f758h = z10;
    }

    public void setContentHeight(int i10) {
        this.f761k = i10;
        requestLayout();
    }

    public void setTabSelected(int i10) {
        this.f762l = i10;
        int childCount = this.f756c.getChildCount();
        int i11 = 0;
        while (i11 < childCount) {
            View childAt = this.f756c.getChildAt(i11);
            boolean z10 = i11 == i10;
            childAt.setSelected(z10);
            if (z10) {
                a(i10);
            }
            i11++;
        }
        Spinner spinner = this.f757f;
        if (spinner == null || i10 < 0) {
            return;
        }
        spinner.setSelection(i10);
    }
}
