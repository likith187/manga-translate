package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import i4.c;
import i4.d;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;

/* JADX INFO: loaded from: classes.dex */
public class a extends Drawable implements TextDrawableHelper.TextDrawableDelegate {

    /* JADX INFO: renamed from: q */
    private static final int f8927q = R$style.Widget_MaterialComponents_Badge;

    /* JADX INFO: renamed from: r */
    private static final int f8928r = R$attr.badgeStyle;

    /* JADX INFO: renamed from: a */
    private final WeakReference f8929a;

    /* JADX INFO: renamed from: b */
    private final i f8930b;

    /* JADX INFO: renamed from: c */
    private final TextDrawableHelper f8931c;

    /* JADX INFO: renamed from: f */
    private final Rect f8932f;

    /* JADX INFO: renamed from: h */
    private final BadgeState f8933h;

    /* JADX INFO: renamed from: i */
    private float f8934i;

    /* JADX INFO: renamed from: j */
    private float f8935j;

    /* JADX INFO: renamed from: k */
    private int f8936k;

    /* JADX INFO: renamed from: l */
    private float f8937l;

    /* JADX INFO: renamed from: m */
    private float f8938m;

    /* JADX INFO: renamed from: n */
    private float f8939n;

    /* JADX INFO: renamed from: o */
    private WeakReference f8940o;

    /* JADX INFO: renamed from: p */
    private WeakReference f8941p;

    /* JADX INFO: renamed from: com.google.android.material.badge.a$a */
    class RunnableC0106a implements Runnable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f8942a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ FrameLayout f8943b;

