package com.google.android.material.search;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ToolbarUtils;
import d0.c;

/* JADX INFO: loaded from: classes.dex */
public class SearchBar extends Toolbar {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f9945s = R$style.Widget_Material3_SearchBar;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f9946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f9947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f9948c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f9949f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Drawable f9950h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f9951i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f9952j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f9953k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Integer f9954l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Drawable f9955m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f9956n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f9957o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.google.android.material.shape.i f9958p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AccessibilityManager f9959q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final c.a f9960r;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f9961a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f9961a);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f9961a = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            d0.c.a(SearchBar.this.f9959q, SearchBar.this.f9960r);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            d0.c.c(SearchBar.this.f9959q, SearchBar.this.f9960r);
        }
    }

    public SearchBar(Context context) {
        this(context, null);
    }

    private int k(int i10, int i11) {
        return i10 == 0 ? i11 : i10;
    }

    private void l(com.google.android.material.shape.n nVar, int i10, float f10, float f11, int i11) {
        com.google.android.material.shape.i iVar = new com.google.android.material.shape.i(nVar);
        this.f9958p = iVar;
        iVar.initializeElevationOverlay(getContext());
        this.f9958p.setElevation(f10);
        if (f11 >= 0.0f) {
            this.f9958p.setStroke(f11, i11);
        }
        int iD = b4.a.d(this, R$attr.colorControlHighlight);
        this.f9958p.setFillColor(ColorStateList.valueOf(i10));
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iD);
        com.google.android.material.shape.i iVar2 = this.f9958p;
        m0.n0(this, new RippleDrawable(colorStateListValueOf, iVar2, iVar2));
    }

    private void m() {
        setNavigationIcon(getNavigationIcon() == null ? this.f9950h : getNavigationIcon());
        setNavigationIconDecorative(true);
    }

    private Drawable maybeTintNavigationIcon(Drawable drawable) {
        int iD;
        if (!this.f9951i || drawable == null) {
            return drawable;
        }
        Integer num = this.f9954l;
        if (num != null) {
            iD = num.intValue();
        } else {
            iD = b4.a.d(this, drawable == this.f9950h ? R$attr.colorOnSurfaceVariant : R$attr.colorOnSurface);
        }
        Drawable drawableR = v.a.r(drawable.mutate());
        v.a.n(drawableR, iD);
        return drawableR;
    }

    private void n(int i10, String str, String str2) {
        if (i10 != -1) {
            androidx.core.widget.j.o(this.f9946a, i10);
        }
        setText(str);
        setHint(str2);
        if (getNavigationIcon() == null) {
            androidx.core.view.m.d((ViewGroup.MarginLayoutParams) this.f9946a.getLayoutParams(), getResources().getDimensionPixelSize(R$dimen.m3_searchbar_text_margin_start_no_navigation_icon));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(boolean z10) {
        setFocusableInTouchMode(z10);
    }

    private void p() {
        View view = this.f9953k;
        if (view == null) {
            return;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredWidth2 = (getMeasuredWidth() / 2) - (measuredWidth / 2);
        int i10 = measuredWidth2 + measuredWidth;
        int measuredHeight = this.f9953k.getMeasuredHeight();
        int measuredHeight2 = (getMeasuredHeight() / 2) - (measuredHeight / 2);
        q(this.f9953k, measuredWidth2, measuredHeight2, i10, measuredHeight2 + measuredHeight);
    }

    private void q(View view, int i10, int i11, int i12, int i13) {
        if (m0.v(this) == 1) {
            view.layout(getMeasuredWidth() - i12, i11, getMeasuredWidth() - i10, i13);
        } else {
            view.layout(i10, i11, i12, i13);
        }
    }

    private void r(int i10, int i11) {
        View view = this.f9953k;
        if (view != null) {
            view.measure(i10, i11);
        }
    }

    private void s() {
        if (this.f9948c && (getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            Resources resources = getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.m3_searchbar_margin_horizontal);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(getDefaultMarginVerticalResource());
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            marginLayoutParams.leftMargin = k(marginLayoutParams.leftMargin, dimensionPixelSize);
            marginLayoutParams.topMargin = k(marginLayoutParams.topMargin, dimensionPixelSize2);
            marginLayoutParams.rightMargin = k(marginLayoutParams.rightMargin, dimensionPixelSize);
            marginLayoutParams.bottomMargin = k(marginLayoutParams.bottomMargin, dimensionPixelSize2);
        }
    }

    private void setNavigationIconDecorative(boolean z10) {
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this);
        if (navigationIconButton == null) {
            return;
        }
        navigationIconButton.setClickable(!z10);
        navigationIconButton.setFocusable(!z10);
        Drawable background = navigationIconButton.getBackground();
        if (background != null) {
            this.f9955m = background;
        }
        navigationIconButton.setBackgroundDrawable(z10 ? null : this.f9955m);
        t();
    }

    private void t() {
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        boolean z10 = getLayoutDirection() == 1;
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this);
        int width = (navigationIconButton == null || !navigationIconButton.isClickable()) ? 0 : z10 ? getWidth() - navigationIconButton.getLeft() : navigationIconButton.getRight();
        ActionMenuView actionMenuView = ToolbarUtils.getActionMenuView(this);
        int right = actionMenuView != null ? z10 ? actionMenuView.getRight() : getWidth() - actionMenuView.getLeft() : 0;
        float f10 = -(z10 ? right : width);
        if (!z10) {
            width = right;
        }
        setHandwritingBoundsOffsets(f10, 0.0f, -width, 0.0f);
    }

    private void u() {
        if (getLayoutParams() instanceof AppBarLayout.LayoutParams) {
            AppBarLayout.LayoutParams layoutParams = (AppBarLayout.LayoutParams) getLayoutParams();
            if (this.f9957o) {
                if (layoutParams.getScrollFlags() == 0) {
                    layoutParams.setScrollFlags(53);
                }
            } else if (layoutParams.getScrollFlags() == 53) {
                layoutParams.setScrollFlags(0);
            }
        }
    }

    private void v() {
        AccessibilityManager accessibilityManager = this.f9959q;
        if (accessibilityManager != null) {
            if (accessibilityManager.isEnabled() && this.f9959q.isTouchExplorationEnabled()) {
                setFocusableInTouchMode(true);
            }
            addOnAttachStateChangeListener(new a());
        }
    }

    private void x(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "title") != null) {
            throw new UnsupportedOperationException("SearchBar does not support title. Use hint or text instead.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "subtitle") != null) {
            throw new UnsupportedOperationException("SearchBar does not support subtitle. Use hint or text instead.");
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.f9947b && this.f9953k == null && !(view instanceof ActionMenuView)) {
            this.f9953k = view;
            view.setAlpha(0.0f);
        }
        super.addView(view, i10, layoutParams);
    }

    public View getCenterView() {
        return this.f9953k;
    }

    float getCompatElevation() {
        com.google.android.material.shape.i iVar = this.f9958p;
        return iVar != null ? iVar.getElevation() : m0.r(this);
    }

    public float getCornerSize() {
        return this.f9958p.getTopLeftCornerResolvedSize();
    }

    protected int getDefaultMarginVerticalResource() {
        return R$dimen.m3_searchbar_margin_vertical;
    }

    protected int getDefaultNavigationIconResource() {
        return R$drawable.ic_search_black_24;
    }

    public CharSequence getHint() {
        return this.f9946a.getHint();
    }

    int getMenuResId() {
        return this.f9956n;
    }

    public int getStrokeColor() {
        return this.f9958p.getStrokeColor().getDefaultColor();
    }

    public float getStrokeWidth() {
        return this.f9958p.getStrokeWidth();
    }

    public CharSequence getText() {
        return this.f9946a.getText();
    }

    public TextView getTextView() {
        return this.f9946a;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void inflateMenu(int i10) {
        Menu menu = getMenu();
        boolean z10 = menu instanceof MenuBuilder;
        if (z10) {
            ((MenuBuilder) menu).stopDispatchingItemsChanged();
        }
        super.inflateMenu(i10);
        this.f9956n = i10;
        if (z10) {
            ((MenuBuilder) menu).startDispatchingItemsChanged();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.j.f(this, this.f9958p);
        s();
        u();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(EditText.class.getCanonicalName());
        accessibilityNodeInfo.setEditable(isEnabled());
        CharSequence text = getText();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        accessibilityNodeInfo.setHintText(getHint());
        accessibilityNodeInfo.setShowingHintText(zIsEmpty);
        if (zIsEmpty) {
            text = getHint();
        }
        accessibilityNodeInfo.setText(text);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        p();
        t();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        r(i10, i11);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.f9961a);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        CharSequence text = getText();
        savedState.f9961a = text == null ? null : text.toString();
        return savedState;
    }

    public void setCenterView(View view) {
        View view2 = this.f9953k;
        if (view2 != null) {
            removeView(view2);
            this.f9953k = null;
        }
        if (view != null) {
            addView(view);
        }
    }

    public void setDefaultScrollFlagsEnabled(boolean z10) {
        this.f9957o = z10;
        u();
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        com.google.android.material.shape.i iVar = this.f9958p;
        if (iVar != null) {
            iVar.setElevation(f10);
        }
    }

    public void setHint(CharSequence charSequence) {
        this.f9946a.setHint(charSequence);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        super.setNavigationIcon(maybeTintNavigationIcon(drawable));
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        if (this.f9952j) {
            return;
        }
        super.setNavigationOnClickListener(onClickListener);
        setNavigationIconDecorative(onClickListener == null);
    }

    public void setOnLoadAnimationFadeInEnabled(boolean z10) {
        this.f9949f.a(z10);
    }

    public void setStrokeColor(int i10) {
        if (getStrokeColor() != i10) {
            this.f9958p.setStrokeColor(ColorStateList.valueOf(i10));
        }
    }

    public void setStrokeWidth(float f10) {
        if (getStrokeWidth() != f10) {
            this.f9958p.setStrokeWidth(f10);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    public void setText(CharSequence charSequence) {
        this.f9946a.setText(charSequence);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public void w() {
        this.f9949f.b(this);
    }

    public static class ScrollingViewBehavior extends AppBarLayout.ScrollingViewBehavior {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f9962a;

        public ScrollingViewBehavior() {
            this.f9962a = false;
        }

        private void a(AppBarLayout appBarLayout) {
            appBarLayout.setBackgroundColor(0);
            appBarLayout.setTargetElevation(0.0f);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            boolean zOnDependentViewChanged = super.onDependentViewChanged(coordinatorLayout, view, view2);
            if (!this.f9962a && (view2 instanceof AppBarLayout)) {
                this.f9962a = true;
                a((AppBarLayout) view2);
            }
            return zOnDependentViewChanged;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        protected boolean shouldHeaderOverlapScrollingChild() {
            return true;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f9962a = false;
        }
    }

    public SearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialSearchBarStyle);
    }

    public void setHint(int i10) {
        this.f9946a.setHint(i10);
    }

    public void setText(int i10) {
        this.f9946a.setText(i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchBar(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9945s;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9956n = -1;
        this.f9960r = new c.a() { // from class: com.google.android.material.search.b
            @Override // d0.c.a
            public final void onTouchExplorationStateChanged(boolean z10) {
                this.f9990a.o(z10);
            }
        };
        Context context2 = getContext();
        x(attributeSet);
        this.f9950h = e.a.b(context2, getDefaultNavigationIconResource());
        this.f9949f = new c();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.SearchBar, i10, i11, new int[0]);
        com.google.android.material.shape.n nVarM = com.google.android.material.shape.n.e(context2, attributeSet, i10, i11).m();
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.SearchBar_backgroundTint, 0);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.SearchBar_elevation, 0.0f);
        this.f9948c = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchBar_defaultMarginsEnabled, true);
        this.f9957o = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchBar_defaultScrollFlagsEnabled, true);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchBar_hideNavigationIcon, false);
        this.f9952j = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchBar_forceDefaultNavigationOnClickListener, false);
        this.f9951i = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchBar_tintNavigationIcon, true);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SearchBar_navigationIconTint)) {
            this.f9954l = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(R$styleable.SearchBar_navigationIconTint, -1));
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.SearchBar_android_textAppearance, -1);
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.SearchBar_android_text);
        String string2 = typedArrayObtainStyledAttributes.getString(R$styleable.SearchBar_android_hint);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R$styleable.SearchBar_strokeWidth, -1.0f);
        int color2 = typedArrayObtainStyledAttributes.getColor(R$styleable.SearchBar_strokeColor, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (!z10) {
            m();
        }
        setClickable(true);
        setFocusable(true);
        LayoutInflater.from(context2).inflate(R$layout.mtrl_search_bar, this);
        this.f9947b = true;
        this.f9946a = (TextView) findViewById(R$id.open_search_bar_text_view);
        m0.r0(this, dimension);
        n(resourceId, string, string2);
        l(nVarM, color, dimension, dimension2, color2);
        this.f9959q = (AccessibilityManager) getContext().getSystemService("accessibility");
        v();
    }
}
