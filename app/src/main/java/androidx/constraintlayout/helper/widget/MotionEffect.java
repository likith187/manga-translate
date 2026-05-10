package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class MotionEffect extends MotionHelper {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f1142q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f1143r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f1144s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1145t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f1146u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f1147v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f1148w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f1149x;

    public MotionEffect(Context context) {
        super(context);
        this.f1142q = 0.1f;
        this.f1143r = 49;
        this.f1144s = 50;
        this.f1145t = 0;
        this.f1146u = 0;
        this.f1147v = true;
        this.f1148w = -1;
        this.f1149x = -1;
    }

    private void F(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MotionEffect);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MotionEffect_motionEffect_start) {
                    int i11 = typedArrayObtainStyledAttributes.getInt(index, this.f1143r);
                    this.f1143r = i11;
                    this.f1143r = Math.max(Math.min(i11, 99), 0);
                } else if (index == R$styleable.MotionEffect_motionEffect_end) {
                    int i12 = typedArrayObtainStyledAttributes.getInt(index, this.f1144s);
                    this.f1144s = i12;
                    this.f1144s = Math.max(Math.min(i12, 99), 0);
                } else if (index == R$styleable.MotionEffect_motionEffect_translationX) {
                    this.f1145t = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1145t);
                } else if (index == R$styleable.MotionEffect_motionEffect_translationY) {
                    this.f1146u = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1146u);
                } else if (index == R$styleable.MotionEffect_motionEffect_alpha) {
                    this.f1142q = typedArrayObtainStyledAttributes.getFloat(index, this.f1142q);
                } else if (index == R$styleable.MotionEffect_motionEffect_move) {
                    this.f1149x = typedArrayObtainStyledAttributes.getInt(index, this.f1149x);
                } else if (index == R$styleable.MotionEffect_motionEffect_strict) {
                    this.f1147v = typedArrayObtainStyledAttributes.getBoolean(index, this.f1147v);
                } else if (index == R$styleable.MotionEffect_motionEffect_viewTransition) {
                    this.f1148w = typedArrayObtainStyledAttributes.getResourceId(index, this.f1148w);
                }
            }
            int i13 = this.f1143r;
            int i14 = this.f1144s;
            if (i13 == i14) {
                if (i13 > 0) {
                    this.f1143r = i13 - 1;
                } else {
                    this.f1144s = i14 + 1;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0185, code lost:
    
        if (r14 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0199, code lost:
    
        if (r14 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a9, code lost:
    
        if (r15 == 0.0f) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01e4  */
    @Override // androidx.constraintlayout.motion.widget.MotionHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void D(androidx.constraintlayout.motion.widget.MotionLayout r23, java.util.HashMap r24) {
        /*
            Method dump skipped, instruction units count: 496
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.helper.widget.MotionEffect.D(androidx.constraintlayout.motion.widget.MotionLayout, java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper
    public boolean x() {
        return true;
    }

    public MotionEffect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1142q = 0.1f;
        this.f1143r = 49;
        this.f1144s = 50;
        this.f1145t = 0;
        this.f1146u = 0;
        this.f1147v = true;
        this.f1148w = -1;
        this.f1149x = -1;
        F(context, attributeSet);
    }

    public MotionEffect(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1142q = 0.1f;
        this.f1143r = 49;
        this.f1144s = 50;
        this.f1145t = 0;
        this.f1146u = 0;
        this.f1147v = true;
        this.f1148w = -1;
        this.f1149x = -1;
        F(context, attributeSet);
    }
}