        RunnableC0106a(View view, FrameLayout frameLayout) {
            this.f8942a = view;
            this.f8943b = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.P(this.f8942a, this.f8943b);
        }
    }

    private a(Context context, int i10, int i11, int i12, BadgeState.State state) {
        this.f8929a = new WeakReference(context);
        ThemeEnforcement.checkMaterialTheme(context);
        this.f8932f = new Rect();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.f8931c = textDrawableHelper;
        textDrawableHelper.getTextPaint().setTextAlign(Paint.Align.CENTER);
        BadgeState badgeState = new BadgeState(context, i10, i11, i12, state);
        this.f8933h = badgeState;
        this.f8930b = new i(n.b(context, z() ? badgeState.m() : badgeState.i(), z() ? badgeState.l() : badgeState.h()).m());
        M();
    }

    private boolean C() {
        FrameLayout frameLayoutI = i();
        return frameLayoutI != null && frameLayoutI.getId() == R$id.mtrl_anchor_parent;
    }

    private void D() {
        this.f8931c.getTextPaint().setAlpha(getAlpha());
        invalidateSelf();
    }

    private void E() {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(this.f8933h.e());
        if (this.f8930b.getFillColor() != colorStateListValueOf) {
            this.f8930b.setFillColor(colorStateListValueOf);
            invalidateSelf();
        }
    }

    private void F() {
        this.f8931c.setTextSizeDirty(true);
        H();
        Q();
        invalidateSelf();
    }

    private void G() {
        WeakReference weakReference = this.f8940o;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.f8940o.get();
        WeakReference weakReference2 = this.f8941p;
        P(view, weakReference2 != null ? (FrameLayout) weakReference2.get() : null);
    }

    private void H() {
        Context context = (Context) this.f8929a.get();
        if (context == null) {
            return;
        }
        this.f8930b.setShapeAppearanceModel(n.b(context, z() ? this.f8933h.m() : this.f8933h.i(), z() ? this.f8933h.l() : this.f8933h.h()).m());
        invalidateSelf();
    }

    private void I() {
        d dVar;
        Context context = (Context) this.f8929a.get();
        if (context == null || this.f8931c.getTextAppearance() == (dVar = new d(context, this.f8933h.A()))) {
            return;
        }
        this.f8931c.setTextAppearance(dVar, context);
        J();
        Q();
        invalidateSelf();
    }

    private void J() {
        this.f8931c.getTextPaint().setColor(this.f8933h.j());
        invalidateSelf();
    }

    private void K() {
        R();
        this.f8931c.setTextSizeDirty(true);
        Q();
        invalidateSelf();
    }

    private void L() {
        boolean zG = this.f8933h.G();
        setVisible(zG, false);
        if (!b.f8945a || i() == null || zG) {
            return;
        }
        ((ViewGroup) i().getParent()).invalidate();
    }

    private void M() {
        H();
        I();
        K();
        F();
        D();
        E();
        J();
        G();
        Q();
        L();
    }

    private void N(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != R$id.mtrl_anchor_parent) {
            WeakReference weakReference = this.f8941p;
            if (weakReference == null || weakReference.get() != viewGroup) {
                O(view);
                FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(R$id.mtrl_anchor_parent);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int iIndexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(iIndexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, iIndexOfChild);
                this.f8941p = new WeakReference(frameLayout);
                frameLayout.post(new RunnableC0106a(view, frameLayout));
            }
        }
    }

    private static void O(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    private void Q() {
        Context context = (Context) this.f8929a.get();
        WeakReference weakReference = this.f8940o;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f8932f);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference weakReference2 = this.f8941p;
        ViewGroup viewGroup = weakReference2 != null ? (ViewGroup) weakReference2.get() : null;
        if (viewGroup != null || b.f8945a) {
            if (viewGroup == null) {
                viewGroup = (ViewGroup) view.getParent();
            }
            viewGroup.offsetDescendantRectToMyCoords(view, rect2);
        }
        b(rect2, view);
        b.f(this.f8932f, this.f8934i, this.f8935j, this.f8938m, this.f8939n);
        float f10 = this.f8937l;
        if (f10 != -1.0f) {
            this.f8930b.setCornerSize(f10);
        }
        if (rect.equals(this.f8932f)) {
            return;
        }
        this.f8930b.setBounds(this.f8932f);
    }

    private void R() {
        if (m() != -2) {
            this.f8936k = ((int) Math.pow(10.0d, ((double) m()) - 1.0d)) - 1;
        } else {
            this.f8936k = n();
        }
    }

    private void a(View view) {
        float y10;
        float x10;
        View viewI = i();
        if (viewI == null) {
            if (!(view.getParent() instanceof View)) {
                return;
            }
            float y11 = view.getY();
            x10 = view.getX();
            viewI = (View) view.getParent();
            y10 = y11;
        } else if (!C()) {
            y10 = 0.0f;
            x10 = 0.0f;
        } else {
            if (!(viewI.getParent() instanceof View)) {
                return;
            }
            y10 = viewI.getY();
            x10 = viewI.getX();
            viewI = (View) viewI.getParent();
        }
        float fW = w(viewI, y10);
        float fL = l(viewI, x10);
        float fG = g(viewI, y10);
        float fR = r(viewI, x10);
        if (fW < 0.0f) {
            this.f8935j += Math.abs(fW);
        }
        if (fL < 0.0f) {
            this.f8934i += Math.abs(fL);
        }
        if (fG > 0.0f) {
            this.f8935j -= Math.abs(fG);
        }
        if (fR > 0.0f) {
            this.f8934i -= Math.abs(fR);
        }
    }

    private void b(Rect rect, View view) {
        float f10 = z() ? this.f8933h.f8896d : this.f8933h.f8895c;
        this.f8937l = f10;
        if (f10 != -1.0f) {
            this.f8938m = f10;
            this.f8939n = f10;
        } else {
            this.f8938m = Math.round((z() ? this.f8933h.f8899g : this.f8933h.f8897e) / 2.0f);
            this.f8939n = Math.round((z() ? this.f8933h.f8900h : this.f8933h.f8898f) / 2.0f);
        }
        if (z()) {
            String strF = f();
            this.f8938m = Math.max(this.f8938m, (this.f8931c.getTextWidth(strF) / 2.0f) + this.f8933h.g());
            float fMax = Math.max(this.f8939n, (this.f8931c.getTextHeight(strF) / 2.0f) + this.f8933h.k());
            this.f8939n = fMax;
            this.f8938m = Math.max(this.f8938m, fMax);
        }
        int iY = y();
        int iF = this.f8933h.f();
        if (iF == 8388691 || iF == 8388693) {
            this.f8935j = rect.bottom - iY;
        } else {
            this.f8935j = rect.top + iY;
        }
        int iX = x();
        int iF2 = this.f8933h.f();
        if (iF2 == 8388659 || iF2 == 8388691) {
            this.f8934i = m0.v(view) == 0 ? (rect.left - this.f8938m) + iX : (rect.right + this.f8938m) - iX;
        } else {
            this.f8934i = m0.v(view) == 0 ? (rect.right + this.f8938m) - iX : (rect.left - this.f8938m) + iX;
        }
        if (this.f8933h.F()) {
            a(view);
        }
    }

    public static a c(Context context) {
        return new a(context, 0, f8928r, f8927q, null);
    }

    static a d(Context context, BadgeState.State state) {
        return new a(context, 0, f8928r, f8927q, state);
    }

    private void e(Canvas canvas) {
        String strF = f();
        if (strF != null) {
            Rect rect = new Rect();
            this.f8931c.getTextPaint().getTextBounds(strF, 0, strF.length(), rect);
            float fExactCenterY = this.f8935j - rect.exactCenterY();
            canvas.drawText(strF, this.f8934i, rect.bottom <= 0 ? (int) fExactCenterY : Math.round(fExactCenterY), this.f8931c.getTextPaint());
        }
    }

    private String f() {
        if (B()) {
            return u();
        }
        if (A()) {
            return p();
        }
        return null;
    }

    private float g(View view, float f10) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.f8935j + this.f8939n) - (((View) view.getParent()).getHeight() - view.getY())) + f10;
    }

    private CharSequence j() {
        return this.f8933h.p();
    }

    private float l(View view, float f10) {
        return (this.f8934i - this.f8938m) + view.getX() + f10;
    }

    private String p() {
        if (this.f8936k == -2 || o() <= this.f8936k) {
            return NumberFormat.getInstance(this.f8933h.x()).format(o());
        }
        Context context = (Context) this.f8929a.get();
        return context == null ? "" : String.format(this.f8933h.x(), context.getString(R$string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.f8936k), "+");
    }

    private String q() {
        Context context;
        if (this.f8933h.q() == 0 || (context = (Context) this.f8929a.get()) == null) {
            return null;
        }
        return (this.f8936k == -2 || o() <= this.f8936k) ? context.getResources().getQuantityString(this.f8933h.q(), o(), Integer.valueOf(o())) : context.getString(this.f8933h.n(), Integer.valueOf(this.f8936k));
    }

    private float r(View view, float f10) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.f8934i + this.f8938m) - (((View) view.getParent()).getWidth() - view.getX())) + f10;
    }

    private String u() {
        String strT = t();
        int iM = m();
        if (iM == -2 || strT == null || strT.length() <= iM) {
            return strT;
        }
        Context context = (Context) this.f8929a.get();
        if (context == null) {
            return "";
        }
        return String.format(context.getString(R$string.m3_exceed_max_badge_text_suffix), strT.substring(0, iM - 1), "…");
    }

    private CharSequence v() {
        CharSequence charSequenceO = this.f8933h.o();
        return charSequenceO != null ? charSequenceO : t();
    }

    private float w(View view, float f10) {
        return (this.f8935j - this.f8939n) + view.getY() + f10;
    }

    private int x() {
        int iR = z() ? this.f8933h.r() : this.f8933h.s();
        if (this.f8933h.f8903k == 1) {
            iR += z() ? this.f8933h.f8902j : this.f8933h.f8901i;
        }
        return iR + this.f8933h.b();
    }

    private int y() {
        int iC = this.f8933h.C();
        if (z()) {
            iC = this.f8933h.B();
            Context context = (Context) this.f8929a.get();
            if (context != null) {
                iC = x3.a.c(iC, iC - this.f8933h.t(), x3.a.b(0.0f, 1.0f, 0.3f, 1.0f, c.f(context) - 1.0f));
            }
        }
        if (this.f8933h.f8903k == 0) {
            iC -= Math.round(this.f8939n);
        }
        return iC + this.f8933h.c();
    }

    private boolean z() {
        return B() || A();
    }

    public boolean A() {
        return !this.f8933h.E() && this.f8933h.D();
    }

    public boolean B() {
        return this.f8933h.E();
    }

    public void P(View view, FrameLayout frameLayout) {
        this.f8940o = new WeakReference(view);
        boolean z10 = b.f8945a;
        if (z10 && frameLayout == null) {
            N(view);
        } else {
            this.f8941p = new WeakReference(frameLayout);
        }
        if (!z10) {
            O(view);
        }
        Q();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f8930b.draw(canvas);
        if (z()) {
            e(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f8933h.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f8932f.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f8932f.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public CharSequence h() {
        if (isVisible()) {
            return B() ? v() : A() ? q() : j();
        }
        return null;
    }

    public FrameLayout i() {
        WeakReference weakReference = this.f8941p;
        if (weakReference != null) {
            return (FrameLayout) weakReference.get();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    public int k() {
        return this.f8933h.s();
    }

    public int m() {
        return this.f8933h.u();
    }

    public int n() {
        return this.f8933h.v();
    }

    public int o() {
        if (this.f8933h.D()) {
            return this.f8933h.w();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        invalidateSelf();
    }

    BadgeState.State s() {
        return this.f8933h.y();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f8933h.I(i10);
        D();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public String t() {
        return this.f8933h.z();
    }
}
