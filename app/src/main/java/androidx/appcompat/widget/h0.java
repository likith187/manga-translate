package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import t.h;

/* JADX INFO: loaded from: classes.dex */
public class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypedArray f895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TypedValue f896c;

    private h0(Context context, TypedArray typedArray) {
        this.f894a = context;
        this.f895b = typedArray;
    }

    public static h0 u(Context context, int i10, int[] iArr) {
        return new h0(context, context.obtainStyledAttributes(i10, iArr));
    }

    public static h0 v(Context context, AttributeSet attributeSet, int[] iArr) {
        return new h0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static h0 w(Context context, AttributeSet attributeSet, int[] iArr, int i10, int i11) {
        return new h0(context, context.obtainStyledAttributes(attributeSet, iArr, i10, i11));
    }

    public boolean a(int i10, boolean z10) {
        return this.f895b.getBoolean(i10, z10);
    }

    public int b(int i10, int i11) {
        return this.f895b.getColor(i10, i11);
    }

    public ColorStateList c(int i10) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!this.f895b.hasValue(i10) || (resourceId = this.f895b.getResourceId(i10, 0)) == 0 || (colorStateListA = e.a.a(this.f894a, resourceId)) == null) ? this.f895b.getColorStateList(i10) : colorStateListA;
    }

    public float d(int i10, float f10) {
        return this.f895b.getDimension(i10, f10);
    }

    public int e(int i10, int i11) {
        return this.f895b.getDimensionPixelOffset(i10, i11);
    }

    public int f(int i10, int i11) {
        return this.f895b.getDimensionPixelSize(i10, i11);
    }

    public Drawable g(int i10) {
        int resourceId;
        return (!this.f895b.hasValue(i10) || (resourceId = this.f895b.getResourceId(i10, 0)) == 0) ? this.f895b.getDrawable(i10) : e.a.b(this.f894a, resourceId);
    }

    public Drawable h(int i10) {
        int resourceId;
        if (!this.f895b.hasValue(i10) || (resourceId = this.f895b.getResourceId(i10, 0)) == 0) {
            return null;
        }
        return g.b().d(this.f894a, resourceId, true);
    }

    public float i(int i10, float f10) {
        return this.f895b.getFloat(i10, f10);
    }

    public Typeface j(int i10, int i11, h.e eVar) {
        int resourceId = this.f895b.getResourceId(i10, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f896c == null) {
            this.f896c = new TypedValue();
        }
        return t.h.i(this.f894a, resourceId, this.f896c, i11, eVar);
    }

    public int k(int i10, int i11) {
        return this.f895b.getInt(i10, i11);
    }

    public int l(int i10, int i11) {
        return this.f895b.getInteger(i10, i11);
    }

    public int m(int i10, int i11) {
        return this.f895b.getLayoutDimension(i10, i11);
    }

    public int n(int i10, int i11) {
        return this.f895b.getResourceId(i10, i11);
    }

    public String o(int i10) {
        return this.f895b.getString(i10);
    }

    public CharSequence p(int i10) {
        return this.f895b.getText(i10);
    }

    public CharSequence[] q(int i10) {
        return this.f895b.getTextArray(i10);
    }

    public TypedArray r() {
        return this.f895b;
    }

    public boolean s(int i10) {
        return this.f895b.hasValue(i10);
    }

    public int t() {
        return this.f895b.length();
    }

    public TypedValue x(int i10) {
        return this.f895b.peekValue(i10);
    }

    public void y() {
        this.f895b.recycle();
    }
}
