package i4;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import com.google.android.material.R$styleable;
import t.h;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorStateList f12570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ColorStateList f12571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ColorStateList f12572c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f12573d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f12575f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f12576g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f12577h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f12578i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f12579j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f12580k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final float f12581l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ColorStateList f12582m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f12583n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f12584o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f12585p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Typeface f12586q;

    class a extends h.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f12587a;

        a(f fVar) {
            this.f12587a = fVar;
        }

        @Override // t.h.e
        /* JADX INFO: renamed from: h */
        public void f(int i10) {
            d.this.f12585p = true;
            this.f12587a.onFontRetrievalFailed(i10);
        }

        @Override // t.h.e
        /* JADX INFO: renamed from: i */
        public void g(Typeface typeface) {
            d dVar = d.this;
            dVar.f12586q = Typeface.create(typeface, dVar.f12574e);
            d.this.f12585p = true;
            this.f12587a.onFontRetrieved(d.this.f12586q, false);
        }
    }

    class b extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f12589a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextPaint f12590b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f f12591c;

        b(Context context, TextPaint textPaint, f fVar) {
            this.f12589a = context;
            this.f12590b = textPaint;
            this.f12591c = fVar;
        }

        @Override // i4.f
        public void onFontRetrievalFailed(int i10) {
            this.f12591c.onFontRetrievalFailed(i10);
        }

        @Override // i4.f
        public void onFontRetrieved(Typeface typeface, boolean z10) {
            d.this.p(this.f12589a, this.f12590b, typeface);
            this.f12591c.onFontRetrieved(typeface, z10);
        }
    }

    public d(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, R$styleable.TextAppearance);
        l(typedArrayObtainStyledAttributes.getDimension(R$styleable.TextAppearance_android_textSize, 0.0f));
        k(c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColor));
        this.f12570a = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorHint);
        this.f12571b = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorLink);
        this.f12574e = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_textStyle, 0);
        this.f12575f = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_typeface, 1);
        int iG = c.g(typedArrayObtainStyledAttributes, R$styleable.TextAppearance_fontFamily, R$styleable.TextAppearance_android_fontFamily);
        this.f12584o = typedArrayObtainStyledAttributes.getResourceId(iG, 0);
        this.f12573d = typedArrayObtainStyledAttributes.getString(iG);
        this.f12576g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.TextAppearance_textAllCaps, false);
        this.f12572c = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_shadowColor);
        this.f12577h = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f12578i = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f12579j = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i10, R$styleable.MaterialTextAppearance);
        this.f12580k = typedArrayObtainStyledAttributes2.hasValue(R$styleable.MaterialTextAppearance_android_letterSpacing);
        this.f12581l = typedArrayObtainStyledAttributes2.getFloat(R$styleable.MaterialTextAppearance_android_letterSpacing, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    private void d() {
        String str;
        if (this.f12586q == null && (str = this.f12573d) != null) {
            this.f12586q = Typeface.create(str, this.f12574e);
        }
        if (this.f12586q == null) {
            int i10 = this.f12575f;
            if (i10 == 1) {
                this.f12586q = Typeface.SANS_SERIF;
            } else if (i10 == 2) {
                this.f12586q = Typeface.SERIF;
            } else if (i10 != 3) {
                this.f12586q = Typeface.DEFAULT;
            } else {
                this.f12586q = Typeface.MONOSPACE;
            }
            this.f12586q = Typeface.create(this.f12586q, this.f12574e);
        }
    }

    private boolean m(Context context) {
        if (e.a()) {
            return true;
        }
        int i10 = this.f12584o;
        return (i10 != 0 ? h.c(context, i10) : null) != null;
    }

    public Typeface e() {
        d();
        return this.f12586q;
    }

    public Typeface f(Context context) {
        if (this.f12585p) {
            return this.f12586q;
        }
        if (!context.isRestricted()) {
            try {
                Typeface typefaceH = h.h(context, this.f12584o);
                this.f12586q = typefaceH;
                if (typefaceH != null) {
                    this.f12586q = Typeface.create(typefaceH, this.f12574e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e10) {
                Log.d("TextAppearance", "Error loading font " + this.f12573d, e10);
            }
        }
        d();
        this.f12585p = true;
        return this.f12586q;
    }

    public void g(Context context, TextPaint textPaint, f fVar) {
        p(context, textPaint, e());
        h(context, new b(context, textPaint, fVar));
    }

    public void h(Context context, f fVar) {
        if (m(context)) {
            f(context);
        } else {
            d();
        }
        int i10 = this.f12584o;
        if (i10 == 0) {
            this.f12585p = true;
        }
        if (this.f12585p) {
            fVar.onFontRetrieved(this.f12586q, true);
            return;
        }
        try {
            h.j(context, i10, new a(fVar), null);
        } catch (Resources.NotFoundException unused) {
            this.f12585p = true;
            fVar.onFontRetrievalFailed(1);
        } catch (Exception e10) {
            Log.d("TextAppearance", "Error loading font " + this.f12573d, e10);
            this.f12585p = true;
            fVar.onFontRetrievalFailed(-3);
        }
    }

    public ColorStateList i() {
        return this.f12582m;
    }

    public float j() {
        return this.f12583n;
    }

    public void k(ColorStateList colorStateList) {
        this.f12582m = colorStateList;
    }

    public void l(float f10) {
        this.f12583n = f10;
    }

    public void n(Context context, TextPaint textPaint, f fVar) {
        o(context, textPaint, fVar);
        ColorStateList colorStateList = this.f12582m;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f10 = this.f12579j;
        float f11 = this.f12577h;
        float f12 = this.f12578i;
        ColorStateList colorStateList2 = this.f12572c;
        textPaint.setShadowLayer(f10, f11, f12, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void o(Context context, TextPaint textPaint, f fVar) {
        if (m(context)) {
            p(context, textPaint, f(context));
        } else {
            g(context, textPaint, fVar);
        }
    }

    public void p(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceA = g.a(context, typeface);
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        textPaint.setTypeface(typeface);
        int i10 = this.f12574e & (~typeface.getStyle());
        textPaint.setFakeBoldText((i10 & 1) != 0);
        textPaint.setTextSkewX((i10 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f12583n);
        if (this.f12580k) {
            textPaint.setLetterSpacing(this.f12581l);
        }
    }
}
