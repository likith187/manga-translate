package n4;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.g;
import com.google.android.material.shape.h;
import com.google.android.material.shape.i;
import com.google.android.material.shape.k;
import i4.c;
import i4.d;

/* JADX INFO: loaded from: classes.dex */
public class a extends i implements TextDrawableHelper.TextDrawableDelegate {

    /* JADX INFO: renamed from: v */
    private static final int f14050v = R$style.Widget_MaterialComponents_Tooltip;

    /* JADX INFO: renamed from: w */
    private static final int f14051w = R$attr.tooltipStyle;

    /* JADX INFO: renamed from: a */
    private CharSequence f14052a;

    /* JADX INFO: renamed from: b */
    private final Context f14053b;

    /* JADX INFO: renamed from: c */
    private final Paint.FontMetrics f14054c;

    /* JADX INFO: renamed from: f */
    private final TextDrawableHelper f14055f;

    /* JADX INFO: renamed from: h */
    private final View.OnLayoutChangeListener f14056h;

    /* JADX INFO: renamed from: i */
    private final Rect f14057i;

    /* JADX INFO: renamed from: j */
    private int f14058j;

    /* JADX INFO: renamed from: k */
    private int f14059k;

    /* JADX INFO: renamed from: l */
    private int f14060l;

    /* JADX INFO: renamed from: m */
    private int f14061m;

    /* JADX INFO: renamed from: n */
    private boolean f14062n;

    /* JADX INFO: renamed from: o */
    private int f14063o;

    /* JADX INFO: renamed from: p */
    private int f14064p;

    /* JADX INFO: renamed from: q */
    private float f14065q;

    /* JADX INFO: renamed from: r */
    private float f14066r;

    /* JADX INFO: renamed from: s */
    private final float f14067s;

    /* JADX INFO: renamed from: t */
    private float f14068t;

    /* JADX INFO: renamed from: u */
    private float f14069u;

