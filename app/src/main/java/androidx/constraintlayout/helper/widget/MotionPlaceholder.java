package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.widget.VirtualLayout;
import o.f;
import o.i;
import o.l;
import o.m;

/* JADX INFO: loaded from: classes.dex */
public class MotionPlaceholder extends VirtualLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    l f1150o;

    public MotionPlaceholder(Context context) {
        super(context);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attributeSet) {
        super.o(attributeSet);
        this.f1652f = new l();
        w();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    protected void onMeasure(int i10, int i11) {
        x(this.f1150o, i10, i11);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void v(f fVar, i iVar, SparseArray sparseArray) {
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

    public MotionPlaceholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MotionPlaceholder(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
