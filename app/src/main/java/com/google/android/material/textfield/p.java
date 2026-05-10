package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;
import d0.c;

/* JADX INFO: loaded from: classes.dex */
class p extends s {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final boolean f10450s = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f10451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f10452f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TimeInterpolator f10453g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AutoCompleteTextView f10454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final View.OnClickListener f10455i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View.OnFocusChangeListener f10456j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final c.a f10457k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f10458l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f10459m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f10460n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f10461o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private AccessibilityManager f10462p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ValueAnimator f10463q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ValueAnimator f10464r;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            p.this.r();
            p.this.f10464r.start();
        }
    }

    p(r rVar) {
        super(rVar);
        this.f10455i = new View.OnClickListener() { // from class: com.google.android.material.textfield.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10446a.J(view);
            }
        };
        this.f10456j = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.m
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z10) {
                this.f10447a.K(view, z10);
            }
        };
        this.f10457k = new c.a() { // from class: com.google.android.material.textfield.n
            @Override // d0.c.a
            public final void onTouchExplorationStateChanged(boolean z10) {
                this.f10448a.L(z10);
            }
        };
        this.f10461o = Long.MAX_VALUE;
        this.f10452f = g4.i.f(rVar.getContext(), R$attr.motionDurationShort3, 67);
        this.f10451e = g4.i.f(rVar.getContext(), R$attr.motionDurationShort3, 50);
        this.f10453g = g4.i.g(rVar.getContext(), R$attr.motionEasingLinearInterpolator, x3.a.f16368a);
    }

    private static AutoCompleteTextView D(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    private ValueAnimator E(int i10, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f10453g);
        valueAnimatorOfFloat.setDuration(i10);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f10443a.I(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private void F() {
        this.f10464r = E(this.f10452f, 0.0f, 1.0f);
        ValueAnimator valueAnimatorE = E(this.f10451e, 1.0f, 0.0f);
        this.f10463q = valueAnimatorE;
        valueAnimatorE.addListener(new a());
    }

    private boolean G() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f10461o;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        boolean zIsPopupShowing = this.f10454h.isPopupShowing();
        O(zIsPopupShowing);
        this.f10459m = zIsPopupShowing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(ValueAnimator valueAnimator) {
        this.f10499d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(View view) {
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(View view, boolean z10) {
        this.f10458l = z10;
        r();
        if (z10) {
            return;
        }
        O(false);
        this.f10459m = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(boolean z10) {
        AutoCompleteTextView autoCompleteTextView = this.f10454h;
        if (autoCompleteTextView == null || q.a(autoCompleteTextView)) {
            return;
        }
        m0.t0(this.f10499d, z10 ? 2 : 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean M(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (G()) {
                this.f10459m = false;
            }
            Q();
            R();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N() {
        R();
        O(false);
    }

    private void O(boolean z10) {
        if (this.f10460n != z10) {
            this.f10460n = z10;
            this.f10464r.cancel();
            this.f10463q.start();
        }
    }

    private void P() {
        this.f10454h.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.j
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f10444a.M(view, motionEvent);
            }
        });
        if (f10450s) {
            this.f10454h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.k
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public final void onDismiss() {
                    this.f10445a.N();
                }
            });
        }
        this.f10454h.setThreshold(0);
    }

    private void Q() {
        if (this.f10454h == null) {
            return;
        }
        if (G()) {
            this.f10459m = false;
        }
        if (this.f10459m) {
            this.f10459m = false;
            return;
        }
        if (f10450s) {
            O(!this.f10460n);
        } else {
            this.f10460n = !this.f10460n;
            r();
        }
        if (!this.f10460n) {
            this.f10454h.dismissDropDown();
        } else {
            this.f10454h.requestFocus();
            this.f10454h.showDropDown();
        }
    }

    private void R() {
        this.f10459m = true;
        this.f10461o = System.currentTimeMillis();
    }

    @Override // com.google.android.material.textfield.s
    public void a(Editable editable) {
        if (this.f10462p.isTouchExplorationEnabled() && q.a(this.f10454h) && !this.f10499d.hasFocus()) {
            this.f10454h.dismissDropDown();
        }
        this.f10454h.post(new Runnable() { // from class: com.google.android.material.textfield.o
            @Override // java.lang.Runnable
            public final void run() {
                this.f10449a.H();
            }
        });
    }

    @Override // com.google.android.material.textfield.s
    int c() {
        return R$string.exposed_dropdown_menu_content_description;
    }

    @Override // com.google.android.material.textfield.s
    int d() {
        return f10450s ? R$drawable.mtrl_dropdown_arrow : R$drawable.mtrl_ic_arrow_drop_down;
    }

    @Override // com.google.android.material.textfield.s
    View.OnFocusChangeListener e() {
        return this.f10456j;
    }

    @Override // com.google.android.material.textfield.s
    View.OnClickListener f() {
        return this.f10455i;
    }

    @Override // com.google.android.material.textfield.s
    public c.a h() {
        return this.f10457k;
    }

    @Override // com.google.android.material.textfield.s
    boolean i(int i10) {
        return i10 != 0;
    }

    @Override // com.google.android.material.textfield.s
    boolean j() {
        return true;
    }

    @Override // com.google.android.material.textfield.s
    boolean k() {
        return this.f10458l;
    }

    @Override // com.google.android.material.textfield.s
    boolean l() {
        return true;
    }

    @Override // com.google.android.material.textfield.s
    boolean m() {
        return this.f10460n;
    }

    @Override // com.google.android.material.textfield.s
    public void n(EditText editText) {
        this.f10454h = D(editText);
        P();
        this.f10496a.setErrorIconDrawable((Drawable) null);
        if (!q.a(editText) && this.f10462p.isTouchExplorationEnabled()) {
            m0.t0(this.f10499d, 2);
        }
        this.f10496a.setEndIconVisible(true);
    }

    @Override // com.google.android.material.textfield.s
    public void o(View view, d0.h hVar) {
        if (!q.a(this.f10454h)) {
            hVar.h0(Spinner.class.getName());
        }
        if (hVar.S()) {
            hVar.s0(null);
        }
    }

    @Override // com.google.android.material.textfield.s
    public void p(View view, AccessibilityEvent accessibilityEvent) {
        if (!this.f10462p.isEnabled() || q.a(this.f10454h)) {
            return;
        }
        boolean z10 = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f10460n && !this.f10454h.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z10) {
            Q();
            R();
        }
    }

    @Override // com.google.android.material.textfield.s
    void s() {
        F();
        this.f10462p = (AccessibilityManager) this.f10498c.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.s
    boolean t() {
        return true;
    }

    @Override // com.google.android.material.textfield.s
    void u() {
        AutoCompleteTextView autoCompleteTextView = this.f10454h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            if (f10450s) {
                this.f10454h.setOnDismissListener(null);
            }
        }
    }
}
