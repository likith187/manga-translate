package com.google.android.material.tabs;

import android.R;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.d0;
import androidx.core.view.m0;
import androidx.core.widget.j;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import d0.h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@ViewPager.e
public class TabLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: d0 */
    private static final int f10289d0 = R$style.Widget_Design_TabLayout;

    /* JADX INFO: renamed from: e0 */
    private static final c0.e f10290e0 = new c0.g(16);
    private final int A;
    private final int B;
    private int C;
    int D;
    int E;
    int F;
    int G;
    boolean H;
    boolean I;
    int J;
    int K;
    boolean L;
    private com.google.android.material.tabs.c M;
    private final TimeInterpolator N;
    private c O;
    private final ArrayList P;
    private c Q;
    private ValueAnimator R;
    ViewPager S;
    private androidx.viewpager.widget.a T;
    private DataSetObserver U;
    private h V;
    private b W;

    /* JADX INFO: renamed from: a */
    int f10291a;

    /* JADX INFO: renamed from: a0 */
    private boolean f10292a0;

    /* JADX INFO: renamed from: b */
    private final ArrayList f10293b;

    /* JADX INFO: renamed from: b0 */
    private int f10294b0;

    /* JADX INFO: renamed from: c */
    private g f10295c;

    /* JADX INFO: renamed from: c0 */
    private final c0.e f10296c0;

    /* JADX INFO: renamed from: f */
    final f f10297f;

    /* JADX INFO: renamed from: h */
    int f10298h;

    /* JADX INFO: renamed from: i */
    int f10299i;

    /* JADX INFO: renamed from: j */
    int f10300j;

    /* JADX INFO: renamed from: k */
    int f10301k;

    /* JADX INFO: renamed from: l */
    private final int f10302l;

    /* JADX INFO: renamed from: m */
    private final int f10303m;

    /* JADX INFO: renamed from: n */
    private int f10304n;

    /* JADX INFO: renamed from: o */
    ColorStateList f10305o;

    /* JADX INFO: renamed from: p */
    ColorStateList f10306p;

    /* JADX INFO: renamed from: q */
    ColorStateList f10307q;

    /* JADX INFO: renamed from: r */
    Drawable f10308r;

    /* JADX INFO: renamed from: s */
    private int f10309s;

    /* JADX INFO: renamed from: t */
    PorterDuff.Mode f10310t;

    /* JADX INFO: renamed from: u */
    float f10311u;

    /* JADX INFO: renamed from: v */
    float f10312v;

    /* JADX INFO: renamed from: w */
    float f10313w;

    /* JADX INFO: renamed from: x */
    final int f10314x;

    /* JADX INFO: renamed from: y */
    int f10315y;

    /* JADX INFO: renamed from: z */
    private final int f10316z;

    public final class TabView extends LinearLayout {

        /* JADX INFO: renamed from: a */
        private g f10317a;

        /* JADX INFO: renamed from: b */
        private TextView f10318b;

        /* JADX INFO: renamed from: c */
        private ImageView f10319c;

        /* JADX INFO: renamed from: f */
        private View f10320f;

        /* JADX INFO: renamed from: h */
        private com.google.android.material.badge.a f10321h;

        /* JADX INFO: renamed from: i */
        private View f10322i;

        /* JADX INFO: renamed from: j */
        private TextView f10323j;

        /* JADX INFO: renamed from: k */
        private ImageView f10324k;

        /* JADX INFO: renamed from: l */
        private Drawable f10325l;

        /* JADX INFO: renamed from: m */
        private int f10326m;

        class a implements View.OnLayoutChangeListener {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ View f10328a;

            a(View view) {
                this.f10328a = view;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                if (this.f10328a.getVisibility() == 0) {
                    TabView.this.s(this.f10328a);
                }
            }
        }

        public TabView(Context context) {
            super(context);
            this.f10326m = 2;
            u(context);
            m0.z0(this, TabLayout.this.f10298h, TabLayout.this.f10299i, TabLayout.this.f10300j, TabLayout.this.f10301k);
            setGravity(17);
            setOrientation(!TabLayout.this.H ? 1 : 0);
            setClickable(true);
            m0.A0(this, d0.b(getContext(), 1002));
        }

        private void f(View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new a(view));
        }

        private float g(Layout layout, int i10, float f10) {
            return layout.getLineWidth(i10) * (f10 / layout.getPaint().getTextSize());
        }

        private com.google.android.material.badge.a getBadge() {
            return this.f10321h;
        }

        private com.google.android.material.badge.a getOrCreateBadge() {
            if (this.f10321h == null) {
                this.f10321h = com.google.android.material.badge.a.c(getContext());
            }
            r();
            com.google.android.material.badge.a aVar = this.f10321h;
            if (aVar != null) {
                return aVar;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        private void h(boolean z10) {
            setClipChildren(z10);
            setClipToPadding(z10);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z10);
                viewGroup.setClipToPadding(z10);
            }
        }

        private FrameLayout i() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        public void j(Canvas canvas) {
            Drawable drawable = this.f10325l;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f10325l.draw(canvas);
            }
        }

        private FrameLayout k(View view) {
            if ((view == this.f10319c || view == this.f10318b) && com.google.android.material.badge.b.f8945a) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        public boolean l() {
            return this.f10321h != null;
        }

        private void m() {
            ViewGroup viewGroup;
            if (com.google.android.material.badge.b.f8945a) {
                FrameLayout frameLayoutI = i();
                addView(frameLayoutI, 0);
                viewGroup = frameLayoutI;
            } else {
                viewGroup = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R$layout.design_layout_tab_icon, viewGroup, false);
            this.f10319c = imageView;
            viewGroup.addView(imageView, 0);
        }

        private void n() {
            ViewGroup viewGroup;
            if (com.google.android.material.badge.b.f8945a) {
                FrameLayout frameLayoutI = i();
                addView(frameLayoutI);
                viewGroup = frameLayoutI;
            } else {
                viewGroup = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R$layout.design_layout_tab_text, viewGroup, false);
            this.f10318b = textView;
            viewGroup.addView(textView);
        }

        private void p(View view) {
            if (l() && view != null) {
                h(false);
                com.google.android.material.badge.b.a(this.f10321h, view, k(view));
                this.f10320f = view;
            }
        }

        private void q() {
            if (l()) {
                h(true);
                View view = this.f10320f;
                if (view != null) {
                    com.google.android.material.badge.b.d(this.f10321h, view);
                    this.f10320f = null;
                }
            }
        }

        private void r() {
            g gVar;
            g gVar2;
            if (l()) {
                if (this.f10322i != null) {
                    q();
                    return;
                }
                if (this.f10319c != null && (gVar2 = this.f10317a) != null && gVar2.f() != null) {
                    View view = this.f10320f;
                    ImageView imageView = this.f10319c;
                    if (view == imageView) {
                        s(imageView);
                        return;
                    } else {
                        q();
                        p(this.f10319c);
                        return;
                    }
                }
                if (this.f10318b == null || (gVar = this.f10317a) == null || gVar.h() != 1) {
                    q();
                    return;
                }
                View view2 = this.f10320f;
                TextView textView = this.f10318b;
                if (view2 == textView) {
                    s(textView);
                } else {
                    q();
                    p(this.f10318b);
                }
            }
        }

        public void s(View view) {
            if (l() && view == this.f10320f) {
                com.google.android.material.badge.b.e(this.f10321h, view, k(view));
            }
        }

        public void u(Context context) {
            int i10 = TabLayout.this.f10314x;
            if (i10 != 0) {
                Drawable drawableB = e.a.b(context, i10);
                this.f10325l = drawableB;
                if (drawableB != null && drawableB.isStateful()) {
                    this.f10325l.setState(getDrawableState());
                }
            } else {
                this.f10325l = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            Drawable rippleDrawable = gradientDrawable;
            if (TabLayout.this.f10307q != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList colorStateListA = j4.b.a(TabLayout.this.f10307q);
                boolean z10 = TabLayout.this.L;
                GradientDrawable gradientDrawable3 = gradientDrawable;
                if (z10) {
                    gradientDrawable3 = null;
                }
                rippleDrawable = new RippleDrawable(colorStateListA, gradientDrawable3, z10 ? null : gradientDrawable2);
            }
            m0.n0(this, rippleDrawable);
            TabLayout.this.invalidate();
        }

        /* JADX WARN: Removed duplicated region for block: B:90:0x0060  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void x(android.widget.TextView r8, android.widget.ImageView r9, boolean r10) {
            /*
                Method dump skipped, instruction units count: 204
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.TabView.x(android.widget.TextView, android.widget.ImageView, boolean):void");
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f10325l;
            if ((drawable == null || !drawable.isStateful()) ? false : this.f10325l.setState(drawableState)) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        int getContentHeight() {
            View[] viewArr = {this.f10318b, this.f10319c, this.f10322i};
            int iMax = 0;
            int iMin = 0;
            boolean z10 = false;
            for (int i10 = 0; i10 < 3; i10++) {
                View view = viewArr[i10];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z10 ? Math.min(iMin, view.getTop()) : view.getTop();
                    iMax = z10 ? Math.max(iMax, view.getBottom()) : view.getBottom();
                    z10 = true;
                }
            }
            return iMax - iMin;
        }

        int getContentWidth() {
            View[] viewArr = {this.f10318b, this.f10319c, this.f10322i};
            int iMax = 0;
            int iMin = 0;
            boolean z10 = false;
            for (int i10 = 0; i10 < 3; i10++) {
                View view = viewArr[i10];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z10 ? Math.min(iMin, view.getLeft()) : view.getLeft();
                    iMax = z10 ? Math.max(iMax, view.getRight()) : view.getRight();
                    z10 = true;
                }
            }
            return iMax - iMin;
        }

        public g getTab() {
            return this.f10317a;
        }

        void o() {
            setTab(null);
            setSelected(false);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            d0.h hVarM0 = d0.h.M0(accessibilityNodeInfo);
            com.google.android.material.badge.a aVar = this.f10321h;
            if (aVar != null && aVar.isVisible()) {
                hVarM0.l0(this.f10321h.h());
            }
            hVarM0.k0(h.f.a(0, 1, this.f10317a.g(), 1, false, isSelected()));
            if (isSelected()) {
                hVarM0.i0(false);
                hVarM0.a0(h.a.f11466i);
            }
            hVarM0.A0(getResources().getString(R$string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i10, int i11) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i10 = View.MeasureSpec.makeMeasureSpec(TabLayout.this.f10315y, Integer.MIN_VALUE);
            }
            super.onMeasure(i10, i11);
            if (this.f10318b != null) {
                float f10 = TabLayout.this.f10311u;
                int i12 = this.f10326m;
                ImageView imageView = this.f10319c;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f10318b;
                    if (textView != null && textView.getLineCount() > 1) {
                        f10 = TabLayout.this.f10313w;
                    }
                } else {
                    i12 = 1;
                }
                float textSize = this.f10318b.getTextSize();
                int lineCount = this.f10318b.getLineCount();
                int iD = j.d(this.f10318b);
                if (f10 != textSize || (iD >= 0 && i12 != iD)) {
                    if (TabLayout.this.G != 1 || f10 <= textSize || lineCount != 1 || ((layout = this.f10318b.getLayout()) != null && g(layout, 0, f10) <= (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        this.f10318b.setTextSize(0, f10);
                        this.f10318b.setMaxLines(i12);
                        super.onMeasure(i10, i11);
                    }
                }
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.f10317a == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            this.f10317a.l();
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z10) {
            isSelected();
            super.setSelected(z10);
            TextView textView = this.f10318b;
            if (textView != null) {
                textView.setSelected(z10);
            }
            ImageView imageView = this.f10319c;
            if (imageView != null) {
                imageView.setSelected(z10);
            }
            View view = this.f10322i;
            if (view != null) {
                view.setSelected(z10);
            }
        }

        void setTab(g gVar) {
            if (gVar != this.f10317a) {
                this.f10317a = gVar;
                t();
            }
        }

        final void t() {
            w();
            g gVar = this.f10317a;
            setSelected(gVar != null && gVar.j());
        }

        final void v() {
            setOrientation(!TabLayout.this.H ? 1 : 0);
            TextView textView = this.f10323j;
            if (textView == null && this.f10324k == null) {
                x(this.f10318b, this.f10319c, true);
            } else {
                x(textView, this.f10324k, false);
            }
        }

        final void w() {
            ViewParent parent;
            g gVar = this.f10317a;
            View viewE = gVar != null ? gVar.e() : null;
            if (viewE != null) {
                ViewParent parent2 = viewE.getParent();
                if (parent2 != this) {
                    if (parent2 != null) {
                        ((ViewGroup) parent2).removeView(viewE);
                    }
                    View view = this.f10322i;
                    if (view != null && (parent = view.getParent()) != null) {
                        ((ViewGroup) parent).removeView(this.f10322i);
                    }
                    addView(viewE);
                }
                this.f10322i = viewE;
                TextView textView = this.f10318b;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f10319c;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f10319c.setImageDrawable(null);
                }
                TextView textView2 = (TextView) viewE.findViewById(R.id.text1);
                this.f10323j = textView2;
                if (textView2 != null) {
                    this.f10326m = j.d(textView2);
                }
                this.f10324k = (ImageView) viewE.findViewById(R.id.icon);
            } else {
                View view2 = this.f10322i;
                if (view2 != null) {
                    removeView(view2);
                    this.f10322i = null;
                }
                this.f10323j = null;
                this.f10324k = null;
            }
            if (this.f10322i == null) {
                if (this.f10319c == null) {
                    m();
                }
                if (this.f10318b == null) {
                    n();
                    this.f10326m = j.d(this.f10318b);
                }
                j.o(this.f10318b, TabLayout.this.f10302l);
                if (!isSelected() || TabLayout.this.f10304n == -1) {
                    j.o(this.f10318b, TabLayout.this.f10303m);
                } else {
                    j.o(this.f10318b, TabLayout.this.f10304n);
                }
                ColorStateList colorStateList = TabLayout.this.f10305o;
                if (colorStateList != null) {
                    this.f10318b.setTextColor(colorStateList);
                }
                x(this.f10318b, this.f10319c, true);
                r();
                f(this.f10319c);
                f(this.f10318b);
            } else {
                TextView textView3 = this.f10323j;
                if (textView3 != null || this.f10324k != null) {
                    x(textView3, this.f10324k, false);
                }
            }
            if (gVar == null || TextUtils.isEmpty(gVar.f10343d)) {
                return;
            }
            setContentDescription(gVar.f10343d);
        }
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    private class b implements ViewPager.i {

        /* JADX INFO: renamed from: a */
        private boolean f10331a;

        b() {
        }

        void a(boolean z10) {
            this.f10331a = z10;
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public void onAdapterChanged(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.S == viewPager) {
                tabLayout.L(aVar2, this.f10331a);
            }
        }
    }

    public interface c {
        void a(g gVar);

        void b(g gVar);

        void c(g gVar);
    }

    public interface d extends c {
    }

    private class e extends DataSetObserver {
        e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.E();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.E();
        }
    }

    class f extends LinearLayout {

        /* JADX INFO: renamed from: a */
        ValueAnimator f10334a;

        /* JADX INFO: renamed from: b */
        private int f10335b;

        class a implements ValueAnimator.AnimatorUpdateListener {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ View f10337a;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ View f10338b;

            a(View view, View view2) {
                this.f10337a = view;
                this.f10338b = view2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                f.this.j(this.f10337a, this.f10338b, valueAnimator.getAnimatedFraction());
            }
        }

        f(Context context) {
            super(context);
            this.f10335b = -1;
            setWillNotDraw(false);
        }

        private void e() {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f10291a == -1) {
                tabLayout.f10291a = tabLayout.getSelectedTabPosition();
            }
            f(TabLayout.this.f10291a);
        }

        private void f(int i10) {
            if (TabLayout.this.f10294b0 == 0 || (TabLayout.this.getTabSelectedIndicator().getBounds().left == -1 && TabLayout.this.getTabSelectedIndicator().getBounds().right == -1)) {
                View childAt = getChildAt(i10);
                com.google.android.material.tabs.c cVar = TabLayout.this.M;
                TabLayout tabLayout = TabLayout.this;
                cVar.c(tabLayout, childAt, tabLayout.f10308r);
                TabLayout.this.f10291a = i10;
            }
        }

        public void g() {
            f(TabLayout.this.getSelectedTabPosition());
        }

        public void j(View view, View view2, float f10) {
            if (view == null || view.getWidth() <= 0) {
                Drawable drawable = TabLayout.this.f10308r;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.f10308r.getBounds().bottom);
            } else {
                com.google.android.material.tabs.c cVar = TabLayout.this.M;
                TabLayout tabLayout = TabLayout.this;
                cVar.d(tabLayout, view, view2, f10, tabLayout.f10308r);
            }
            m0.Z(this);
        }

        private void k(boolean z10, int i10, int i11) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f10291a == i10) {
                return;
            }
            View childAt = getChildAt(tabLayout.getSelectedTabPosition());
            View childAt2 = getChildAt(i10);
            if (childAt2 == null) {
                g();
                return;
            }
            TabLayout.this.f10291a = i10;
            a aVar = new a(childAt, childAt2);
            if (!z10) {
                this.f10334a.removeAllUpdateListeners();
                this.f10334a.addUpdateListener(aVar);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f10334a = valueAnimator;
            valueAnimator.setInterpolator(TabLayout.this.N);
            valueAnimator.setDuration(i11);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(aVar);
            valueAnimator.start();
        }

        void c(int i10, int i11) {
            ValueAnimator valueAnimator = this.f10334a;
            if (valueAnimator != null && valueAnimator.isRunning() && TabLayout.this.f10291a != i10) {
                this.f10334a.cancel();
            }
            k(true, i10, i11);
        }

        boolean d() {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                if (getChildAt(i10).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            int height;
            int iHeight = TabLayout.this.f10308r.getBounds().height();
            if (iHeight < 0) {
                iHeight = TabLayout.this.f10308r.getIntrinsicHeight();
            }
            int i10 = TabLayout.this.F;
            if (i10 == 0) {
                height = getHeight() - iHeight;
                iHeight = getHeight();
            } else if (i10 != 1) {
                height = 0;
                if (i10 != 2) {
                    iHeight = i10 != 3 ? 0 : getHeight();
                }
            } else {
                height = (getHeight() - iHeight) / 2;
                iHeight = (getHeight() + iHeight) / 2;
            }
            if (TabLayout.this.f10308r.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.f10308r.getBounds();
                TabLayout.this.f10308r.setBounds(bounds.left, height, bounds.right, iHeight);
                TabLayout.this.f10308r.draw(canvas);
            }
            super.draw(canvas);
        }

        void h(int i10, float f10) {
            TabLayout.this.f10291a = Math.round(i10 + f10);
            ValueAnimator valueAnimator = this.f10334a;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f10334a.cancel();
            }
            j(getChildAt(i10), getChildAt(i10 + 1), f10);
        }

        void i(int i10) {
            Rect bounds = TabLayout.this.f10308r.getBounds();
            TabLayout.this.f10308r.setBounds(bounds.left, 0, bounds.right, i10);
            requestLayout();
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            ValueAnimator valueAnimator = this.f10334a;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                e();
            } else {
                k(false, TabLayout.this.getSelectedTabPosition(), -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (View.MeasureSpec.getMode(i10) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z10 = true;
            if (tabLayout.D == 1 || tabLayout.G == 2) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i12 = 0; i12 < childCount; i12++) {
                    View childAt = getChildAt(i12);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (((int) ViewUtils.dpToPx(getContext(), 16)) * 2)) {
                    boolean z11 = false;
                    for (int i13 = 0; i13 < childCount; i13++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i13).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                            layoutParams.width = iMax;
                            layoutParams.weight = 0.0f;
                            z11 = true;
                        }
                    }
                    z10 = z11;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.D = 0;
                    tabLayout2.T(false);
                }
                if (z10) {
                    super.onMeasure(i10, i11);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i10) {
            super.onRtlPropertiesChanged(i10);
        }
    }

    public static class g {

        /* JADX INFO: renamed from: a */
        private Object f10340a;

        /* JADX INFO: renamed from: b */
        private Drawable f10341b;

        /* JADX INFO: renamed from: c */
        private CharSequence f10342c;

        /* JADX INFO: renamed from: d */
        private CharSequence f10343d;

        /* JADX INFO: renamed from: f */
        private View f10345f;

        /* JADX INFO: renamed from: h */
        public TabLayout f10347h;

        /* JADX INFO: renamed from: i */
        public TabView f10348i;

        /* JADX INFO: renamed from: e */
        private int f10344e = -1;

        /* JADX INFO: renamed from: g */
        private int f10346g = 1;

        /* JADX INFO: renamed from: j */
        private int f10349j = -1;

        public View e() {
            return this.f10345f;
        }

        public Drawable f() {
            return this.f10341b;
        }

        public int g() {
            return this.f10344e;
        }

        public int h() {
            return this.f10346g;
        }

        public CharSequence i() {
            return this.f10342c;
        }

        public boolean j() {
            TabLayout tabLayout = this.f10347h;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            int selectedTabPosition = tabLayout.getSelectedTabPosition();
            return selectedTabPosition != -1 && selectedTabPosition == this.f10344e;
        }

        void k() {
            this.f10347h = null;
            this.f10348i = null;
            this.f10340a = null;
            this.f10341b = null;
            this.f10349j = -1;
            this.f10342c = null;
            this.f10343d = null;
            this.f10344e = -1;
            this.f10345f = null;
        }

        public void l() {
            TabLayout tabLayout = this.f10347h;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.J(this);
        }

        public g m(CharSequence charSequence) {
            this.f10343d = charSequence;
            s();
            return this;
        }

        public g n(int i10) {
            return o(LayoutInflater.from(this.f10348i.getContext()).inflate(i10, (ViewGroup) this.f10348i, false));
        }

        public g o(View view) {
            this.f10345f = view;
            s();
            return this;
        }

        public g p(Drawable drawable) {
            this.f10341b = drawable;
            TabLayout tabLayout = this.f10347h;
            if (tabLayout.D == 1 || tabLayout.G == 2) {
                tabLayout.T(true);
            }
            s();
            if (com.google.android.material.badge.b.f8945a && this.f10348i.l() && this.f10348i.f10321h.isVisible()) {
                this.f10348i.invalidate();
            }
            return this;
        }

        void q(int i10) {
            this.f10344e = i10;
        }

        public g r(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f10343d) && !TextUtils.isEmpty(charSequence)) {
                this.f10348i.setContentDescription(charSequence);
            }
            this.f10342c = charSequence;
            s();
            return this;
        }

        void s() {
            TabView tabView = this.f10348i;
            if (tabView != null) {
                tabView.t();
            }
        }
    }

    public static class h implements ViewPager.j {

        /* JADX INFO: renamed from: a */
        private final WeakReference f10350a;

        /* JADX INFO: renamed from: b */
        private int f10351b;

        /* JADX INFO: renamed from: c */
        private int f10352c;

        public h(TabLayout tabLayout) {
            this.f10350a = new WeakReference(tabLayout);
        }

        void a() {
            this.f10352c = 0;
            this.f10351b = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageScrollStateChanged(int i10) {
            this.f10351b = this.f10352c;
            this.f10352c = i10;
            TabLayout tabLayout = (TabLayout) this.f10350a.get();
            if (tabLayout != null) {
                tabLayout.U(this.f10352c);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageScrolled(int i10, float f10, int i11) {
            TabLayout tabLayout = (TabLayout) this.f10350a.get();
            if (tabLayout != null) {
                int i12 = this.f10352c;
                tabLayout.O(i10, f10, i12 != 2 || this.f10351b == 1, (i12 == 2 && this.f10351b == 0) ? false : true, false);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageSelected(int i10) {
            TabLayout tabLayout = (TabLayout) this.f10350a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
                return;
            }
            int i11 = this.f10352c;
            tabLayout.K(tabLayout.A(i10), i11 == 0 || (i11 == 2 && this.f10351b == 0));
        }
    }

    public static class i implements d {

        /* JADX INFO: renamed from: a */
        private final ViewPager f10353a;

        public i(ViewPager viewPager) {
            this.f10353a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void a(g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void b(g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void c(g gVar) {
            this.f10353a.setCurrentItem(gVar.g());
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    private boolean B() {
        return getTabMode() == 0 || getTabMode() == 2;
    }

    private void I(int i10) {
        TabView tabView = (TabView) this.f10297f.getChildAt(i10);
        this.f10297f.removeViewAt(i10);
        if (tabView != null) {
            tabView.o();
            this.f10296c0.a(tabView);
        }
        requestLayout();
    }

    private void Q(ViewPager viewPager, boolean z10, boolean z11) {
        ViewPager viewPager2 = this.S;
        if (viewPager2 != null) {
            h hVar = this.V;
            if (hVar != null) {
                viewPager2.I(hVar);
            }
            b bVar = this.W;
            if (bVar != null) {
                this.S.H(bVar);
            }
        }
        c cVar = this.Q;
        if (cVar != null) {
            H(cVar);
            this.Q = null;
        }
        if (viewPager != null) {
            this.S = viewPager;
            if (this.V == null) {
                this.V = new h(this);
            }
            this.V.a();
            viewPager.c(this.V);
            i iVar = new i(viewPager);
            this.Q = iVar;
            g(iVar);
            androidx.viewpager.widget.a adapter = viewPager.getAdapter();
            if (adapter != null) {
                L(adapter, z10);
            }
            if (this.W == null) {
                this.W = new b();
            }
            this.W.a(z10);
            viewPager.b(this.W);
            M(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.S = null;
            L(null, false);
        }
        this.f10292a0 = z11;
    }

    private void R() {
        int size = this.f10293b.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((g) this.f10293b.get(i10)).s();
        }
    }

    private void S(LinearLayout.LayoutParams layoutParams) {
        if (this.G == 1 && this.D == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    private int getDefaultHeight() {
        int size = this.f10293b.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            g gVar = (g) this.f10293b.get(i10);
            if (gVar == null || gVar.f() == null || TextUtils.isEmpty(gVar.i())) {
                i10++;
            } else if (!this.H) {
                return 72;
            }
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i10 = this.f10316z;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.G;
        if (i11 == 0 || i11 == 2) {
            return this.B;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f10297f.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void k(TabItem tabItem) {
        g gVarD = D();
        CharSequence charSequence = tabItem.f10286a;
        if (charSequence != null) {
            gVarD.r(charSequence);
        }
        Drawable drawable = tabItem.f10287b;
        if (drawable != null) {
            gVarD.p(drawable);
        }
        int i10 = tabItem.f10288c;
        if (i10 != 0) {
            gVarD.n(i10);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            gVarD.m(tabItem.getContentDescription());
        }
        h(gVarD);
    }

    private void l(g gVar) {
        TabView tabView = gVar.f10348i;
        tabView.setSelected(false);
        tabView.setActivated(false);
        this.f10297f.addView(tabView, gVar.g(), t());
    }

    private void m(View view) {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        k((TabItem) view);
    }

    private void n(int i10) {
        if (i10 == -1) {
            return;
        }
        if (getWindowToken() == null || !m0.O(this) || this.f10297f.d()) {
            M(i10, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int iQ = q(i10, 0.0f);
        if (scrollX != iQ) {
            z();
            this.R.setIntValues(scrollX, iQ);
            this.R.start();
        }
        this.f10297f.c(i10, this.E);
    }

    private void o(int i10) {
        if (i10 == 0) {
            Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
        } else if (i10 == 1) {
            this.f10297f.setGravity(1);
            return;
        } else if (i10 != 2) {
            return;
        }
        this.f10297f.setGravity(8388611);
    }

    private void p() {
        int i10 = this.G;
        m0.z0(this.f10297f, (i10 == 0 || i10 == 2) ? Math.max(0, this.C - this.f10298h) : 0, 0, 0, 0);
        int i11 = this.G;
        if (i11 == 0) {
            o(this.D);
        } else if (i11 == 1 || i11 == 2) {
            if (this.D == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.f10297f.setGravity(1);
        }
        T(true);
    }

    private int q(int i10, float f10) {
        View childAt;
        int i11 = this.G;
        if ((i11 != 0 && i11 != 2) || (childAt = this.f10297f.getChildAt(i10)) == null) {
            return 0;
        }
        int i12 = i10 + 1;
        View childAt2 = i12 < this.f10297f.getChildCount() ? this.f10297f.getChildAt(i12) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i13 = (int) ((width + width2) * 0.5f * f10);
        return m0.v(this) == 0 ? left + i13 : left - i13;
    }

    private void r(g gVar, int i10) {
        gVar.q(i10);
        this.f10293b.add(i10, gVar);
        int size = this.f10293b.size();
        int i11 = -1;
        for (int i12 = i10 + 1; i12 < size; i12++) {
            if (((g) this.f10293b.get(i12)).g() == this.f10291a) {
                i11 = i12;
            }
            ((g) this.f10293b.get(i12)).q(i12);
        }
        this.f10291a = i11;
    }

    private static ColorStateList s(int i10, int i11) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i11, i10});
    }

    private void setSelectedTabView(int i10) {
        int childCount = this.f10297f.getChildCount();
        if (i10 < childCount) {
            int i11 = 0;
            while (i11 < childCount) {
                View childAt = this.f10297f.getChildAt(i11);
                if ((i11 != i10 || childAt.isSelected()) && (i11 == i10 || !childAt.isSelected())) {
                    childAt.setSelected(i11 == i10);
                    childAt.setActivated(i11 == i10);
                } else {
                    childAt.setSelected(i11 == i10);
                    childAt.setActivated(i11 == i10);
                    if (childAt instanceof TabView) {
                        ((TabView) childAt).w();
                    }
                }
                i11++;
            }
        }
    }

    private LinearLayout.LayoutParams t() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        S(layoutParams);
        return layoutParams;
    }

    private TabView v(g gVar) {
        c0.e eVar = this.f10296c0;
        TabView tabView = eVar != null ? (TabView) eVar.b() : null;
        if (tabView == null) {
            tabView = new TabView(getContext());
        }
        tabView.setTab(gVar);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(gVar.f10343d)) {
            tabView.setContentDescription(gVar.f10342c);
        } else {
            tabView.setContentDescription(gVar.f10343d);
        }
        return tabView;
    }

    private void w(g gVar) {
        for (int size = this.P.size() - 1; size >= 0; size--) {
            ((c) this.P.get(size)).a(gVar);
        }
    }

    private void x(g gVar) {
        for (int size = this.P.size() - 1; size >= 0; size--) {
            ((c) this.P.get(size)).c(gVar);
        }
    }

    private void y(g gVar) {
        for (int size = this.P.size() - 1; size >= 0; size--) {
            ((c) this.P.get(size)).b(gVar);
        }
    }

    private void z() {
        if (this.R == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.R = valueAnimator;
            valueAnimator.setInterpolator(this.N);
            this.R.setDuration(this.E);
            this.R.addUpdateListener(new a());
        }
    }

    public g A(int i10) {
        if (i10 < 0 || i10 >= getTabCount()) {
            return null;
        }
        return (g) this.f10293b.get(i10);
    }

    public boolean C() {
        return this.I;
    }

    public g D() {
        g gVarU = u();
        gVarU.f10347h = this;
        gVarU.f10348i = v(gVarU);
        if (gVarU.f10349j != -1) {
            gVarU.f10348i.setId(gVarU.f10349j);
        }
        return gVarU;
    }

    void E() {
        int currentItem;
        G();
        androidx.viewpager.widget.a aVar = this.T;
        if (aVar != null) {
            int count = aVar.getCount();
            for (int i10 = 0; i10 < count; i10++) {
                j(D().r(this.T.getPageTitle(i10)), false);
            }
            ViewPager viewPager = this.S;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            J(A(currentItem));
        }
    }

    protected boolean F(g gVar) {
        return f10290e0.a(gVar);
    }

    public void G() {
        for (int childCount = this.f10297f.getChildCount() - 1; childCount >= 0; childCount--) {
            I(childCount);
        }
        Iterator it = this.f10293b.iterator();
        while (it.hasNext()) {
            g gVar = (g) it.next();
            it.remove();
            gVar.k();
            F(gVar);
        }
        this.f10295c = null;
    }

    public void H(c cVar) {
        this.P.remove(cVar);
    }

    public void J(g gVar) {
        K(gVar, true);
    }

    public void K(g gVar, boolean z10) {
        g gVar2 = this.f10295c;
        if (gVar2 == gVar) {
            if (gVar2 != null) {
                w(gVar);
                n(gVar.g());
                return;
            }
            return;
        }
        int iG = gVar != null ? gVar.g() : -1;
        if (z10) {
            if ((gVar2 == null || gVar2.g() == -1) && iG != -1) {
                M(iG, 0.0f, true);
            } else {
                n(iG);
            }
            if (iG != -1) {
                setSelectedTabView(iG);
            }
        }
        this.f10295c = gVar;
        if (gVar2 != null && gVar2.f10347h != null) {
            y(gVar2);
        }
        if (gVar != null) {
            x(gVar);
        }
    }

    void L(androidx.viewpager.widget.a aVar, boolean z10) {
        DataSetObserver dataSetObserver;
        androidx.viewpager.widget.a aVar2 = this.T;
        if (aVar2 != null && (dataSetObserver = this.U) != null) {
            aVar2.unregisterDataSetObserver(dataSetObserver);
        }
        this.T = aVar;
        if (z10 && aVar != null) {
            if (this.U == null) {
                this.U = new e();
            }
            aVar.registerDataSetObserver(this.U);
        }
        E();
    }

    public void M(int i10, float f10, boolean z10) {
        N(i10, f10, z10, true);
    }

    public void N(int i10, float f10, boolean z10, boolean z11) {
        O(i10, f10, z10, z11, true);
    }

    void O(int i10, float f10, boolean z10, boolean z11, boolean z12) {
        int iRound = Math.round(i10 + f10);
        if (iRound < 0 || iRound >= this.f10297f.getChildCount()) {
            return;
        }
        if (z11) {
            this.f10297f.h(i10, f10);
        }
        ValueAnimator valueAnimator = this.R;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.R.cancel();
        }
        int iQ = q(i10, f10);
        int scrollX = getScrollX();
        boolean z13 = (i10 < getSelectedTabPosition() && iQ >= scrollX) || (i10 > getSelectedTabPosition() && iQ <= scrollX) || i10 == getSelectedTabPosition();
        if (m0.v(this) == 1) {
            z13 = (i10 < getSelectedTabPosition() && iQ <= scrollX) || (i10 > getSelectedTabPosition() && iQ >= scrollX) || i10 == getSelectedTabPosition();
        }
        if (z13 || this.f10294b0 == 1 || z12) {
            if (i10 < 0) {
                iQ = 0;
            }
            scrollTo(iQ, 0);
        }
        if (z10) {
            setSelectedTabView(iRound);
        }
    }

    public void P(ViewPager viewPager, boolean z10) {
        Q(viewPager, z10, false);
    }

    void T(boolean z10) {
        for (int i10 = 0; i10 < this.f10297f.getChildCount(); i10++) {
            View childAt = this.f10297f.getChildAt(i10);
            childAt.setMinimumWidth(getTabMinWidth());
            S((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z10) {
                childAt.requestLayout();
            }
        }
    }

    void U(int i10) {
        this.f10294b0 = i10;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        m(view);
    }

    public void g(c cVar) {
        if (this.P.contains(cVar)) {
            return;
        }
        this.P.add(cVar);
    }

    public int getSelectedTabPosition() {
        g gVar = this.f10295c;
        if (gVar != null) {
            return gVar.g();
        }
        return -1;
    }

    public int getTabCount() {
        return this.f10293b.size();
    }

    public int getTabGravity() {
        return this.D;
    }

    public ColorStateList getTabIconTint() {
        return this.f10306p;
    }

    public int getTabIndicatorAnimationMode() {
        return this.K;
    }

    public int getTabIndicatorGravity() {
        return this.F;
    }

    int getTabMaxWidth() {
        return this.f10315y;
    }

    public int getTabMode() {
        return this.G;
    }

    public ColorStateList getTabRippleColor() {
        return this.f10307q;
    }

    public Drawable getTabSelectedIndicator() {
        return this.f10308r;
    }

    public ColorStateList getTabTextColors() {
        return this.f10305o;
    }

    public void h(g gVar) {
        j(gVar, this.f10293b.isEmpty());
    }

    public void i(g gVar, int i10, boolean z10) {
        if (gVar.f10347h != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        r(gVar, i10);
        l(gVar);
        if (z10) {
            gVar.l();
        }
    }

    public void j(g gVar, boolean z10) {
        i(gVar, this.f10293b.size(), z10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.j.e(this);
        if (this.S == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                Q((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f10292a0) {
            setupWithViewPager(null);
            this.f10292a0 = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        for (int i10 = 0; i10 < this.f10297f.getChildCount(); i10++) {
            View childAt = this.f10297f.getChildAt(i10);
            if (childAt instanceof TabView) {
                ((TabView) childAt).j(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        d0.h.M0(accessibilityNodeInfo).j0(h.e.b(1, getTabCount(), false, 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return B() && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:74:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.getContext()
            int r1 = r6.getDefaultHeight()
            float r0 = com.google.android.material.internal.ViewUtils.dpToPx(r0, r1)
            int r0 = java.lang.Math.round(r0)
            int r1 = android.view.View.MeasureSpec.getMode(r8)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 0
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = 1
            if (r1 == r2) goto L2e
            if (r1 == 0) goto L1f
            goto L41
        L1f:
            int r8 = r6.getPaddingTop()
            int r0 = r0 + r8
            int r8 = r6.getPaddingBottom()
            int r0 = r0 + r8
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r4)
            goto L41
        L2e:
            int r1 = r6.getChildCount()
            if (r1 != r5) goto L41
            int r1 = android.view.View.MeasureSpec.getSize(r8)
            if (r1 < r0) goto L41
            android.view.View r1 = r6.getChildAt(r3)
            r1.setMinimumHeight(r0)
        L41:
            int r0 = android.view.View.MeasureSpec.getSize(r7)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            if (r1 == 0) goto L5f
            int r1 = r6.A
            if (r1 <= 0) goto L50
            goto L5d
        L50:
            float r0 = (float) r0
            android.content.Context r1 = r6.getContext()
            r2 = 56
            float r1 = com.google.android.material.internal.ViewUtils.dpToPx(r1, r2)
            float r0 = r0 - r1
            int r1 = (int) r0
        L5d:
            r6.f10315y = r1
        L5f:
            super.onMeasure(r7, r8)
            int r7 = r6.getChildCount()
            if (r7 != r5) goto La9
            android.view.View r7 = r6.getChildAt(r3)
            int r0 = r6.G
            if (r0 == 0) goto L81
            if (r0 == r5) goto L76
            r1 = 2
            if (r0 == r1) goto L81
            goto La9
        L76:
            int r0 = r7.getMeasuredWidth()
            int r1 = r6.getMeasuredWidth()
            if (r0 == r1) goto La9
            goto L8b
        L81:
            int r0 = r7.getMeasuredWidth()
            int r1 = r6.getMeasuredWidth()
            if (r0 >= r1) goto La9
        L8b:
            int r0 = r6.getPaddingTop()
            int r1 = r6.getPaddingBottom()
            int r0 = r0 + r1
            android.view.ViewGroup$LayoutParams r1 = r7.getLayoutParams()
            int r1 = r1.height
            int r8 = android.view.ViewGroup.getChildMeasureSpec(r8, r0, r1)
            int r6 = r6.getMeasuredWidth()
            int r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r4)
            r7.measure(r6, r8)
        La9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || B()) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        com.google.android.material.shape.j.d(this, f10);
    }

    public void setInlineLabel(boolean z10) {
        if (this.H != z10) {
            this.H = z10;
            for (int i10 = 0; i10 < this.f10297f.getChildCount(); i10++) {
                View childAt = this.f10297f.getChildAt(i10);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).v();
                }
            }
            p();
        }
    }

    public void setInlineLabelResource(int i10) {
        setInlineLabel(getResources().getBoolean(i10));
    }

    @Deprecated
    public void setOnTabSelectedListener(d dVar) {
        setOnTabSelectedListener((c) dVar);
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        z();
        this.R.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable drawableMutate = v.a.r(drawable).mutate();
        this.f10308r = drawableMutate;
        com.google.android.material.drawable.a.n(drawableMutate, this.f10309s);
        int intrinsicHeight = this.J;
        if (intrinsicHeight == -1) {
            intrinsicHeight = this.f10308r.getIntrinsicHeight();
        }
        this.f10297f.i(intrinsicHeight);
    }

    public void setSelectedTabIndicatorColor(int i10) {
        this.f10309s = i10;
        com.google.android.material.drawable.a.n(this.f10308r, i10);
        T(false);
    }

    public void setSelectedTabIndicatorGravity(int i10) {
        if (this.F != i10) {
            this.F = i10;
            m0.Z(this.f10297f);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i10) {
        this.J = i10;
        this.f10297f.i(i10);
    }

    public void setTabGravity(int i10) {
        if (this.D != i10) {
            this.D = i10;
            p();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f10306p != colorStateList) {
            this.f10306p = colorStateList;
            R();
        }
    }

    public void setTabIconTintResource(int i10) {
        setTabIconTint(e.a.a(getContext(), i10));
    }

    public void setTabIndicatorAnimationMode(int i10) {
        this.K = i10;
        if (i10 == 0) {
            this.M = new com.google.android.material.tabs.c();
            return;
        }
        if (i10 == 1) {
            this.M = new com.google.android.material.tabs.a();
        } else {
            if (i10 == 2) {
                this.M = new com.google.android.material.tabs.b();
                return;
            }
            throw new IllegalArgumentException(i10 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z10) {
        this.I = z10;
        this.f10297f.g();
        m0.Z(this.f10297f);
    }

    public void setTabMode(int i10) {
        if (i10 != this.G) {
            this.G = i10;
            p();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f10307q != colorStateList) {
            this.f10307q = colorStateList;
            for (int i10 = 0; i10 < this.f10297f.getChildCount(); i10++) {
                View childAt = this.f10297f.getChildAt(i10);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).u(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(int i10) {
        setTabRippleColor(e.a.a(getContext(), i10));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f10305o != colorStateList) {
            this.f10305o = colorStateList;
            R();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(androidx.viewpager.widget.a aVar) {
        L(aVar, false);
    }

    public void setUnboundedRipple(boolean z10) {
        if (this.L != z10) {
            this.L = z10;
            for (int i10 = 0; i10 < this.f10297f.getChildCount(); i10++) {
                View childAt = this.f10297f.getChildAt(i10);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).u(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(int i10) {
        setUnboundedRipple(getResources().getBoolean(i10));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        P(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    protected g u() {
        g gVar = (g) f10290e0.b();
        return gVar == null ? new g() : gVar;
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.tabStyle);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i10) {
        m(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void setOnTabSelectedListener(c cVar) {
        c cVar2 = this.O;
        if (cVar2 != null) {
            H(cVar2);
        }
        this.O = cVar;
        if (cVar != null) {
            g(cVar);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TabLayout(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f10289d0;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f10291a = -1;
        this.f10293b = new ArrayList();
        this.f10304n = -1;
        this.f10309s = 0;
        this.f10315y = Integer.MAX_VALUE;
        this.J = -1;
        this.P = new ArrayList();
        this.f10296c0 = new c0.f(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        f fVar = new f(context2);
        this.f10297f = fVar;
        super.addView(fVar, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.TabLayout, i10, i11, R$styleable.TabLayout_tabTextAppearance);
        ColorStateList colorStateListG = com.google.android.material.drawable.a.g(getBackground());
        if (colorStateListG != null) {
            com.google.android.material.shape.i iVar = new com.google.android.material.shape.i();
            iVar.setFillColor(colorStateListG);
            iVar.initializeElevationOverlay(context2);
            iVar.setElevation(m0.r(this));
            m0.n0(this, iVar);
        }
        setSelectedTabIndicator(i4.c.e(context2, typedArrayObtainStyledAttributes, R$styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorColor(typedArrayObtainStyledAttributes.getColor(R$styleable.TabLayout_tabIndicatorColor, 0));
        fVar.i(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TabLayout_tabIndicatorHeight, -1));
        setSelectedTabIndicatorGravity(typedArrayObtainStyledAttributes.getInt(R$styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorAnimationMode(typedArrayObtainStyledAttributes.getInt(R$styleable.TabLayout_tabIndicatorAnimationMode, 0));
        setTabIndicatorFullWidth(typedArrayObtainStyledAttributes.getBoolean(R$styleable.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TabLayout_tabPadding, 0);
        this.f10301k = dimensionPixelSize;
        this.f10300j = dimensionPixelSize;
        this.f10299i = dimensionPixelSize;
        this.f10298h = dimensionPixelSize;
        this.f10298h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.f10299i = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingTop, this.f10299i);
        this.f10300j = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingEnd, this.f10300j);
        this.f10301k = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingBottom, this.f10301k);
        if (ThemeEnforcement.isMaterial3Theme(context2)) {
            this.f10302l = R$attr.textAppearanceTitleSmall;
        } else {
            this.f10302l = R$attr.textAppearanceButton;
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.TabLayout_tabTextAppearance, R$style.TextAppearance_Design_Tab);
        this.f10303m = resourceId;
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(resourceId, androidx.appcompat.R$styleable.TextAppearance);
        try {
            this.f10311u = typedArrayObtainStyledAttributes2.getDimensionPixelSize(androidx.appcompat.R$styleable.TextAppearance_android_textSize, 0);
            this.f10305o = i4.c.a(context2, typedArrayObtainStyledAttributes2, androidx.appcompat.R$styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes2.recycle();
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.TabLayout_tabSelectedTextAppearance)) {
                this.f10304n = typedArrayObtainStyledAttributes.getResourceId(R$styleable.TabLayout_tabSelectedTextAppearance, resourceId);
            }
            int i12 = this.f10304n;
            if (i12 != -1) {
                typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(i12, androidx.appcompat.R$styleable.TextAppearance);
                try {
                    this.f10312v = typedArrayObtainStyledAttributes2.getDimensionPixelSize(androidx.appcompat.R$styleable.TextAppearance_android_textSize, (int) this.f10311u);
                    ColorStateList colorStateListA = i4.c.a(context2, typedArrayObtainStyledAttributes2, androidx.appcompat.R$styleable.TextAppearance_android_textColor);
                    if (colorStateListA != null) {
                        this.f10305o = s(this.f10305o.getDefaultColor(), colorStateListA.getColorForState(new int[]{16842913}, colorStateListA.getDefaultColor()));
                    }
                } finally {
                }
            }
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.TabLayout_tabTextColor)) {
                this.f10305o = i4.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.TabLayout_tabTextColor);
            }
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.TabLayout_tabSelectedTextColor)) {
                this.f10305o = s(this.f10305o.getDefaultColor(), typedArrayObtainStyledAttributes.getColor(R$styleable.TabLayout_tabSelectedTextColor, 0));
            }
            this.f10306p = i4.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.TabLayout_tabIconTint);
            this.f10310t = ViewUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R$styleable.TabLayout_tabIconTintMode, -1), null);
            this.f10307q = i4.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.TabLayout_tabRippleColor);
            this.E = typedArrayObtainStyledAttributes.getInt(R$styleable.TabLayout_tabIndicatorAnimationDuration, 300);
            this.N = g4.i.g(context2, R$attr.motionEasingEmphasizedInterpolator, x3.a.f16369b);
            this.f10316z = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TabLayout_tabMinWidth, -1);
            this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TabLayout_tabMaxWidth, -1);
            this.f10314x = typedArrayObtainStyledAttributes.getResourceId(R$styleable.TabLayout_tabBackground, 0);
            this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TabLayout_tabContentStart, 0);
            this.G = typedArrayObtainStyledAttributes.getInt(R$styleable.TabLayout_tabMode, 1);
            this.D = typedArrayObtainStyledAttributes.getInt(R$styleable.TabLayout_tabGravity, 0);
            this.H = typedArrayObtainStyledAttributes.getBoolean(R$styleable.TabLayout_tabInlineLabel, false);
            this.L = typedArrayObtainStyledAttributes.getBoolean(R$styleable.TabLayout_tabUnboundedRipple, false);
            typedArrayObtainStyledAttributes.recycle();
            Resources resources = getResources();
            this.f10313w = resources.getDimensionPixelSize(R$dimen.design_tab_text_size_2line);
            this.B = resources.getDimensionPixelSize(R$dimen.design_tab_scrollable_min_width);
            p();
        } finally {
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        m(view);
    }

    public void setSelectedTabIndicator(int i10) {
        if (i10 != 0) {
            setSelectedTabIndicator(e.a.b(getContext(), i10));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
