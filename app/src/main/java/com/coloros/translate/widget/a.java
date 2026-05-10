package com.coloros.translate.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ImageSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0098a f7209b = new C0098a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference f7210a;

    /* JADX INFO: renamed from: com.coloros.translate.widget.a$a, reason: collision with other inner class name */
    public static final class C0098a {
        public /* synthetic */ C0098a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0098a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Drawable drawable, int i10) {
        super(drawable, i10);
        r.e(drawable, "drawable");
    }

    private final Drawable a() {
        WeakReference weakReference = this.f7210a;
        Drawable drawable = weakReference != null ? (Drawable) weakReference.get() : null;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawable2 = getDrawable();
        this.f7210a = new WeakReference(drawable2);
        r.d(drawable2, "also(...)");
        return drawable2;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        int i15;
        float fHeight;
        r.e(canvas, "canvas");
        r.e(paint, "paint");
        Drawable drawableA = a();
        int iSave = canvas.save();
        try {
            int i16 = ((ImageSpan) this).mVerticalAlignment;
            if (i16 == 0) {
                i15 = drawableA.getBounds().bottom;
            } else {
                if (i16 != 1) {
                    if (i16 != 2) {
                        int i17 = paint.getFontMetricsInt().descent;
                        fHeight = ((i13 + i17) - ((i17 - r1.ascent) / 2.0f)) - (drawableA.getBounds().height() / 2.0f);
                    } else {
                        fHeight = (i12 + ((i14 - i12) / 2.0f)) - (drawableA.getBounds().height() / 2.0f);
                    }
                    canvas.translate(f10, fHeight);
                    drawableA.draw(canvas);
                    canvas.restoreToCount(iSave);
                }
                i14 -= drawableA.getBounds().bottom;
                i15 = paint.getFontMetricsInt().descent;
            }
            fHeight = i14 - i15;
            canvas.translate(f10, fHeight);
            drawableA.draw(canvas);
            canvas.restoreToCount(iSave);
        } catch (Throwable th) {
            canvas.restoreToCount(iSave);
            throw th;
        }
    }
}
