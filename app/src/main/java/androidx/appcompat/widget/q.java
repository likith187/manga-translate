package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.LocaleList;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import java.lang.ref.WeakReference;
import t.h;

/* JADX INFO: loaded from: classes.dex */
class q {

    /* JADX INFO: renamed from: a */
    private final TextView f944a;

    /* JADX INFO: renamed from: b */
    private f0 f945b;

    /* JADX INFO: renamed from: c */
    private f0 f946c;

    /* JADX INFO: renamed from: d */
    private f0 f947d;

    /* JADX INFO: renamed from: e */
    private f0 f948e;

    /* JADX INFO: renamed from: f */
    private f0 f949f;

    /* JADX INFO: renamed from: g */
    private f0 f950g;

    /* JADX INFO: renamed from: h */
    private f0 f951h;

    /* JADX INFO: renamed from: i */
    private final r f952i;

    /* JADX INFO: renamed from: j */
    private int f953j = 0;

    /* JADX INFO: renamed from: k */
    private int f954k = -1;

    /* JADX INFO: renamed from: l */
    private Typeface f955l;

    /* JADX INFO: renamed from: m */
    private boolean f956m;

    class a extends h.e {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int f957a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f958b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ WeakReference f959c;

        a(int i10, int i11, WeakReference weakReference) {
            this.f957a = i10;
            this.f958b = i11;
            this.f959c = weakReference;
        }

        @Override // t.h.e
        /* JADX INFO: renamed from: h */
        public void f(int i10) {
        }

        @Override // t.h.e
        /* JADX INFO: renamed from: i */
        public void g(Typeface typeface) {
            int i10 = this.f957a;
            if (i10 != -1) {
                typeface = e.a(typeface, i10, (this.f958b & 2) != 0);
            }
            q.this.n(this.f959c, typeface);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ TextView f961a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Typeface f962b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f963c;

        b(TextView textView, Typeface typeface, int i10) {
            this.f961a = textView;
            this.f962b = typeface;
            this.f963c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f961a.setTypeface(this.f962b, this.f963c);
        }
    }

    static class c {
        static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }

