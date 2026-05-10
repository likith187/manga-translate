package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class MotionButton extends AppCompatButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f1606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f1607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Path f1608c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ViewOutlineProvider f1609f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    RectF f1610h;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionButton.this.getWidth(), MotionButton.this.getHeight(), (Math.min(r3, r4) * MotionButton.this.f1606a) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionButton.this.getWidth(), MotionButton.this.getHeight(), MotionButton.this.f1607b);
        }
    }

    public MotionButton(Context context) {
        super(context);
        this.f1606a = 0.0f;
        this.f1607b = Float.NaN;
        c(context, null);
    }

    private void c(Context context, AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getRound() {
        return this.f1607b;
    }

    public float getRoundPercent() {
        return this.f1606a;
    }

    public void setRound(float f10) {
        if (Float.isNaN(f10)) {
            this.f1607b = f10;
            float f11 = this.f1606a;
            this.f1606a = -1.0f;
            setRoundPercent(f11);
            return;
        }
        boolean z10 = this.f1607b != f10;
        this.f1607b = f10;
        if (f10 != 0.0f) {
            if (this.f1608c == null) {
                this.f1608c = new Path();
            }
            if (this.f1610h == null) {
                this.f1610h = new RectF();
            }
            if (this.f1609f == null) {
                b bVar = new b();
                this.f1609f = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f1610h.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f1608c.reset();
            Path path = this.f1608c;
            RectF rectF = this.f1610h;
            float f12 = this.f1607b;
            path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f10) {
        boolean z10 = this.f1606a != f10;
        this.f1606a = f10;
        if (f10 != 0.0f) {
            if (this.f1608c == null) {
                this.f1608c = new Path();
            }
            if (this.f1610h == null) {
                this.f1610h = new RectF();
            }
            if (this.f1609f == null) {
                a aVar = new a();
                this.f1609f = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f1606a) / 2.0f;
            this.f1610h.set(0.0f, 0.0f, width, height);
            this.f1608c.reset();
            this.f1608c.addRoundRect(this.f1610h, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public MotionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1606a = 0.0f;
        this.f1607b = Float.NaN;
        c(context, attributeSet);
    }

    public MotionButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1606a = 0.0f;
        this.f1607b = Float.NaN;
        c(context, attributeSet);
    }
}
