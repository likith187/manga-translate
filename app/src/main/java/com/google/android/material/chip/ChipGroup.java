package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableGroup;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.ThemeEnforcement;
import d0.h;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ChipGroup extends FlowLayout {

    /* JADX INFO: renamed from: j */
    private static final int f9299j = R$style.Widget_MaterialComponents_ChipGroup;

    /* JADX INFO: renamed from: a */
    private int f9300a;

    /* JADX INFO: renamed from: b */
    private int f9301b;

    /* JADX INFO: renamed from: c */
    private e f9302c;

    /* JADX INFO: renamed from: f */
    private final CheckableGroup f9303f;

    /* JADX INFO: renamed from: h */
    private final int f9304h;

    /* JADX INFO: renamed from: i */
    private final f f9305i;

    class a implements CheckableGroup.OnCheckedStateChangeListener {
        a() {
        }

        @Override // com.google.android.material.internal.CheckableGroup.OnCheckedStateChangeListener
        public void onCheckedStateChanged(Set set) {
            if (ChipGroup.this.f9302c != null) {
                e eVar = ChipGroup.this.f9302c;
                ChipGroup chipGroup = ChipGroup.this;
                eVar.a(chipGroup, chipGroup.f9303f.getCheckedIdsSortedByChildOrder(ChipGroup.this));
            }
        }
    }

    class b implements e {
        b(d dVar) {
        }

        @Override // com.google.android.material.chip.ChipGroup.e
        public void a(ChipGroup chipGroup, List list) {
            if (ChipGroup.this.f9303f.isSingleSelection()) {
                ChipGroup.this.getCheckedChipId();
                throw null;
            }
        }
    }

    public static class c extends ViewGroup.MarginLayoutParams {
        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(int i10, int i11) {
            super(i10, i11);
        }
    }

    public interface d {
    }

    public interface e {
        void a(ChipGroup chipGroup, List list);
    }

    private class f implements ViewGroup.OnHierarchyChangeListener {

        /* JADX INFO: renamed from: a */
        private ViewGroup.OnHierarchyChangeListener f9308a;

        private f() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(m0.i());
                }
                ChipGroup.this.f9303f.addCheckable((Chip) view2);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f9308a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            ChipGroup chipGroup = ChipGroup.this;
            if (view == chipGroup && (view2 instanceof Chip)) {
                chipGroup.f9303f.removeCheckable((Chip) view2);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f9308a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }

        /* synthetic */ f(ChipGroup chipGroup, a aVar) {
            this();
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    private boolean d(int i10) {
        return getChildAt(i10).getVisibility() == 0;
    }

    private int getVisibleChipCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof Chip) && d(i11)) {
                i10++;
            }
        }
        return i10;
    }

    int c(View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if ((childAt instanceof Chip) && d(i11)) {
                if (((Chip) childAt) == view) {
                    return i10;
                }
                i10++;
            }
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof c);
    }

    public boolean e() {
        return this.f9303f.isSingleSelection();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        return this.f9303f.getSingleCheckedId();
    }

    public List<Integer> getCheckedChipIds() {
        return this.f9303f.getCheckedIdsSortedByChildOrder(this);
    }

    public int getChipSpacingHorizontal() {
        return this.f9300a;
    }

    public int getChipSpacingVertical() {
        return this.f9301b;
    }

    @Override // com.google.android.material.internal.FlowLayout
    public boolean isSingleLine() {
        return super.isSingleLine();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f9304h;
        if (i10 != -1) {
            this.f9303f.check(i10);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        h.M0(accessibilityNodeInfo).j0(h.e.b(getRowCount(), isSingleLine() ? getVisibleChipCount() : -1, false, e() ? 1 : 2));
    }

    public void setChipSpacing(int i10) {
        setChipSpacingHorizontal(i10);
        setChipSpacingVertical(i10);
    }

    public void setChipSpacingHorizontal(int i10) {
        if (this.f9300a != i10) {
            this.f9300a = i10;
            setItemSpacing(i10);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i10) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i10));
    }

    public void setChipSpacingResource(int i10) {
        setChipSpacing(getResources().getDimensionPixelOffset(i10));
    }

    public void setChipSpacingVertical(int i10) {
        if (this.f9301b != i10) {
            this.f9301b = i10;
            setLineSpacing(i10);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i10) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i10));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i10) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    @Deprecated
    public void setOnCheckedChangeListener(d dVar) {
        if (dVar == null) {
            setOnCheckedStateChangeListener(null);
        } else {
            setOnCheckedStateChangeListener(new b(dVar));
        }
    }

    public void setOnCheckedStateChangeListener(e eVar) {
        this.f9302c = eVar;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f9305i.f9308a = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z10) {
        this.f9303f.setSelectionRequired(z10);
    }

    @Deprecated
    public void setShowDividerHorizontal(int i10) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i10) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // com.google.android.material.internal.FlowLayout
    public void setSingleLine(boolean z10) {
        super.setSingleLine(z10);
    }

    public void setSingleSelection(boolean z10) {
        this.f9303f.setSingleSelection(z10);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.chipGroupStyle);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    public void setSingleLine(int i10) {
        setSingleLine(getResources().getBoolean(i10));
    }

    public void setSingleSelection(int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ChipGroup(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9299j;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        CheckableGroup checkableGroup = new CheckableGroup();
        this.f9303f = checkableGroup;
        f fVar = new f(this, null);
        this.f9305i = fVar;
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(getContext(), attributeSet, R$styleable.ChipGroup, i10, i11, new int[0]);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(typedArrayObtainStyledAttributes.getBoolean(R$styleable.ChipGroup_singleLine, false));
        setSingleSelection(typedArrayObtainStyledAttributes.getBoolean(R$styleable.ChipGroup_singleSelection, false));
        setSelectionRequired(typedArrayObtainStyledAttributes.getBoolean(R$styleable.ChipGroup_selectionRequired, false));
        this.f9304h = typedArrayObtainStyledAttributes.getResourceId(R$styleable.ChipGroup_checkedChip, -1);
        typedArrayObtainStyledAttributes.recycle();
        checkableGroup.setOnCheckedStateChangeListener(new a());
        super.setOnHierarchyChangeListener(fVar);
        m0.t0(this, 1);
    }
}
