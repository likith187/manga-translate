package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.h0;
import androidx.core.view.m0;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.textfield.TextInputLayout;
import d0.c;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
class r extends LinearLayout {

    /* JADX INFO: renamed from: a */
    final TextInputLayout f10466a;

    /* JADX INFO: renamed from: b */
    private final FrameLayout f10467b;

    /* JADX INFO: renamed from: c */
    private final CheckableImageButton f10468c;

    /* JADX INFO: renamed from: f */
    private ColorStateList f10469f;

    /* JADX INFO: renamed from: h */
    private PorterDuff.Mode f10470h;

    /* JADX INFO: renamed from: i */
    private View.OnLongClickListener f10471i;

    /* JADX INFO: renamed from: j */
    private final CheckableImageButton f10472j;

    /* JADX INFO: renamed from: k */
    private final d f10473k;

    /* JADX INFO: renamed from: l */
    private int f10474l;

    /* JADX INFO: renamed from: m */
    private final LinkedHashSet f10475m;

    /* JADX INFO: renamed from: n */
    private ColorStateList f10476n;

    /* JADX INFO: renamed from: o */
    private PorterDuff.Mode f10477o;

    /* JADX INFO: renamed from: p */
    private int f10478p;

    /* JADX INFO: renamed from: q */
    private ImageView.ScaleType f10479q;

    /* JADX INFO: renamed from: r */
    private View.OnLongClickListener f10480r;

    /* JADX INFO: renamed from: s */
    private CharSequence f10481s;

    /* JADX INFO: renamed from: t */
    private final TextView f10482t;

    /* JADX INFO: renamed from: u */
    private boolean f10483u;

    /* JADX INFO: renamed from: v */
    private EditText f10484v;

    /* JADX INFO: renamed from: w */
    private final AccessibilityManager f10485w;

    /* JADX INFO: renamed from: x */
    private c.a f10486x;

    /* JADX INFO: renamed from: y */
    private final TextWatcher f10487y;

    /* JADX INFO: renamed from: z */
    private final TextInputLayout.f f10488z;

