package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.VirtualLayout;
import androidx.constraintlayout.widget.c;
import o.e;
import o.g;
import o.j;
import o.m;

/* JADX INFO: loaded from: classes.dex */
public class Flow extends VirtualLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private g f1115o;

    public Flow(Context context) {
        super(context);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attributeSet) {
        super.o(attributeSet);
        this.f1115o = new g();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_android_orientation) {
                    this.f1115o.I2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_padding) {
                    this.f1115o.N1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingStart) {
                    this.f1115o.S1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingEnd) {
                    this.f1115o.P1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingLeft) {
                    this.f1115o.Q1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingTop) {
                    this.f1115o.T1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingRight) {
                    this.f1115o.R1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingBottom) {
                    this.f1115o.O1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_wrapMode) {
                    this.f1115o.N2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.f1115o.C2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.f1115o.M2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.f1115o.w2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.f1115o.E2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.f1115o.y2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.f1115o.G2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.f1115o.A2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.f1115o.v2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.f1115o.D2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.f1115o.x2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.f1115o.F2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalBias) {
                    this.f1115o.K2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.f1115o.z2(typedArrayObtainStyledAttributes.getInt(index, 2));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.f1115o.J2(typedArrayObtainStyledAttributes.getInt(index, 2));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.f1115o.B2(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalGap) {
                    this.f1115o.L2(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.f1115o.H2(typedArrayObtainStyledAttributes.getInt(index, -1));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1652f = this.f1115o;
        w();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    protected void onMeasure(int i10, int i11) {
        x(this.f1115o, i10, i11);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void p(c.a aVar, j jVar, ConstraintLayout.b bVar, SparseArray sparseArray) {
        super.p(aVar, jVar, bVar, sparseArray);
        if (jVar instanceof g) {
            g gVar = (g) jVar;
            int i10 = bVar.orientation;
            if (i10 != -1) {
                gVar.I2(i10);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void q(e eVar, boolean z10) {
        this.f1115o.y1(z10);
    }

    public void setFirstHorizontalBias(float f10) {
        this.f1115o.v2(f10);
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i10) {
        this.f1115o.w2(i10);
        requestLayout();
    }

    public void setFirstVerticalBias(float f10) {
        this.f1115o.x2(f10);
        requestLayout();
    }

    public void setFirstVerticalStyle(int i10) {
        this.f1115o.y2(i10);
        requestLayout();
    }

    public void setHorizontalAlign(int i10) {
        this.f1115o.z2(i10);
        requestLayout();
    }

    public void setHorizontalBias(float f10) {
        this.f1115o.A2(f10);
        requestLayout();
    }

    public void setHorizontalGap(int i10) {
        this.f1115o.B2(i10);
        requestLayout();
    }

    public void setHorizontalStyle(int i10) {
        this.f1115o.C2(i10);
        requestLayout();
    }

    public void setLastHorizontalBias(float f10) {
        this.f1115o.D2(f10);
        requestLayout();
    }

    public void setLastHorizontalStyle(int i10) {
        this.f1115o.E2(i10);
        requestLayout();
    }

    public void setLastVerticalBias(float f10) {
        this.f1115o.F2(f10);
        requestLayout();
    }

    public void setLastVerticalStyle(int i10) {
        this.f1115o.G2(i10);
        requestLayout();
    }

    public void setMaxElementsWrap(int i10) {
        this.f1115o.H2(i10);
        requestLayout();
    }

    public void setOrientation(int i10) {
        this.f1115o.I2(i10);
        requestLayout();
    }

    public void setPadding(int i10) {
        this.f1115o.N1(i10);
        requestLayout();
    }

    public void setPaddingBottom(int i10) {
        this.f1115o.O1(i10);
        requestLayout();
    }

    public void setPaddingLeft(int i10) {
        this.f1115o.Q1(i10);
        requestLayout();
    }

    public void setPaddingRight(int i10) {
        this.f1115o.R1(i10);
        requestLayout();
    }

    public void setPaddingTop(int i10) {
        this.f1115o.T1(i10);
        requestLayout();
    }

    public void setVerticalAlign(int i10) {
        this.f1115o.J2(i10);
        requestLayout();
    }

    public void setVerticalBias(float f10) {
        this.f1115o.K2(f10);
        requestLayout();
    }

    public void setVerticalGap(int i10) {
        this.f1115o.L2(i10);
        requestLayout();
    }

    public void setVerticalStyle(int i10) {
        this.f1115o.M2(i10);
        requestLayout();
    }

    public void setWrapMode(int i10) {
        this.f1115o.N2(i10);
        requestLayout();
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    public void x(m mVar, int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mVar == null) {
            setMeasuredDimension(0, 0);
        } else {
            mVar.H1(mode, size, mode2, size2);
            setMeasuredDimension(mVar.C1(), mVar.B1());
        }
    }

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Flow(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