        static void b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    static class d {
        static int a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        static void b(TextView textView, int i10, int i11, int i12, int i13) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        static void c(TextView textView, int[] iArr, int i10) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        static boolean d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    static class e {
        static Typeface a(Typeface typeface, int i10, boolean z10) {
            return Typeface.create(typeface, i10, z10);
        }
    }

    q(TextView textView) {
        this.f944a = textView;
        this.f952i = new r(textView);
    }

    private void B(int i10, float f10) {
        this.f952i.t(i10, f10);
    }

    private void C(Context context, h0 h0Var) {
        String strO;
        this.f953j = h0Var.k(R$styleable.TextAppearance_android_textStyle, this.f953j);
        int iK = h0Var.k(R$styleable.TextAppearance_android_textFontWeight, -1);
        this.f954k = iK;
        if (iK != -1) {
            this.f953j &= 2;
        }
        if (!h0Var.s(R$styleable.TextAppearance_android_fontFamily) && !h0Var.s(R$styleable.TextAppearance_fontFamily)) {
            if (h0Var.s(R$styleable.TextAppearance_android_typeface)) {
                this.f956m = false;
                int iK2 = h0Var.k(R$styleable.TextAppearance_android_typeface, 1);
                if (iK2 == 1) {
                    this.f955l = Typeface.SANS_SERIF;
                    return;
                } else if (iK2 == 2) {
                    this.f955l = Typeface.SERIF;
                    return;
                } else {
                    if (iK2 != 3) {
                        return;
                    }
                    this.f955l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f955l = null;
        int i10 = h0Var.s(R$styleable.TextAppearance_fontFamily) ? R$styleable.TextAppearance_fontFamily : R$styleable.TextAppearance_android_fontFamily;
        int i11 = this.f954k;
        int i12 = this.f953j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceJ = h0Var.j(i10, this.f953j, new a(i11, i12, new WeakReference(this.f944a)));
                if (typefaceJ != null) {
                    if (this.f954k != -1) {
                        this.f955l = e.a(Typeface.create(typefaceJ, 0), this.f954k, (this.f953j & 2) != 0);
                    } else {
                        this.f955l = typefaceJ;
                    }
                }
                this.f956m = this.f955l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f955l != null || (strO = h0Var.o(i10)) == null) {
            return;
        }
        if (this.f954k != -1) {
            this.f955l = e.a(Typeface.create(strO, 0), this.f954k, (this.f953j & 2) != 0);
        } else {
            this.f955l = Typeface.create(strO, this.f953j);
        }
    }

    private void a(Drawable drawable, f0 f0Var) {
        if (drawable == null || f0Var == null) {
            return;
        }
        g.i(drawable, f0Var, this.f944a.getDrawableState());
    }

    private static f0 d(Context context, g gVar, int i10) {
        ColorStateList colorStateListF = gVar.f(context, i10);
        if (colorStateListF == null) {
            return null;
        }
        f0 f0Var = new f0();
        f0Var.f881d = true;
        f0Var.f878a = colorStateListF;
        return f0Var;
    }

    private void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 != null || drawable6 != null) {
            Drawable[] compoundDrawablesRelative = this.f944a.getCompoundDrawablesRelative();
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            TextView textView = this.f944a;
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative2 = this.f944a.getCompoundDrawablesRelative();
        Drawable drawable7 = compoundDrawablesRelative2[0];
        if (drawable7 != null || compoundDrawablesRelative2[2] != null) {
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            this.f944a.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, compoundDrawablesRelative2[2], drawable4);
            return;
        }
        Drawable[] compoundDrawables = this.f944a.getCompoundDrawables();
        TextView textView2 = this.f944a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    private void z() {
        f0 f0Var = this.f951h;
        this.f945b = f0Var;
        this.f946c = f0Var;
        this.f947d = f0Var;
        this.f948e = f0Var;
        this.f949f = f0Var;
        this.f950g = f0Var;
    }

    void A(int i10, float f10) {
        if (o0.f942a || l()) {
            return;
        }
        B(i10, f10);
    }

    void b() {
        if (this.f945b != null || this.f946c != null || this.f947d != null || this.f948e != null) {
            Drawable[] compoundDrawables = this.f944a.getCompoundDrawables();
            a(compoundDrawables[0], this.f945b);
            a(compoundDrawables[1], this.f946c);
            a(compoundDrawables[2], this.f947d);
            a(compoundDrawables[3], this.f948e);
        }
        if (this.f949f == null && this.f950g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.f944a.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f949f);
        a(compoundDrawablesRelative[2], this.f950g);
    }

    void c() {
        this.f952i.a();
    }

    int e() {
        return this.f952i.f();
    }

    int f() {
        return this.f952i.g();
    }

    int g() {
        return this.f952i.h();
    }

    int[] h() {
        return this.f952i.i();
    }

    int i() {
        return this.f952i.j();
    }

    ColorStateList j() {
        f0 f0Var = this.f951h;
        if (f0Var != null) {
            return f0Var.f878a;
        }
        return null;
    }

    PorterDuff.Mode k() {
        f0 f0Var = this.f951h;
        if (f0Var != null) {
            return f0Var.f879b;
        }
        return null;
    }

    boolean l() {
        return this.f952i.n();
    }

    /* JADX WARN: Removed duplicated region for block: B:253:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:262:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void m(android.util.AttributeSet r17, int r18) {
        /*
            Method dump skipped, instruction units count: 684
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.q.m(android.util.AttributeSet, int):void");
    }

    void n(WeakReference weakReference, Typeface typeface) {
        if (this.f956m) {
            this.f955l = typeface;
            TextView textView = (TextView) weakReference.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    textView.post(new b(textView, typeface, this.f953j));
                } else {
                    textView.setTypeface(typeface, this.f953j);
                }
            }
        }
    }

    void o(boolean z10, int i10, int i11, int i12, int i13) {
        if (o0.f942a) {
            return;
        }
        c();
    }

    void p() {
        b();
    }

    void q(Context context, int i10) {
        String strO;
        h0 h0VarU = h0.u(context, i10, R$styleable.TextAppearance);
        if (h0VarU.s(R$styleable.TextAppearance_textAllCaps)) {
            s(h0VarU.a(R$styleable.TextAppearance_textAllCaps, false));
        }
        if (h0VarU.s(R$styleable.TextAppearance_android_textSize) && h0VarU.f(R$styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f944a.setTextSize(0, 0.0f);
        }
        C(context, h0VarU);
        if (h0VarU.s(R$styleable.TextAppearance_fontVariationSettings) && (strO = h0VarU.o(R$styleable.TextAppearance_fontVariationSettings)) != null) {
            d.d(this.f944a, strO);
        }
        h0VarU.y();
        Typeface typeface = this.f955l;
        if (typeface != null) {
            this.f944a.setTypeface(typeface, this.f953j);
        }
    }

    void r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
    }

    void s(boolean z10) {
        this.f944a.setAllCaps(z10);
    }

    void t(int i10, int i11, int i12, int i13) {
        this.f952i.p(i10, i11, i12, i13);
    }

    void u(int[] iArr, int i10) {
        this.f952i.q(iArr, i10);
    }

    void v(int i10) {
        this.f952i.r(i10);
    }

    void w(ColorStateList colorStateList) {
        if (this.f951h == null) {
            this.f951h = new f0();
        }
        f0 f0Var = this.f951h;
        f0Var.f878a = colorStateList;
        f0Var.f881d = colorStateList != null;
        z();
    }

    void x(PorterDuff.Mode mode) {
        if (this.f951h == null) {
            this.f951h = new f0();
        }
        f0 f0Var = this.f951h;
        f0Var.f879b = mode;
        f0Var.f880c = mode != null;
        z();
    }
}
