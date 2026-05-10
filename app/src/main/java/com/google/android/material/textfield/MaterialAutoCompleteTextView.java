package com.google.android.material.textfield;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.internal.ThemeEnforcement;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ListPopupWindow f10354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AccessibilityManager f10355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f10356c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f10357f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f10358h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ColorStateList f10359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f10360j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f10361k;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
            MaterialAutoCompleteTextView materialAutoCompleteTextView = MaterialAutoCompleteTextView.this;
            MaterialAutoCompleteTextView.this.k(i10 < 0 ? materialAutoCompleteTextView.f10354a.q() : materialAutoCompleteTextView.getAdapter().getItem(i10));
            AdapterView.OnItemClickListener onItemClickListener = MaterialAutoCompleteTextView.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i10 < 0) {
                    view = MaterialAutoCompleteTextView.this.f10354a.t();
                    i10 = MaterialAutoCompleteTextView.this.f10354a.s();
                    j10 = MaterialAutoCompleteTextView.this.f10354a.r();
                }
                onItemClickListener.onItemClick(MaterialAutoCompleteTextView.this.f10354a.getListView(), view, i10, j10);
            }
            MaterialAutoCompleteTextView.this.f10354a.dismiss();
        }
    }

    private class b extends ArrayAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ColorStateList f10363a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ColorStateList f10364b;

        b(Context context, int i10, String[] strArr) {
            super(context, i10, strArr);
            f();
        }

        private ColorStateList a() {
            if (!c() || !d()) {
                return null;
            }
            int[] iArr = {16843623, -16842919};
            int[] iArr2 = {16842913, -16842919};
            return new ColorStateList(new int[][]{iArr2, iArr, new int[0]}, new int[]{b4.a.i(MaterialAutoCompleteTextView.this.f10360j, MaterialAutoCompleteTextView.this.f10361k.getColorForState(iArr2, 0)), b4.a.i(MaterialAutoCompleteTextView.this.f10360j, MaterialAutoCompleteTextView.this.f10361k.getColorForState(iArr, 0)), MaterialAutoCompleteTextView.this.f10360j});
        }

        private Drawable b() {
            if (!c()) {
                return null;
            }
            ColorDrawable colorDrawable = new ColorDrawable(MaterialAutoCompleteTextView.this.f10360j);
            if (this.f10364b == null) {
                return colorDrawable;
            }
            v.a.o(colorDrawable, this.f10363a);
            return new RippleDrawable(this.f10364b, colorDrawable, null);
        }

        private boolean c() {
            return MaterialAutoCompleteTextView.this.f10360j != 0;
        }

        private boolean d() {
            return MaterialAutoCompleteTextView.this.f10361k != null;
        }

        private ColorStateList e() {
            if (!d()) {
                return null;
            }
            int[] iArr = {16842919};
            return new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{MaterialAutoCompleteTextView.this.f10361k.getColorForState(iArr, 0), 0});
        }

        void f() {
            this.f10364b = e();
            this.f10363a = a();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i10, view, viewGroup);
            if (view2 instanceof TextView) {
                TextView textView = (TextView) view2;
                m0.n0(textView, MaterialAutoCompleteTextView.this.getText().toString().contentEquals(textView.getText()) ? b() : null);
            }
            return view2;
        }
    }

    public MaterialAutoCompleteTextView(Context context) {
        this(context, null);
    }

    private TextInputLayout e() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    private boolean f() {
        return h() || g();
    }

    private boolean g() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.f10355b;
        if (accessibilityManager != null && accessibilityManager.isEnabled() && (enabledAccessibilityServiceList = this.f10355b.getEnabledAccessibilityServiceList(16)) != null) {
            for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
                if (accessibilityServiceInfo.getSettingsActivityName() != null && accessibilityServiceInfo.getSettingsActivityName().contains("SwitchAccess")) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean h() {
        AccessibilityManager accessibilityManager = this.f10355b;
        return accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled();
    }

    private int i() {
        ListAdapter adapter = getAdapter();
        TextInputLayout textInputLayoutE = e();
        int i10 = 0;
        if (adapter == null || textInputLayoutE == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMin = Math.min(adapter.getCount(), Math.max(0, this.f10354a.s()) + 15);
        View view = null;
        int iMax = 0;
        for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
            int itemViewType = adapter.getItemViewType(iMax2);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = adapter.getView(iMax2, view, textInputLayoutE);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax = Math.max(iMax, view.getMeasuredWidth());
        }
        Drawable drawableC = this.f10354a.c();
        if (drawableC != null) {
            drawableC.getPadding(this.f10356c);
            Rect rect = this.f10356c;
            iMax += rect.left + rect.right;
        }
        return iMax + textInputLayoutE.getEndIconView().getMeasuredWidth();
    }

    private void j() {
        TextInputLayout textInputLayoutE = e();
        if (textInputLayoutE != null) {
            textInputLayoutE.r0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(Object obj) {
        setText(convertSelectionToString(obj), false);
    }

    @Override // android.widget.AutoCompleteTextView
    public void dismissDropDown() {
        if (f()) {
            this.f10354a.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    public ColorStateList getDropDownBackgroundTintList() {
        return this.f10359i;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout textInputLayoutE = e();
        return (textInputLayoutE == null || !textInputLayoutE.R()) ? super.getHint() : textInputLayoutE.getHint();
    }

    public float getPopupElevation() {
        return this.f10358h;
    }

    public int getSimpleItemSelectedColor() {
        return this.f10360j;
    }

    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.f10361k;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutE = e();
        if (textInputLayoutE != null && textInputLayoutE.R() && super.getHint() == null && ManufacturerUtils.isMeizuDevice()) {
            setHint("");
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f10354a.dismiss();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (View.MeasureSpec.getMode(i10) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), i()), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        if (f()) {
            return;
        }
        super.onWindowFocusChanged(z10);
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t10) {
        super.setAdapter(t10);
        this.f10354a.k(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        ListPopupWindow listPopupWindow = this.f10354a;
        if (listPopupWindow != null) {
            listPopupWindow.a(drawable);
        }
    }

    public void setDropDownBackgroundTint(int i10) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i10));
    }

    public void setDropDownBackgroundTintList(ColorStateList colorStateList) {
        this.f10359i = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof com.google.android.material.shape.i) {
            ((com.google.android.material.shape.i) dropDownBackground).setFillColor(this.f10359i);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.f10354a.I(getOnItemSelectedListener());
    }

    @Override // android.widget.TextView
    public void setRawInputType(int i10) {
        super.setRawInputType(i10);
        j();
    }

    public void setSimpleItemSelectedColor(int i10) {
        this.f10360j = i10;
        if (getAdapter() instanceof b) {
            ((b) getAdapter()).f();
        }
    }

    public void setSimpleItemSelectedRippleColor(ColorStateList colorStateList) {
        this.f10361k = colorStateList;
        if (getAdapter() instanceof b) {
            ((b) getAdapter()).f();
        }
    }

    public void setSimpleItems(int i10) {
        setSimpleItems(getResources().getStringArray(i10));
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        if (f()) {
            this.f10354a.show();
        } else {
            super.showDropDown();
        }
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
    }

    public void setSimpleItems(String[] strArr) {
        setAdapter(new b(getContext(), this.f10357f, strArr));
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet, int i10) {
        super(m4.a.c(context, attributeSet, i10, 0), attributeSet, i10);
        this.f10356c = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.MaterialAutoCompleteTextView, i10, R$style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.MaterialAutoCompleteTextView_android_inputType) && typedArrayObtainStyledAttributes.getInt(R$styleable.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.f10357f = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialAutoCompleteTextView_simpleItemLayout, R$layout.mtrl_auto_complete_simple_item);
        this.f10358h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialAutoCompleteTextView_android_popupElevation, R$dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint)) {
            this.f10359i = ColorStateList.valueOf(typedArrayObtainStyledAttributes.getColor(R$styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint, 0));
        }
        this.f10360j = typedArrayObtainStyledAttributes.getColor(R$styleable.MaterialAutoCompleteTextView_simpleItemSelectedColor, 0);
        this.f10361k = i4.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.MaterialAutoCompleteTextView_simpleItemSelectedRippleColor);
        this.f10355b = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f10354a = listPopupWindow;
        listPopupWindow.F(true);
        listPopupWindow.y(this);
        listPopupWindow.E(2);
        listPopupWindow.k(getAdapter());
        listPopupWindow.H(new a());
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.MaterialAutoCompleteTextView_simpleItems)) {
            setSimpleItems(typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialAutoCompleteTextView_simpleItems, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
