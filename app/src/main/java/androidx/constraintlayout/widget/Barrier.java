package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import o.j;

/* JADX INFO: loaded from: classes.dex */
public class Barrier extends ConstraintHelper {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f1646m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f1647n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private o.a f1648o;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    private void x(o.e eVar, int i10, boolean z10) {
        this.f1647n = i10;
        if (z10) {
            int i11 = this.f1646m;
            if (i11 == 5) {
                this.f1647n = 1;
            } else if (i11 == 6) {
                this.f1647n = 0;
            }
        } else {
            int i12 = this.f1646m;
            if (i12 == 5) {
                this.f1647n = 0;
            } else if (i12 == 6) {
                this.f1647n = 1;
            }
        }
        if (eVar instanceof o.a) {
            ((o.a) eVar).F1(this.f1647n);
        }
    }

    public boolean getAllowsGoneWidget() {
        return this.f1648o.z1();
    }

    public int getMargin() {
        return this.f1648o.B1();
    }

    public int getType() {
        return this.f1646m;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attributeSet) {
        super.o(attributeSet);
        this.f1648o = new o.a();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f1648o.E1(typedArrayObtainStyledAttributes.getBoolean(index, true));
                } else if (index == R$styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.f1648o.G1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1652f = this.f1648o;
        w();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void p(c.a aVar, j jVar, ConstraintLayout.b bVar, SparseArray sparseArray) {
        super.p(aVar, jVar, bVar, sparseArray);
        if (jVar instanceof o.a) {
            o.a aVar2 = (o.a) jVar;
            x(aVar2, aVar.f1731e.f1763h0, ((o.f) jVar.M()).V1());
            aVar2.E1(aVar.f1731e.f1779p0);
            aVar2.G1(aVar.f1731e.f1765i0);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void q(o.e eVar, boolean z10) {
        x(eVar, this.f1646m, z10);
    }

    public void setAllowsGoneWidget(boolean z10) {
        this.f1648o.E1(z10);
    }

    public void setDpMargin(int i10) {
        this.f1648o.G1((int) ((i10 * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i10) {
        this.f1648o.G1(i10);
    }

    public void setType(int i10) {
        this.f1646m = i10;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        super.setVisibility(8);
    }
}
