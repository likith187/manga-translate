package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import com.google.android.material.R$animator;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
import x3.h;
import x3.j;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map f10646l;

    public FabTransformationSheetBehavior() {
    }

    private void C(View view, boolean z10) {
        ViewParent parent = view.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z10) {
                this.f10646l = new HashMap(childCount);
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                boolean z11 = (childAt.getLayoutParams() instanceof CoordinatorLayout.f) && (((CoordinatorLayout.f) childAt.getLayoutParams()).f() instanceof FabTransformationScrimBehavior);
                if (childAt != view && !z11) {
                    if (z10) {
                        this.f10646l.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        m0.t0(childAt, 4);
                    } else {
                        Map map = this.f10646l;
                        if (map != null && map.containsKey(childAt)) {
                            m0.t0(childAt, ((Integer) this.f10646l.get(childAt)).intValue());
                        }
                    }
                }
            }
            if (z10) {
                return;
            }
            this.f10646l = null;
        }
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    protected FabTransformationBehavior.e A(Context context, boolean z10) {
        int i10 = z10 ? R$animator.mtrl_fab_transformation_sheet_expand_spec : R$animator.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.e eVar = new FabTransformationBehavior.e();
        eVar.f10639a = h.d(context, i10);
        eVar.f10640b = new j(17, 0.0f, 0.0f);
        return eVar;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    protected boolean d(View view, View view2, boolean z10, boolean z11) {
        C(view2, z10);
        return super.d(view, view2, z10, z11);
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
