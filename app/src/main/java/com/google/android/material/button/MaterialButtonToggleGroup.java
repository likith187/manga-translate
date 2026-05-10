package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.core.view.m;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.n;
import d0.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f9098n = R$style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f9099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f9100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinkedHashSet f9101c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Comparator f9102f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Integer[] f9103h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9104i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9105j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f9106k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f9107l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Set f9108m;

    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int iCompareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            return iCompareTo2 != 0 ? iCompareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    class b extends androidx.core.view.a {
        b() {
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, h hVar) {
            super.onInitializeAccessibilityNodeInfo(view, hVar);
            hVar.k0(h.f.a(0, 1, MaterialButtonToggleGroup.this.i(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    private static class c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final com.google.android.material.shape.d f9111e = new com.google.android.material.shape.a(0.0f);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.google.android.material.shape.d f9112a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        com.google.android.material.shape.d f9113b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        com.google.android.material.shape.d f9114c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        com.google.android.material.shape.d f9115d;

        c(com.google.android.material.shape.d dVar, com.google.android.material.shape.d dVar2, com.google.android.material.shape.d dVar3, com.google.android.material.shape.d dVar4) {
            this.f9112a = dVar;
            this.f9113b = dVar3;
            this.f9114c = dVar4;
            this.f9115d = dVar2;
        }

        public static c a(c cVar) {
            com.google.android.material.shape.d dVar = f9111e;
            return new c(dVar, cVar.f9115d, dVar, cVar.f9114c);
        }

        public static c b(c cVar, View view) {
            return ViewUtils.isLayoutRtl(view) ? c(cVar) : d(cVar);
        }

        public static c c(c cVar) {
            com.google.android.material.shape.d dVar = cVar.f9112a;
            com.google.android.material.shape.d dVar2 = cVar.f9115d;
            com.google.android.material.shape.d dVar3 = f9111e;
            return new c(dVar, dVar2, dVar3, dVar3);
        }

        public static c d(c cVar) {
            com.google.android.material.shape.d dVar = f9111e;
            return new c(dVar, dVar, cVar.f9113b, cVar.f9114c);
        }

        public static c e(c cVar, View view) {
            return ViewUtils.isLayoutRtl(view) ? d(cVar) : c(cVar);
        }

        public static c f(c cVar) {
            com.google.android.material.shape.d dVar = cVar.f9112a;
            com.google.android.material.shape.d dVar2 = f9111e;
            return new c(dVar, dVar2, cVar.f9113b, dVar2);
        }
    }

    public interface d {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10);
    }

    private class e implements MaterialButton.a {
        private e() {
        }

        @Override // com.google.android.material.button.MaterialButton.a
        public void a(MaterialButton materialButton, boolean z10) {
            MaterialButtonToggleGroup.this.invalidate();
        }

        /* synthetic */ e(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }
    }

    public MaterialButtonToggleGroup(Context context) {
        this(context, null);
    }

    private void c() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i10 = firstVisibleChildIndex + 1; i10 < getChildCount(); i10++) {
            MaterialButton materialButtonH = h(i10);
            int iMin = Math.min(materialButtonH.getStrokeWidth(), h(i10 - 1).getStrokeWidth());
            LinearLayout.LayoutParams layoutParamsD = d(materialButtonH);
            if (getOrientation() == 0) {
                m.c(layoutParamsD, 0);
                m.d(layoutParamsD, -iMin);
                layoutParamsD.topMargin = 0;
            } else {
                layoutParamsD.bottomMargin = 0;
                layoutParamsD.topMargin = -iMin;
                m.d(layoutParamsD, 0);
            }
            materialButtonH.setLayoutParams(layoutParamsD);
        }
        n(firstVisibleChildIndex);
    }

    private LinearLayout.LayoutParams d(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    private void e(int i10, boolean z10) {
        if (i10 == -1) {
            Log.e("MButtonToggleGroup", "Button ID is not valid: " + i10);
            return;
        }
        HashSet hashSet = new HashSet(this.f9108m);
        if (z10 && !hashSet.contains(Integer.valueOf(i10))) {
            if (this.f9105j && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i10));
        } else {
            if (z10 || !hashSet.contains(Integer.valueOf(i10))) {
                return;
            }
            if (!this.f9106k || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i10));
            }
        }
        q(hashSet);
    }

    private void g(int i10, boolean z10) {
        Iterator it = this.f9101c.iterator();
        while (it.hasNext()) {
            ((d) it.next()).a(this, i10, z10);
        }
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (k(i10)) {
                return i10;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (k(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof MaterialButton) && k(i11)) {
                i10++;
            }
        }
        return i10;
    }

    private MaterialButton h(int i10) {
        return (MaterialButton) getChildAt(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int i(View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) == view) {
                return i10;
            }
            if ((getChildAt(i11) instanceof MaterialButton) && k(i11)) {
                i10++;
            }
        }
        return -1;
    }

    private c j(int i10, int i11, int i12) {
        c cVar = (c) this.f9099a.get(i10);
        if (i11 == i12) {
            return cVar;
        }
        boolean z10 = getOrientation() == 0;
        if (i10 == i11) {
            return z10 ? c.e(cVar, this) : c.f(cVar);
        }
        if (i10 == i12) {
            return z10 ? c.b(cVar, this) : c.a(cVar);
        }
        return null;
    }

    private boolean k(int i10) {
        return getChildAt(i10).getVisibility() != 8;
    }

    private void n(int i10) {
        if (getChildCount() == 0 || i10 == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) h(i10).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            m.c(layoutParams, 0);
            m.d(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    private void o(int i10, boolean z10) {
        View viewFindViewById = findViewById(i10);
        if (viewFindViewById instanceof MaterialButton) {
            this.f9104i = true;
            ((MaterialButton) viewFindViewById).setChecked(z10);
            this.f9104i = false;
        }
    }

    private static void p(n.b bVar, c cVar) {
        if (cVar == null) {
            bVar.o(0.0f);
        } else {
            bVar.I(cVar.f9112a).x(cVar.f9115d).N(cVar.f9113b).C(cVar.f9114c);
        }
    }

    private void q(Set set) {
        Set set2 = this.f9108m;
        this.f9108m = new HashSet(set);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id = h(i10).getId();
            o(id, set.contains(Integer.valueOf(id)));
            if (set2.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                g(id, set.contains(Integer.valueOf(id)));
            }
        }
        invalidate();
    }

    private void r() {
        TreeMap treeMap = new TreeMap(this.f9102f);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            treeMap.put(h(i10), Integer.valueOf(i10));
        }
        this.f9103h = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(m0.i());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f9100b);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    private void t() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            h(i10).setA11yClassName((this.f9105j ? RadioButton.class : ToggleButton.class).getName());
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i10, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        e(materialButton.getId(), materialButton.isChecked());
        n shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f9099a.add(new c(shapeAppearanceModel.r(), shapeAppearanceModel.j(), shapeAppearanceModel.t(), shapeAppearanceModel.l()));
        materialButton.setEnabled(isEnabled());
        m0.j0(materialButton, new b());
    }

    public void b(d dVar) {
        this.f9101c.add(dVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        r();
        super.dispatchDraw(canvas);
    }

    public void f() {
        q(new HashSet());
    }

    public int getCheckedButtonId() {
        if (!this.f9105j || this.f9108m.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f9108m.iterator().next()).intValue();
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id = h(i10).getId();
            if (this.f9108m.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        Integer[] numArr = this.f9103h;
        if (numArr != null && i11 < numArr.length) {
            return numArr[i11].intValue();
        }
        Log.w("MButtonToggleGroup", "Child order wasn't updated");
        return i11;
    }

    public boolean l() {
        return this.f9105j;
    }

    void m(MaterialButton materialButton, boolean z10) {
        if (this.f9104i) {
            return;
        }
        e(materialButton.getId(), z10);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f9107l;
        if (i10 != -1) {
            q(Collections.singleton(Integer.valueOf(i10)));
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        h.M0(accessibilityNodeInfo).j0(h.e.b(1, getVisibleButtonCount(), false, l() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        s();
        c();
        super.onMeasure(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f9099a.remove(iIndexOfChild);
        }
        s();
        c();
    }

    void s() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i10 = 0; i10 < childCount; i10++) {
            MaterialButton materialButtonH = h(i10);
            if (materialButtonH.getVisibility() != 8) {
                n.b bVarV = materialButtonH.getShapeAppearanceModel().v();
                p(bVarV, j(i10, firstVisibleChildIndex, lastVisibleChildIndex));
                materialButtonH.setShapeAppearanceModel(bVarV.m());
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            h(i10).setEnabled(z10);
        }
    }

    public void setSelectionRequired(boolean z10) {
        this.f9106k = z10;
    }

    public void setSingleSelection(boolean z10) {
        if (this.f9105j != z10) {
            this.f9105j = z10;
            f();
        }
        t();
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9098n;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9099a = new ArrayList();
        this.f9100b = new e(this, null);
        this.f9101c = new LinkedHashSet();
        this.f9102f = new a();
        this.f9104i = false;
        this.f9108m = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(getContext(), attributeSet, R$styleable.MaterialButtonToggleGroup, i10, i11, new int[0]);
        setSingleSelection(typedArrayObtainStyledAttributes.getBoolean(R$styleable.MaterialButtonToggleGroup_singleSelection, false));
        this.f9107l = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialButtonToggleGroup_checkedButton, -1);
        this.f9106k = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R$styleable.MaterialButtonToggleGroup_android_enabled, true));
        typedArrayObtainStyledAttributes.recycle();
        m0.t0(this, 1);
    }

    public void setSingleSelection(int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}
