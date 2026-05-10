package com.coloros.translate.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"AppCompatCustomView"})
public final class AdaptableTextView extends TextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f7168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n8.j f7170c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextPaint f7171f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7172h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f7173i;

    static final class a extends s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final StringBuilder mo8invoke() {
            return new StringBuilder();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdaptableTextView(Context context) {
        this(context, null, 0, 6, null);
        r.e(context, "context");
    }

    private final void a(String str, float f10, Canvas canvas) {
        this.f7172h = 0;
        this.f7173i = 0.0f;
        kotlin.text.r.i(getNewContent());
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (kotlin.text.a.c(str.charAt(i10))) {
                this.f7172h++;
            }
        }
        if (kotlin.text.a.c(str.charAt(str.length() - 1))) {
            this.f7172h--;
        }
        int i11 = this.f7172h;
        if (i11 > 0) {
            this.f7173i = (this.f7169b - f10) / i11;
        }
        int length2 = str.length();
        float desiredWidth = 0.0f;
        for (int i12 = 0; i12 < length2; i12++) {
            getNewContent().append(str.charAt(i12));
            if (kotlin.text.a.c(str.charAt(i12))) {
                canvas.drawText(getNewContent().toString(), desiredWidth, this.f7168a, this.f7171f);
                desiredWidth += Layout.getDesiredWidth(getNewContent(), this.f7171f);
                if (i12 != str.length() - 1) {
                    float f11 = this.f7173i;
                    if (f11 > 0.0f) {
                        desiredWidth += f11;
                    }
                }
                kotlin.text.r.i(getNewContent());
            } else if (i12 == str.length() - 1 && getNewContent().length() > 0) {
                canvas.drawText(getNewContent().toString(), desiredWidth, this.f7168a, this.f7171f);
            }
        }
    }

    private final boolean b(String str) {
        return (str.length() == 0 || str.charAt(str.length() - 1) == '\n') ? false : true;
    }

    private final StringBuilder getNewContent() {
        return (StringBuilder) this.f7170c.getValue();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        r.e(canvas, "canvas");
        this.f7168a = 0.0f;
        this.f7169b = getMeasuredWidth();
        this.f7168a += (int) getTextSize();
        Layout layout = getLayout();
        int lineCount = layout.getLineCount();
        for (int i10 = 0; i10 < lineCount; i10++) {
            int lineStart = layout.getLineStart(i10);
            int lineEnd = layout.getLineEnd(i10);
            String strSubstring = getText().toString().substring(lineStart, lineEnd);
            r.d(strSubstring, "substring(...)");
            if (!b(strSubstring)) {
                canvas.drawText(strSubstring, 0.0f, this.f7168a, this.f7171f);
            } else if (i10 == lineCount - 1) {
                canvas.drawText(strSubstring, 0.0f, this.f7168a, this.f7171f);
            } else {
                a(strSubstring, Layout.getDesiredWidth(getText(), lineStart, lineEnd, this.f7171f), canvas);
            }
            this.f7168a += getLineHeight();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdaptableTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        r.e(context, "context");
    }

    public /* synthetic */ AdaptableTextView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdaptableTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.e(context, "context");
        this.f7170c = n8.k.b(a.INSTANCE);
        TextPaint paint = getPaint();
        r.d(paint, "getPaint(...)");
        this.f7171f = paint;
        paint.setColor(getCurrentTextColor());
        this.f7171f.drawableState = getDrawableState();
    }
}