    class a extends TextWatcherAdapter {
        a() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            r.this.m().a(editable);
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            r.this.m().b(charSequence, i10, i11, i12);
        }
    }

    class b implements TextInputLayout.f {
        b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(TextInputLayout textInputLayout) {
            if (r.this.f10484v == textInputLayout.getEditText()) {
                return;
            }
            if (r.this.f10484v != null) {
                r.this.f10484v.removeTextChangedListener(r.this.f10487y);
                if (r.this.f10484v.getOnFocusChangeListener() == r.this.m().e()) {
                    r.this.f10484v.setOnFocusChangeListener(null);
                }
            }
            r.this.f10484v = textInputLayout.getEditText();
            if (r.this.f10484v != null) {
                r.this.f10484v.addTextChangedListener(r.this.f10487y);
            }
            r.this.m().n(r.this.f10484v);
            r rVar = r.this;
            rVar.h0(rVar.m());
        }
    }

    class c implements View.OnAttachStateChangeListener {
        c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            r.this.g();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            r.this.M();
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a */
        private final SparseArray f10492a = new SparseArray();

        /* JADX INFO: renamed from: b */
        private final r f10493b;

        /* JADX INFO: renamed from: c */
        private final int f10494c;

        /* JADX INFO: renamed from: d */
        private final int f10495d;

        d(r rVar, h0 h0Var) {
            this.f10493b = rVar;
            this.f10494c = h0Var.n(R$styleable.TextInputLayout_endIconDrawable, 0);
            this.f10495d = h0Var.n(R$styleable.TextInputLayout_passwordToggleDrawable, 0);
        }

        private s b(int i10) {
            if (i10 == -1) {
                return new g(this.f10493b);
            }
            if (i10 == 0) {
                return new v(this.f10493b);
            }
            if (i10 == 1) {
                return new x(this.f10493b, this.f10495d);
            }
            if (i10 == 2) {
                return new f(this.f10493b);
            }
            if (i10 == 3) {
                return new p(this.f10493b);
            }
            throw new IllegalArgumentException("Invalid end icon mode: " + i10);
        }

        s c(int i10) {
            s sVar = (s) this.f10492a.get(i10);
            if (sVar != null) {
                return sVar;
            }
            s sVarB = b(i10);
            this.f10492a.append(i10, sVarB);
            return sVarB;
        }
    }

    r(TextInputLayout textInputLayout, h0 h0Var) {
        super(textInputLayout.getContext());
        this.f10474l = 0;
        this.f10475m = new LinkedHashSet();
        this.f10487y = new a();
        b bVar = new b();
        this.f10488z = bVar;
        this.f10485w = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f10466a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f10467b = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButtonI = i(this, layoutInflaterFrom, R$id.text_input_error_icon);
        this.f10468c = checkableImageButtonI;
        CheckableImageButton checkableImageButtonI2 = i(frameLayout, layoutInflaterFrom, R$id.text_input_end_icon);
        this.f10472j = checkableImageButtonI2;
        this.f10473k = new d(this, h0Var);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f10482t = appCompatTextView;
        C(h0Var);
        B(h0Var);
        D(h0Var);
        frameLayout.addView(checkableImageButtonI2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(checkableImageButtonI);
        textInputLayout.i(bVar);
        addOnAttachStateChangeListener(new c());
    }

    private void B(h0 h0Var) {
        if (!h0Var.s(R$styleable.TextInputLayout_passwordToggleEnabled)) {
            if (h0Var.s(R$styleable.TextInputLayout_endIconTint)) {
                this.f10476n = i4.c.b(getContext(), h0Var, R$styleable.TextInputLayout_endIconTint);
            }
            if (h0Var.s(R$styleable.TextInputLayout_endIconTintMode)) {
                this.f10477o = ViewUtils.parseTintMode(h0Var.k(R$styleable.TextInputLayout_endIconTintMode, -1), null);
            }
        }
        if (h0Var.s(R$styleable.TextInputLayout_endIconMode)) {
            U(h0Var.k(R$styleable.TextInputLayout_endIconMode, 0));
            if (h0Var.s(R$styleable.TextInputLayout_endIconContentDescription)) {
                Q(h0Var.p(R$styleable.TextInputLayout_endIconContentDescription));
            }
            O(h0Var.a(R$styleable.TextInputLayout_endIconCheckable, true));
        } else if (h0Var.s(R$styleable.TextInputLayout_passwordToggleEnabled)) {
            if (h0Var.s(R$styleable.TextInputLayout_passwordToggleTint)) {
                this.f10476n = i4.c.b(getContext(), h0Var, R$styleable.TextInputLayout_passwordToggleTint);
            }
            if (h0Var.s(R$styleable.TextInputLayout_passwordToggleTintMode)) {
                this.f10477o = ViewUtils.parseTintMode(h0Var.k(R$styleable.TextInputLayout_passwordToggleTintMode, -1), null);
            }
            U(h0Var.a(R$styleable.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            Q(h0Var.p(R$styleable.TextInputLayout_passwordToggleContentDescription));
        }
        T(h0Var.f(R$styleable.TextInputLayout_endIconMinSize, getResources().getDimensionPixelSize(R$dimen.mtrl_min_touch_target_size)));
        if (h0Var.s(R$styleable.TextInputLayout_endIconScaleType)) {
            X(t.b(h0Var.k(R$styleable.TextInputLayout_endIconScaleType, -1)));
        }
    }

    private void C(h0 h0Var) {
        if (h0Var.s(R$styleable.TextInputLayout_errorIconTint)) {
            this.f10469f = i4.c.b(getContext(), h0Var, R$styleable.TextInputLayout_errorIconTint);
        }
        if (h0Var.s(R$styleable.TextInputLayout_errorIconTintMode)) {
            this.f10470h = ViewUtils.parseTintMode(h0Var.k(R$styleable.TextInputLayout_errorIconTintMode, -1), null);
        }
        if (h0Var.s(R$styleable.TextInputLayout_errorIconDrawable)) {
            c0(h0Var.g(R$styleable.TextInputLayout_errorIconDrawable));
        }
        this.f10468c.setContentDescription(getResources().getText(R$string.error_icon_content_description));
        m0.t0(this.f10468c, 2);
        this.f10468c.setClickable(false);
        this.f10468c.setPressable(false);
        this.f10468c.setFocusable(false);
    }

    private void D(h0 h0Var) {
        this.f10482t.setVisibility(8);
        this.f10482t.setId(R$id.textinput_suffix_text);
        this.f10482t.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        m0.l0(this.f10482t, 1);
        q0(h0Var.n(R$styleable.TextInputLayout_suffixTextAppearance, 0));
        if (h0Var.s(R$styleable.TextInputLayout_suffixTextColor)) {
            r0(h0Var.c(R$styleable.TextInputLayout_suffixTextColor));
        }
        p0(h0Var.p(R$styleable.TextInputLayout_suffixText));
    }

    public void M() {
        AccessibilityManager accessibilityManager;
        c.a aVar = this.f10486x;
        if (aVar == null || (accessibilityManager = this.f10485w) == null) {
            return;
        }
        d0.c.c(accessibilityManager, aVar);
    }

    public void g() {
        if (this.f10486x == null || this.f10485w == null || !m0.N(this)) {
            return;
        }
        d0.c.a(this.f10485w, this.f10486x);
    }

    public void h0(s sVar) {
        if (this.f10484v == null) {
            return;
        }
        if (sVar.e() != null) {
            this.f10484v.setOnFocusChangeListener(sVar.e());
        }
        if (sVar.g() != null) {
            this.f10472j.setOnFocusChangeListener(sVar.g());
        }
    }

    private CheckableImageButton i(ViewGroup viewGroup, LayoutInflater layoutInflater, int i10) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R$layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i10);
        t.e(checkableImageButton);
        if (i4.c.j(getContext())) {
            androidx.core.view.m.d((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    private void j(int i10) {
        Iterator it = this.f10475m.iterator();
        if (it.hasNext()) {
            androidx.appcompat.app.t.a(it.next());
            throw null;
        }
    }

    private void s0(s sVar) {
        sVar.s();
        this.f10486x = sVar.h();
        g();
    }

    private int t(s sVar) {
        int i10 = this.f10473k.f10494c;
        return i10 == 0 ? sVar.d() : i10;
    }

    private void t0(s sVar) {
        M();
        this.f10486x = null;
        sVar.u();
    }

    private void u0(boolean z10) {
        if (!z10 || n() == null) {
            t.a(this.f10466a, this.f10472j, this.f10476n, this.f10477o);
            return;
        }
        Drawable drawableMutate = v.a.r(n()).mutate();
        v.a.n(drawableMutate, this.f10466a.getErrorCurrentTextColors());
        this.f10472j.setImageDrawable(drawableMutate);
    }

    private void v0() {
        this.f10467b.setVisibility((this.f10472j.getVisibility() != 0 || G()) ? 8 : 0);
        setVisibility((F() || G() || ((this.f10481s == null || this.f10483u) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    private void w0() {
        this.f10468c.setVisibility(s() != null && this.f10466a.N() && this.f10466a.d0() ? 0 : 8);
        v0();
        x0();
        if (A()) {
            return;
        }
        this.f10466a.o0();
    }

    private void y0() {
        int visibility = this.f10482t.getVisibility();
        int i10 = (this.f10481s == null || this.f10483u) ? 8 : 0;
        if (visibility != i10) {
            m().q(i10 == 0);
        }
        v0();
        this.f10482t.setVisibility(i10);
        this.f10466a.o0();
    }

    boolean A() {
        return this.f10474l != 0;
    }

    boolean E() {
        return A() && this.f10472j.isChecked();
    }

    boolean F() {
        return this.f10467b.getVisibility() == 0 && this.f10472j.getVisibility() == 0;
    }

    boolean G() {
        return this.f10468c.getVisibility() == 0;
    }

    void H(boolean z10) {
        this.f10483u = z10;
        y0();
    }

    void I() {
        w0();
        K();
        J();
        if (m().t()) {
            u0(this.f10466a.d0());
        }
    }

    void J() {
        t.d(this.f10466a, this.f10472j, this.f10476n);
    }

    void K() {
        t.d(this.f10466a, this.f10468c, this.f10469f);
    }

    void L(boolean z10) {
        boolean z11;
        boolean zIsActivated;
        boolean zIsChecked;
        s sVarM = m();
        boolean z12 = true;
        if (!sVarM.l() || (zIsChecked = this.f10472j.isChecked()) == sVarM.m()) {
            z11 = false;
        } else {
            this.f10472j.setChecked(!zIsChecked);
            z11 = true;
        }
        if (!sVarM.j() || (zIsActivated = this.f10472j.isActivated()) == sVarM.k()) {
            z12 = z11;
        } else {
            N(!zIsActivated);
        }
        if (z10 || z12) {
            J();
        }
    }

    void N(boolean z10) {
        this.f10472j.setActivated(z10);
    }

    void O(boolean z10) {
        this.f10472j.setCheckable(z10);
    }

    void P(int i10) {
        Q(i10 != 0 ? getResources().getText(i10) : null);
    }

    void Q(CharSequence charSequence) {
        if (l() != charSequence) {
            this.f10472j.setContentDescription(charSequence);
        }
    }

    void R(int i10) {
        S(i10 != 0 ? e.a.b(getContext(), i10) : null);
    }

    void S(Drawable drawable) {
        this.f10472j.setImageDrawable(drawable);
        if (drawable != null) {
            t.a(this.f10466a, this.f10472j, this.f10476n, this.f10477o);
            J();
        }
    }

    void T(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i10 != this.f10478p) {
            this.f10478p = i10;
            t.g(this.f10472j, i10);
            t.g(this.f10468c, i10);
        }
    }

    void U(int i10) {
        if (this.f10474l == i10) {
            return;
        }
        t0(m());
        int i11 = this.f10474l;
        this.f10474l = i10;
        j(i11);
        a0(i10 != 0);
        s sVarM = m();
        R(t(sVarM));
        P(sVarM.c());
        O(sVarM.l());
        if (!sVarM.i(this.f10466a.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + this.f10466a.getBoxBackgroundMode() + " is not supported by the end icon mode " + i10);
        }
        s0(sVarM);
        V(sVarM.f());
        EditText editText = this.f10484v;
        if (editText != null) {
            sVarM.n(editText);
            h0(sVarM);
        }
        t.a(this.f10466a, this.f10472j, this.f10476n, this.f10477o);
        L(true);
    }

    void V(View.OnClickListener onClickListener) {
        t.h(this.f10472j, onClickListener, this.f10480r);
    }

    void W(View.OnLongClickListener onLongClickListener) {
        this.f10480r = onLongClickListener;
        t.i(this.f10472j, onLongClickListener);
    }

    void X(ImageView.ScaleType scaleType) {
        this.f10479q = scaleType;
        t.j(this.f10472j, scaleType);
        t.j(this.f10468c, scaleType);
    }

    void Y(ColorStateList colorStateList) {
        if (this.f10476n != colorStateList) {
            this.f10476n = colorStateList;
            t.a(this.f10466a, this.f10472j, colorStateList, this.f10477o);
        }
    }

    void Z(PorterDuff.Mode mode) {
        if (this.f10477o != mode) {
            this.f10477o = mode;
            t.a(this.f10466a, this.f10472j, this.f10476n, mode);
        }
    }

    void a0(boolean z10) {
        if (F() != z10) {
            this.f10472j.setVisibility(z10 ? 0 : 8);
            v0();
            x0();
            this.f10466a.o0();
        }
    }

    void b0(int i10) {
        c0(i10 != 0 ? e.a.b(getContext(), i10) : null);
        K();
    }

    void c0(Drawable drawable) {
        this.f10468c.setImageDrawable(drawable);
        w0();
        t.a(this.f10466a, this.f10468c, this.f10469f, this.f10470h);
    }

    void d0(View.OnClickListener onClickListener) {
        t.h(this.f10468c, onClickListener, this.f10471i);
    }

    void e0(View.OnLongClickListener onLongClickListener) {
        this.f10471i = onLongClickListener;
        t.i(this.f10468c, onLongClickListener);
    }

    void f0(ColorStateList colorStateList) {
        if (this.f10469f != colorStateList) {
            this.f10469f = colorStateList;
            t.a(this.f10466a, this.f10468c, colorStateList, this.f10470h);
        }
    }

    void g0(PorterDuff.Mode mode) {
        if (this.f10470h != mode) {
            this.f10470h = mode;
            t.a(this.f10466a, this.f10468c, this.f10469f, mode);
        }
    }

    void h() {
        this.f10472j.performClick();
        this.f10472j.jumpDrawablesToCurrentState();
    }

    void i0(int i10) {
        j0(i10 != 0 ? getResources().getText(i10) : null);
    }

    void j0(CharSequence charSequence) {
        this.f10472j.setContentDescription(charSequence);
    }

    CheckableImageButton k() {
        if (G()) {
            return this.f10468c;
        }
        if (A() && F()) {
            return this.f10472j;
        }
        return null;
    }

    void k0(int i10) {
        l0(i10 != 0 ? e.a.b(getContext(), i10) : null);
    }

    CharSequence l() {
        return this.f10472j.getContentDescription();
    }

    void l0(Drawable drawable) {
        this.f10472j.setImageDrawable(drawable);
    }

    s m() {
        return this.f10473k.c(this.f10474l);
    }

    void m0(boolean z10) {
        if (z10 && this.f10474l != 1) {
            U(1);
        } else {
            if (z10) {
                return;
            }
            U(0);
        }
    }

    Drawable n() {
        return this.f10472j.getDrawable();
    }

    void n0(ColorStateList colorStateList) {
        this.f10476n = colorStateList;
        t.a(this.f10466a, this.f10472j, colorStateList, this.f10477o);
    }

    int o() {
        return this.f10478p;
    }

    void o0(PorterDuff.Mode mode) {
        this.f10477o = mode;
        t.a(this.f10466a, this.f10472j, this.f10476n, mode);
    }

    int p() {
        return this.f10474l;
    }

    void p0(CharSequence charSequence) {
        this.f10481s = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f10482t.setText(charSequence);
        y0();
    }

    ImageView.ScaleType q() {
        return this.f10479q;
    }

    void q0(int i10) {
        androidx.core.widget.j.o(this.f10482t, i10);
    }

    CheckableImageButton r() {
        return this.f10472j;
    }

    void r0(ColorStateList colorStateList) {
        this.f10482t.setTextColor(colorStateList);
    }

    Drawable s() {
        return this.f10468c.getDrawable();
    }

    CharSequence u() {
        return this.f10472j.getContentDescription();
    }

    Drawable v() {
        return this.f10472j.getDrawable();
    }

    CharSequence w() {
        return this.f10481s;
    }

    ColorStateList x() {
        return this.f10482t.getTextColors();
    }

    void x0() {
        if (this.f10466a.f10376f == null) {
            return;
        }
        m0.z0(this.f10482t, getContext().getResources().getDimensionPixelSize(R$dimen.material_input_text_to_prefix_suffix_padding), this.f10466a.f10376f.getPaddingTop(), (F() || G()) ? 0 : m0.z(this.f10466a.f10376f), this.f10466a.f10376f.getPaddingBottom());
    }

    int y() {
        return m0.z(this) + m0.z(this.f10482t) + ((F() || G()) ? this.f10472j.getMeasuredWidth() + androidx.core.view.m.b((ViewGroup.MarginLayoutParams) this.f10472j.getLayoutParams()) : 0);
    }

    TextView z() {
        return this.f10482t;
    }
}