    /* JADX INFO: renamed from: n4.a$a */
    class ViewOnLayoutChangeListenerC0183a implements View.OnLayoutChangeListener {
        ViewOnLayoutChangeListenerC0183a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            a.this.I(view);
        }
    }

    private a(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f14054c = new Paint.FontMetrics();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.f14055f = textDrawableHelper;
        this.f14056h = new ViewOnLayoutChangeListenerC0183a();
        this.f14057i = new Rect();
        this.f14065q = 1.0f;
        this.f14066r = 1.0f;
        this.f14067s = 0.5f;
        this.f14068t = 0.5f;
        this.f14069u = 1.0f;
        this.f14053b = context;
        textDrawableHelper.getTextPaint().density = context.getResources().getDisplayMetrics().density;
        textDrawableHelper.getTextPaint().setTextAlign(Paint.Align.CENTER);
    }

    private void B(Canvas canvas) {
        if (this.f14052a == null) {
            return;
        }
        int iX = (int) x(getBounds());
        if (this.f14055f.getTextAppearance() != null) {
            this.f14055f.getTextPaint().drawableState = getState();
            this.f14055f.updateTextPaintDrawState(this.f14053b);
            this.f14055f.getTextPaint().setAlpha((int) (this.f14069u * 255.0f));
        }
        CharSequence charSequence = this.f14052a;
        canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), iX, this.f14055f.getTextPaint());
    }

    private float C() {
        CharSequence charSequence = this.f14052a;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f14055f.getTextWidth(charSequence.toString());
    }

    private void D(AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(this.f14053b, attributeSet, R$styleable.Tooltip, i10, i11, new int[0]);
        this.f14063o = this.f14053b.getResources().getDimensionPixelSize(R$dimen.mtrl_tooltip_arrowSize);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Tooltip_showMarker, true);
        this.f14062n = z10;
        if (z10) {
            setShapeAppearanceModel(getShapeAppearanceModel().v().s(z()).m());
        } else {
            this.f14063o = 0;
        }
        G(typedArrayObtainStyledAttributes.getText(R$styleable.Tooltip_android_text));
        d dVarH = c.h(this.f14053b, typedArrayObtainStyledAttributes, R$styleable.Tooltip_android_textAppearance);
        if (dVarH != null && typedArrayObtainStyledAttributes.hasValue(R$styleable.Tooltip_android_textColor)) {
            dVarH.k(c.a(this.f14053b, typedArrayObtainStyledAttributes, R$styleable.Tooltip_android_textColor));
        }
        H(dVarH);
        setFillColor(ColorStateList.valueOf(typedArrayObtainStyledAttributes.getColor(R$styleable.Tooltip_backgroundTint, b4.a.i(u.d.u(b4.a.c(this.f14053b, R.attr.colorBackground, a.class.getCanonicalName()), 229), u.d.u(b4.a.c(this.f14053b, R$attr.colorOnBackground, a.class.getCanonicalName()), 153)))));
        setStrokeColor(ColorStateList.valueOf(b4.a.c(this.f14053b, R$attr.colorSurface, a.class.getCanonicalName())));
        this.f14058j = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Tooltip_android_padding, 0);
        this.f14059k = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Tooltip_android_minWidth, 0);
        this.f14060l = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Tooltip_android_minHeight, 0);
        this.f14061m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Tooltip_android_layout_margin, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void I(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.f14064p = iArr[0];
        view.getWindowVisibleDisplayFrame(this.f14057i);
    }

    private float v() {
        int i10;
        if (((this.f14057i.right - getBounds().right) - this.f14064p) - this.f14061m < 0) {
            i10 = ((this.f14057i.right - getBounds().right) - this.f14064p) - this.f14061m;
        } else {
            if (((this.f14057i.left - getBounds().left) - this.f14064p) + this.f14061m <= 0) {
                return 0.0f;
            }
            i10 = ((this.f14057i.left - getBounds().left) - this.f14064p) + this.f14061m;
        }
        return i10;
    }

    private float w() {
        this.f14055f.getTextPaint().getFontMetrics(this.f14054c);
        Paint.FontMetrics fontMetrics = this.f14054c;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private float x(Rect rect) {
        return rect.centerY() - w();
    }

    public static a y(Context context, AttributeSet attributeSet, int i10, int i11) {
        a aVar = new a(context, attributeSet, i10, i11);
        aVar.D(attributeSet, i10, i11);
        return aVar;
    }

    private g z() {
        float f10 = -v();
        float fWidth = ((float) (((double) getBounds().width()) - (((double) this.f14063o) * Math.sqrt(2.0d)))) / 2.0f;
        return new k(new h(this.f14063o), Math.min(Math.max(f10, -fWidth), fWidth));
    }

    public void A(View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.f14056h);
    }

    public void E(View view) {
        if (view == null) {
            return;
        }
        I(view);
        view.addOnLayoutChangeListener(this.f14056h);
    }

    public void F(float f10) {
        this.f14068t = 1.2f;
        this.f14065q = f10;
        this.f14066r = f10;
        this.f14069u = x3.a.b(0.0f, 1.0f, 0.19f, 1.0f, f10);
        invalidateSelf();
    }

    public void G(CharSequence charSequence) {
        if (TextUtils.equals(this.f14052a, charSequence)) {
            return;
        }
        this.f14052a = charSequence;
        this.f14055f.setTextWidthDirty(true);
        invalidateSelf();
    }

    public void H(d dVar) {
        this.f14055f.setTextAppearance(dVar, this.f14053b);
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.save();
        float fV = v();
        float f10 = (float) (-((((double) this.f14063o) * Math.sqrt(2.0d)) - ((double) this.f14063o)));
        canvas.scale(this.f14065q, this.f14066r, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.f14068t));
        canvas.translate(fV, f10);
        super.draw(canvas);
        B(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.f14055f.getTextPaint().getTextSize(), this.f14060l);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.f14058j * 2) + C(), this.f14059k);
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.f14062n) {
            setShapeAppearanceModel(getShapeAppearanceModel().v().s(z()).m());
        }
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        invalidateSelf();
    }
}
