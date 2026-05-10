package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import o.m;

/* JADX INFO: loaded from: classes.dex */
public abstract class VirtualLayout extends ConstraintHelper {

    /* JADX INFO: renamed from: m */
    private boolean f1690m;

    /* JADX INFO: renamed from: n */
    private boolean f1691n;

    public VirtualLayout(Context context) {
        super(context);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void j(ConstraintLayout constraintLayout) {
        i(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attributeSet) {
        super.o(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f1690m = true;
                } else if (index == R$styleable.ConstraintLayout_Layout_android_elevation) {
                    this.f1691n = true;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1690m || this.f1691n) {
            ViewParent parent = getParent();
            if (parent instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) parent;
                int visibility = getVisibility();
                float elevation = getElevation();
                for (int i10 = 0; i10 < this.f1650b; i10++) {
                    View viewById = constraintLayout.getViewById(this.f1649a[i10]);
                    if (viewById != null) {
                        if (this.f1690m) {
                            viewById.setVisibility(visibility);
                        }
                        if (this.f1691n && elevation > 0.0f) {
                            viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        h();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        h();
    }

    public void x(m mVar, int i10, int i11) {
    }

    public VirtualLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VirtualLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
