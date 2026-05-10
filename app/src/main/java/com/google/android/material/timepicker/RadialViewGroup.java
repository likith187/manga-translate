package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.m0;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import com.google.android.material.shape.i;
import com.google.android.material.shape.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class RadialViewGroup extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f10591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f10592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i f10593c;

    public RadialViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void h(List list, androidx.constraintlayout.widget.c cVar, int i10) {
        Iterator it = list.iterator();
        float size = 0.0f;
        while (it.hasNext()) {
            cVar.s(((View) it.next()).getId(), R$id.circle_center, i10, size);
            size += 360.0f / list.size();
        }
    }

    private Drawable i() {
        i iVar = new i();
        this.f10593c = iVar;
        iVar.setCornerSize(new l(0.5f));
        this.f10593c.setFillColor(ColorStateList.valueOf(-1));
        return this.f10593c;
    }

    private static boolean m(View view) {
        return "skip".equals(view.getTag());
    }

    private void o() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f10591a);
            handler.post(this.f10591a);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (view.getId() == -1) {
            view.setId(m0.i());
        }
        o();
    }

    int j(int i10) {
        int i11 = this.f10592b;
        return i10 == 2 ? Math.round(i11 * 0.66f) : i11;
    }

    public int k() {
        return this.f10592b;
    }

    public void l(int i10) {
        this.f10592b = i10;
        n();
    }

    protected void n() {
        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
        cVar.o(this);
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getId() != R$id.circle_center && !m(childAt)) {
                int i11 = (Integer) childAt.getTag(R$id.material_clock_level);
                if (i11 == null) {
                    i11 = 1;
                }
                if (!map.containsKey(i11)) {
                    map.put(i11, new ArrayList());
                }
                ((List) map.get(i11)).add(childAt);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            h((List) entry.getValue(), cVar, j(((Integer) entry.getKey()).intValue()));
        }
        cVar.i(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        n();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        o();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        this.f10593c.setFillColor(ColorStateList.valueOf(i10));
    }

    public RadialViewGroup(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(R$layout.material_radial_view_group, this);
        m0.n0(this, i());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RadialViewGroup, i10, 0);
        this.f10592b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.RadialViewGroup_materialCircleRadius, 0);
        this.f10591a = new Runnable() { // from class: com.google.android.material.timepicker.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f10613a.n();
            }
        };
        typedArrayObtainStyledAttributes.recycle();
    }
}
