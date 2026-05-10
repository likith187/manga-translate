package com.coloros.translate.ui.simultaneous.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import java.util.Locale;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class TextBackgroundTextView extends AppCompatTextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f6793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f6794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6795c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j f6796f;

    static final class a extends s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Boolean mo8invoke() {
            return Boolean.valueOf(b0.e.a(Locale.getDefault()) == 1);
        }
    }

    static final class b extends s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Paint mo8invoke() {
            return new Paint();
        }
    }

    static final class c extends s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Rect mo8invoke() {
            return new Rect();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextBackgroundTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
        this.f6793a = k.b(c.INSTANCE);
        this.f6794b = k.b(b.INSTANCE);
        this.f6796f = k.b(a.INSTANCE);
    }

    private final boolean c() {
        return ((Boolean) this.f6796f.getValue()).booleanValue();
    }

    private final Paint getMBackgroundPaint() {
        return (Paint) this.f6794b.getValue();
    }

    private final Rect getMBounds() {
        return (Rect) this.f6793a.getValue();
    }

    public final void b() {
        this.f6795c = false;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        r.e(canvas, "canvas");
        if (this.f6795c) {
            int lineCount = getLineCount();
            float lineSpacingExtra = getLineSpacingExtra();
            String string = getText().toString();
            for (int i10 = 0; i10 < lineCount; i10++) {
                getLineBounds(i10, getMBounds());
                float fMeasureText = getPaint().measureText(string, getLayout().getLineStart(i10), getLayout().getLineEnd(i10));
                if (c()) {
                    if (i10 == lineCount - 1) {
                        canvas.drawRect(getMBounds().right - fMeasureText, getMBounds().top, getMBounds().right, getMBounds().bottom, getMBackgroundPaint());
                    } else {
                        canvas.drawRect(getMBounds().right - fMeasureText, getMBounds().top, getMBounds().right, getMBounds().bottom - lineSpacingExtra, getMBackgroundPaint());
                    }
                } else if (i10 == lineCount - 1) {
                    canvas.drawRect(getMBounds().left, getMBounds().top, fMeasureText, getMBounds().bottom, getMBackgroundPaint());
                } else {
                    canvas.drawRect(getMBounds().left, getMBounds().top, fMeasureText, getMBounds().bottom - lineSpacingExtra, getMBackgroundPaint());
                }
            }
        }
        super.onDraw(canvas);
    }

    public final void setTextBackgroundColor(int i10) {
        this.f6795c = true;
        getMBackgroundPaint().setColor(i10);
        getMBackgroundPaint().setStyle(Paint.Style.FILL);
    }
}
