package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.p;
import androidx.constraintlayout.widget.R$styleable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Carousel extends MotionHelper {
    private float A;
    private int B;
    private int C;
    private int D;
    private float E;
    private int F;
    private int G;
    int H;
    Runnable I;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ArrayList f1092q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f1093r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f1094s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private MotionLayout f1095t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f1096u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f1097v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f1098w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f1099x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f1100y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f1101z;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Carousel.this.f1095t.setProgress(0.0f);
            Carousel.this.K();
            Carousel.I(Carousel.this);
            int unused = Carousel.this.f1094s;
            throw null;
        }
    }

    public interface b {
    }

    public Carousel(Context context) {
        super(context);
        this.f1092q = new ArrayList();
        this.f1093r = 0;
        this.f1094s = 0;
        this.f1096u = -1;
        this.f1097v = false;
        this.f1098w = -1;
        this.f1099x = -1;
        this.f1100y = -1;
        this.f1101z = -1;
        this.A = 0.9f;
        this.B = 0;
        this.C = 4;
        this.D = 1;
        this.E = 2.0f;
        this.F = -1;
        this.G = 200;
        this.H = -1;
        this.I = new a();
    }

    static /* synthetic */ b I(Carousel carousel) {
        carousel.getClass();
        return null;
    }

    private void J(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Carousel);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.Carousel_carousel_firstView) {
                    this.f1096u = typedArrayObtainStyledAttributes.getResourceId(index, this.f1096u);
                } else if (index == R$styleable.Carousel_carousel_backwardTransition) {
                    this.f1098w = typedArrayObtainStyledAttributes.getResourceId(index, this.f1098w);
                } else if (index == R$styleable.Carousel_carousel_forwardTransition) {
                    this.f1099x = typedArrayObtainStyledAttributes.getResourceId(index, this.f1099x);
                } else if (index == R$styleable.Carousel_carousel_emptyViewsBehavior) {
                    this.C = typedArrayObtainStyledAttributes.getInt(index, this.C);
                } else if (index == R$styleable.Carousel_carousel_previousState) {
                    this.f1100y = typedArrayObtainStyledAttributes.getResourceId(index, this.f1100y);
                } else if (index == R$styleable.Carousel_carousel_nextState) {
                    this.f1101z = typedArrayObtainStyledAttributes.getResourceId(index, this.f1101z);
                } else if (index == R$styleable.Carousel_carousel_touchUp_dampeningFactor) {
                    this.A = typedArrayObtainStyledAttributes.getFloat(index, this.A);
                } else if (index == R$styleable.Carousel_carousel_touchUpMode) {
                    this.D = typedArrayObtainStyledAttributes.getInt(index, this.D);
                } else if (index == R$styleable.Carousel_carousel_touchUp_velocityThreshold) {
                    this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                } else if (index == R$styleable.Carousel_carousel_infinite) {
                    this.f1097v = typedArrayObtainStyledAttributes.getBoolean(index, this.f1097v);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionLayout.j
    public void a(MotionLayout motionLayout, int i10, int i11, float f10) {
        this.H = i10;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionLayout.j
    public void d(MotionLayout motionLayout, int i10) {
        int i11 = this.f1094s;
        this.f1093r = i11;
        if (i10 == this.f1101z) {
            this.f1094s = i11 + 1;
        } else if (i10 == this.f1100y) {
            this.f1094s = i11 - 1;
        }
        if (!this.f1097v) {
            throw null;
        }
        throw null;
    }

    public int getCount() {
        return 0;
    }

    public int getCurrentIndex() {
        return this.f1094s;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof MotionLayout) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            this.f1092q.clear();
            for (int i10 = 0; i10 < this.f1650b; i10++) {
                int i11 = this.f1649a[i10];
                View viewById = motionLayout.getViewById(i11);
                if (this.f1096u == i11) {
                    this.B = i10;
                }
                this.f1092q.add(viewById);
            }
            this.f1095t = motionLayout;
            if (this.D == 2) {
                p.b bVarV = motionLayout.V(this.f1099x);
                if (bVarV != null) {
                    bVarV.G(5);
                }
                p.b bVarV2 = this.f1095t.V(this.f1098w);
                if (bVarV2 != null) {
                    bVarV2.G(5);
                }
            }
            K();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1092q.clear();
    }

    public void setAdapter(b bVar) {
    }

    public void setInfinite(boolean z10) {
        this.f1097v = z10;
    }

    public Carousel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1092q = new ArrayList();
        this.f1093r = 0;
        this.f1094s = 0;
        this.f1096u = -1;
        this.f1097v = false;
        this.f1098w = -1;
        this.f1099x = -1;
        this.f1100y = -1;
        this.f1101z = -1;
        this.A = 0.9f;
        this.B = 0;
        this.C = 4;
        this.D = 1;
        this.E = 2.0f;
        this.F = -1;
        this.G = 200;
        this.H = -1;
        this.I = new a();
        J(context, attributeSet);
    }

    public Carousel(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1092q = new ArrayList();
        this.f1093r = 0;
        this.f1094s = 0;
        this.f1096u = -1;
        this.f1097v = false;
        this.f1098w = -1;
        this.f1099x = -1;
        this.f1100y = -1;
        this.f1101z = -1;
        this.A = 0.9f;
        this.B = 0;
        this.C = 4;
        this.D = 1;
        this.E = 2.0f;
        this.F = -1;
        this.G = 200;
        this.H = -1;
        this.I = new a();
        J(context, attributeSet);
    }
}
