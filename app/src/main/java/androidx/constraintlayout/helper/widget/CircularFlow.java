package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.VirtualLayout;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class CircularFlow extends VirtualLayout {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static int f1103y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static float f1104z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ConstraintLayout f1105o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f1106p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float[] f1107q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int[] f1108r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f1109s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1110t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f1111u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f1112v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Float f1113w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Integer f1114x;

    public CircularFlow(Context context) {
        super(context);
    }

    private void A() {
        this.f1105o = (ConstraintLayout) getParent();
        for (int i10 = 0; i10 < this.f1650b; i10++) {
            View viewById = this.f1105o.getViewById(this.f1649a[i10]);
            if (viewById != null) {
                int i11 = f1103y;
                float f10 = f1104z;
                int[] iArr = this.f1108r;
                if (iArr == null || i10 >= iArr.length) {
                    Integer num = this.f1114x;
                    if (num == null || num.intValue() == -1) {
                        Log.e("CircularFlow", "Added radius to view with id: " + ((String) this.f1657l.get(Integer.valueOf(viewById.getId()))));
                    } else {
                        this.f1109s++;
                        if (this.f1108r == null) {
                            this.f1108r = new int[1];
                        }
                        int[] radius = getRadius();
                        this.f1108r = radius;
                        radius[this.f1109s - 1] = i11;
                    }
                } else {
                    i11 = iArr[i10];
                }
                float[] fArr = this.f1107q;
                if (fArr == null || i10 >= fArr.length) {
                    Float f11 = this.f1113w;
                    if (f11 == null || f11.floatValue() == -1.0f) {
                        Log.e("CircularFlow", "Added angle to view with id: " + ((String) this.f1657l.get(Integer.valueOf(viewById.getId()))));
                    } else {
                        this.f1110t++;
                        if (this.f1107q == null) {
                            this.f1107q = new float[1];
                        }
                        float[] angles = getAngles();
                        this.f1107q = angles;
                        angles[this.f1110t - 1] = f10;
                    }
                } else {
                    f10 = fArr[i10];
                }
                ConstraintLayout.b bVar = (ConstraintLayout.b) viewById.getLayoutParams();
                bVar.circleAngle = f10;
                bVar.circleConstraint = this.f1106p;
                bVar.circleRadius = i11;
                viewById.setLayoutParams(bVar);
            }
        }
        h();
    }

    private void setAngles(String str) {
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f1110t = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                y(str.substring(i10).trim());
                return;
            } else {
                y(str.substring(i10, iIndexOf).trim());
                i10 = iIndexOf + 1;
            }
        }
    }

    private void setRadius(String str) {
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f1109s = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                z(str.substring(i10).trim());
                return;
            } else {
                z(str.substring(i10, iIndexOf).trim());
                i10 = iIndexOf + 1;
            }
        }
    }

    private void y(String str) {
        float[] fArr;
        if (str == null || str.length() == 0 || this.f1651c == null || (fArr = this.f1107q) == null) {
            return;
        }
        if (this.f1110t + 1 > fArr.length) {
            this.f1107q = Arrays.copyOf(fArr, fArr.length + 1);
        }
        this.f1107q[this.f1110t] = Integer.parseInt(str);
        this.f1110t++;
    }

    private void z(String str) {
        int[] iArr;
        if (str == null || str.length() == 0 || this.f1651c == null || (iArr = this.f1108r) == null) {
            return;
        }
        if (this.f1109s + 1 > iArr.length) {
            this.f1108r = Arrays.copyOf(iArr, iArr.length + 1);
        }
        this.f1108r[this.f1109s] = (int) (Integer.parseInt(str) * this.f1651c.getResources().getDisplayMetrics().density);
        this.f1109s++;
    }

    public float[] getAngles() {
        return Arrays.copyOf(this.f1107q, this.f1110t);
    }

    public int[] getRadius() {
        return Arrays.copyOf(this.f1108r, this.f1109s);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attributeSet) {
        super.o(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_circularflow_viewCenter) {
                    this.f1106p = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_angles) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f1111u = string;
                    setAngles(string);
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_radiusInDP) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f1112v = string2;
                    setRadius(string2);
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_defaultAngle) {
                    Float fValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, f1104z));
                    this.f1113w = fValueOf;
                    setDefaultAngle(fValueOf.floatValue());
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_defaultRadius) {
                    Integer numValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, f1103y));
                    this.f1114x = numValueOf;
                    setDefaultRadius(numValueOf.intValue());
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f1111u;
        if (str != null) {
            this.f1107q = new float[1];
            setAngles(str);
        }
        String str2 = this.f1112v;
        if (str2 != null) {
            this.f1108r = new int[1];
            setRadius(str2);
        }
        Float f10 = this.f1113w;
        if (f10 != null) {
            setDefaultAngle(f10.floatValue());
        }
        Integer num = this.f1114x;
        if (num != null) {
            setDefaultRadius(num.intValue());
        }
        A();
    }

    public void setDefaultAngle(float f10) {
        f1104z = f10;
    }

    public void setDefaultRadius(int i10) {
        f1103y = i10;
    }

    public CircularFlow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CircularFlow(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
