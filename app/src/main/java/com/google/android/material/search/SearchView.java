package com.google.android.material.search;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.internal.FadeThroughDrawable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.internal.ViewUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends FrameLayout implements CoordinatorLayout.b, g4.b {
    private static final int G = R$style.Widget_Material3_SearchView;
    private boolean A;
    private final int B;
    private boolean C;
    private boolean D;
    private b E;
    private Map F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final View f9964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ClippableRoundedCornerLayout f9965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final View f9966c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final View f9967f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final FrameLayout f9968h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final FrameLayout f9969i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final MaterialToolbar f9970j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final Toolbar f9971k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final TextView f9972l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final EditText f9973m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final ImageButton f9974n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final View f9975o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final TouchObserverFrameLayout f9976p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f9977q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final w f9978r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final g4.c f9979s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f9980t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final d4.a f9981u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Set f9982v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private SearchBar f9983w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f9984x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f9985y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f9986z;

    public static class Behavior extends CoordinatorLayout.c {
        public Behavior() {
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, SearchView searchView, View view) {
            if (searchView.t() || !(view instanceof SearchBar)) {
                return false;
            }
            searchView.setupWithSearchBar((SearchBar) view);
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f9987a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f9988b;

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
            parcel.writeString(this.f9987a);
            parcel.writeInt(this.f9988b);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f9987a = parcel.readString();
            this.f9988b = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            SearchView.this.f9974n.setVisibility(charSequence.length() > 0 ? 0 : 8);
        }
    }

    public enum b {
        HIDING,
        HIDDEN,
        SHOWING,
        SHOWN
    }

    public SearchView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean A(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ a1 B(View view, a1 a1Var) {
        int iM = a1Var.m();
        setUpStatusBarSpacer(iM);
        if (!this.D) {
            setStatusBarSpacerEnabledInternal(iM > 0);
        }
        return a1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ a1 C(View view, a1 a1Var, ViewUtils.RelativePadding relativePadding) {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this.f9970j);
        this.f9970j.setPadding((zIsLayoutRtl ? relativePadding.end : relativePadding.start) + a1Var.k(), relativePadding.top, (zIsLayoutRtl ? relativePadding.start : relativePadding.end) + a1Var.l(), relativePadding.bottom);
        return a1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(View view) {
        R();
    }

    private void G(b bVar, boolean z10) {
        if (this.E.equals(bVar)) {
            return;
        }
        if (z10) {
            if (bVar == b.SHOWN) {
                setModalForAccessibility(true);
            } else if (bVar == b.HIDDEN) {
                setModalForAccessibility(false);
            }
        }
        this.E = bVar;
        Iterator it = new LinkedHashSet(this.f9982v).iterator();
        if (it.hasNext()) {
            androidx.appcompat.app.t.a(it.next());
            throw null;
        }
        T(bVar);
    }

    private void H(boolean z10, boolean z11) {
        if (z11) {
            this.f9970j.setNavigationIcon((Drawable) null);
            return;
        }
        this.f9970j.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10009a.w(view);
            }
        });
        if (z10) {
            f.d dVar = new f.d(getContext());
            dVar.c(b4.a.d(this, R$attr.colorOnSurface));
            this.f9970j.setNavigationIcon(dVar);
        }
    }

    private void I() {
        setUpBackgroundViewElevationOverlay(getOverlayElevation());
    }

    private void J() {
        this.f9974n.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f9998a.x(view);
            }
        });
        this.f9973m.addTextChangedListener(new a());
    }

    private void K() {
        this.f9976p.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.search.o
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f10008a.y(view, motionEvent);
            }
        });
    }

    private void L() {
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f9975o.getLayoutParams();
        final int i10 = marginLayoutParams.leftMargin;
        final int i11 = marginLayoutParams.rightMargin;
        m0.y0(this.f9975o, new a0() { // from class: com.google.android.material.search.i
            @Override // androidx.core.view.a0
            public final a1 onApplyWindowInsets(View view, a1 a1Var) {
                return SearchView.z(marginLayoutParams, i10, i11, view, a1Var);
            }
        });
    }

    private void M(int i10, String str, String str2) {
        if (i10 != -1) {
            androidx.core.widget.j.o(this.f9973m, i10);
        }
        this.f9973m.setText(str);
        this.f9973m.setHint(str2);
    }

    private void N() {
        Q();
        L();
        P();
    }

    private void O() {
        this.f9965b.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.search.n
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return SearchView.A(view, motionEvent);
            }
        });
    }

    private void P() {
        setUpStatusBarSpacer(getStatusBarHeight());
        m0.y0(this.f9967f, new a0() { // from class: com.google.android.material.search.k
            @Override // androidx.core.view.a0
            public final a1 onApplyWindowInsets(View view, a1 a1Var) {
                return this.f10005a.B(view, a1Var);
            }
        });
    }

    private void Q() {
        ViewUtils.doOnApplyWindowInsets(this.f9970j, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.search.j
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public final a1 onApplyWindowInsets(View view, a1 a1Var, ViewUtils.RelativePadding relativePadding) {
                return this.f10004a.C(view, a1Var, relativePadding);
            }
        });
    }

    private void S(ViewGroup viewGroup, boolean z10) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt != this) {
                if (childAt.findViewById(this.f9965b.getId()) != null) {
                    S((ViewGroup) childAt, z10);
                } else if (z10) {
                    this.F.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    m0.t0(childAt, 4);
                } else {
                    Map map = this.F;
                    if (map != null && map.containsKey(childAt)) {
                        m0.t0(childAt, ((Integer) this.F.get(childAt)).intValue());
                    }
                }
            }
        }
    }

    private void T(b bVar) {
        if (this.f9983w == null || !this.f9980t) {
            return;
        }
        if (bVar.equals(b.SHOWN)) {
            this.f9979s.c();
        } else if (bVar.equals(b.HIDDEN)) {
            this.f9979s.f();
        }
    }

    private void U() {
        MaterialToolbar materialToolbar = this.f9970j;
        if (materialToolbar == null || s(materialToolbar)) {
            return;
        }
        int defaultNavigationIconResource = getDefaultNavigationIconResource();
        if (this.f9983w == null) {
            this.f9970j.setNavigationIcon(defaultNavigationIconResource);
            return;
        }
        Drawable drawableR = v.a.r(e.a.b(getContext(), defaultNavigationIconResource).mutate());
        if (this.f9970j.getNavigationIconTint() != null) {
            v.a.n(drawableR, this.f9970j.getNavigationIconTint().intValue());
        }
        this.f9970j.setNavigationIcon(new FadeThroughDrawable(this.f9983w.getNavigationIcon(), drawableR));
        V();
    }

    private void V() {
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this.f9970j);
        if (navigationIconButton == null) {
            return;
        }
        int i10 = this.f9965b.getVisibility() == 0 ? 1 : 0;
        Drawable drawableQ = v.a.q(navigationIconButton.getDrawable());
        if (drawableQ instanceof f.d) {
            ((f.d) drawableQ).e(i10);
        }
        if (drawableQ instanceof FadeThroughDrawable) {
            ((FadeThroughDrawable) drawableQ).setProgress(i10);
        }
    }

    private Window getActivityWindow() {
        Activity activity = ContextUtils.getActivity(getContext());
        if (activity == null) {
            return null;
        }
        return activity.getWindow();
    }

    private float getOverlayElevation() {
        SearchBar searchBar = this.f9983w;
        return searchBar != null ? searchBar.getCompatElevation() : getResources().getDimension(R$dimen.m3_searchview_elevation);
    }

    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private boolean q() {
        return this.E.equals(b.HIDDEN) || this.E.equals(b.HIDING);
    }

    private boolean s(Toolbar toolbar) {
        return v.a.q(toolbar.getNavigationIcon()) instanceof f.d;
    }

    private void setStatusBarSpacerEnabledInternal(boolean z10) {
        this.f9967f.setVisibility(z10 ? 0 : 8);
    }

    private void setUpBackgroundViewElevationOverlay(float f10) {
        d4.a aVar = this.f9981u;
        if (aVar == null || this.f9966c == null) {
            return;
        }
        this.f9966c.setBackgroundColor(aVar.c(this.B, f10));
    }

    private void setUpHeaderLayout(int i10) {
        if (i10 != -1) {
            k(LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this.f9968h, false));
        }
    }

    private void setUpStatusBarSpacer(int i10) {
        if (this.f9967f.getLayoutParams().height != i10) {
            this.f9967f.getLayoutParams().height = i10;
            this.f9967f.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        this.f9973m.clearFocus();
        SearchBar searchBar = this.f9983w;
        if (searchBar != null) {
            searchBar.requestFocus();
        }
        ViewUtils.hideKeyboard(this.f9973m, this.C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v() {
        if (this.f9973m.requestFocus()) {
            this.f9973m.sendAccessibilityEvent(8);
        }
        ViewUtils.showKeyboard(this.f9973m, this.C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(View view) {
        n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(View view) {
        m();
        F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean y(View view, MotionEvent motionEvent) {
        if (!o()) {
            return false;
        }
        l();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a1 z(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, View view, a1 a1Var) {
        marginLayoutParams.leftMargin = i10 + a1Var.k();
        marginLayoutParams.rightMargin = i11 + a1Var.l();
        return a1Var;
    }

    public void E() {
        this.f9973m.postDelayed(new Runnable() { // from class: com.google.android.material.search.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f9999a.v();
            }
        }, 100L);
    }

    void F() {
        if (this.A) {
            E();
        }
    }

    public void R() {
        if (this.E.equals(b.SHOWN) || this.E.equals(b.SHOWING)) {
            return;
        }
        this.f9978r.Z();
    }

    public void W() {
        Window activityWindow = getActivityWindow();
        if (activityWindow != null) {
            this.f9984x = activityWindow.getAttributes().softInputMode;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.f9977q) {
            this.f9976p.addView(view, i10, layoutParams);
        } else {
            super.addView(view, i10, layoutParams);
        }
    }

    @Override // g4.b
    public void cancelBackProgress() {
        if (q() || this.f9983w == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.f9978r.o();
    }

    g4.g getBackHelper() {
        return this.f9978r.r();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c getBehavior() {
        return new Behavior();
    }

    public b getCurrentTransitionState() {
        return this.E;
    }

    protected int getDefaultNavigationIconResource() {
        return R$drawable.ic_arrow_back_black_24;
    }

    public EditText getEditText() {
        return this.f9973m;
    }

    public CharSequence getHint() {
        return this.f9973m.getHint();
    }

    public TextView getSearchPrefix() {
        return this.f9972l;
    }

    public CharSequence getSearchPrefixText() {
        return this.f9972l.getText();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getSoftInputMode() {
        return this.f9984x;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public Editable getText() {
        return this.f9973m.getText();
    }

    public Toolbar getToolbar() {
        return this.f9970j;
    }

    @Override // g4.b
    public void handleBackInvoked() {
        if (q()) {
            return;
        }
        androidx.activity.b bVarS = this.f9978r.S();
        if (Build.VERSION.SDK_INT < 34 || this.f9983w == null || bVarS == null) {
            n();
        } else {
            this.f9978r.p();
        }
    }

    public void k(View view) {
        this.f9968h.addView(view);
        this.f9968h.setVisibility(0);
    }

    public void l() {
        this.f9973m.post(new Runnable() { // from class: com.google.android.material.search.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f10000a.u();
            }
        });
    }

    public void m() {
        this.f9973m.setText("");
    }

    public void n() {
        if (this.E.equals(b.HIDDEN) || this.E.equals(b.HIDING)) {
            return;
        }
        this.f9978r.M();
    }

    boolean o() {
        return this.f9984x == 48;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.j.e(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        W();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.f9987a);
        setVisible(savedState.f9988b == 0);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Editable text = getText();
        savedState.f9987a = text == null ? null : text.toString();
        savedState.f9988b = this.f9965b.getVisibility();
        return savedState;
    }

    public boolean p() {
        return this.f9985y;
    }

    public boolean r() {
        return this.f9986z;
    }

    public void setAnimatedNavigationIcon(boolean z10) {
        this.f9985y = z10;
    }

    public void setAutoShowKeyboard(boolean z10) {
        this.A = z10;
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        setUpBackgroundViewElevationOverlay(f10);
    }

    public void setHint(CharSequence charSequence) {
        this.f9973m.setHint(charSequence);
    }

    public void setMenuItemsAnimated(boolean z10) {
        this.f9986z = z10;
    }

    public void setModalForAccessibility(boolean z10) {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        if (z10) {
            this.F = new HashMap(viewGroup.getChildCount());
        }
        S(viewGroup, z10);
        if (z10) {
            return;
        }
        this.F = null;
    }

    public void setOnMenuItemClickListener(Toolbar.h hVar) {
        this.f9970j.setOnMenuItemClickListener(hVar);
    }

    public void setSearchPrefixText(CharSequence charSequence) {
        this.f9972l.setText(charSequence);
        this.f9972l.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    public void setStatusBarSpacerEnabled(boolean z10) {
        this.D = true;
        setStatusBarSpacerEnabledInternal(z10);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setText(CharSequence charSequence) {
        this.f9973m.setText(charSequence);
    }

    public void setToolbarTouchscreenBlocksFocus(boolean z10) {
        this.f9970j.setTouchscreenBlocksFocus(z10);
    }

    void setTransitionState(b bVar) {
        G(bVar, true);
    }

    public void setUseWindowInsetsController(boolean z10) {
        this.C = z10;
    }

    public void setVisible(boolean z10) {
        boolean z11 = this.f9965b.getVisibility() == 0;
        this.f9965b.setVisibility(z10 ? 0 : 8);
        V();
        G(z10 ? b.SHOWN : b.HIDDEN, z11 != z10);
    }

    public void setupWithSearchBar(SearchBar searchBar) {
        this.f9983w = searchBar;
        this.f9978r.X(searchBar);
        if (searchBar != null) {
            searchBar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f10006a.D(view);
                }
            });
            if (Build.VERSION.SDK_INT >= 34) {
                try {
                    searchBar.setHandwritingDelegatorCallback(new Runnable() { // from class: com.google.android.material.search.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f10007a.R();
                        }
                    });
                    this.f9973m.setIsHandwritingDelegate(true);
                } catch (LinkageError unused) {
                }
            }
        }
        U();
        I();
        T(getCurrentTransitionState());
    }

    @Override // g4.b
    public void startBackProgress(androidx.activity.b bVar) {
        if (q() || this.f9983w == null) {
            return;
        }
        this.f9978r.a0(bVar);
    }

    public boolean t() {
        return this.f9983w != null;
    }

    @Override // g4.b
    public void updateBackProgress(androidx.activity.b bVar) {
        if (q() || this.f9983w == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.f9978r.f0(bVar);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialSearchViewStyle);
    }

    public void setHint(int i10) {
        this.f9973m.setHint(i10);
    }

    public void setText(int i10) {
        this.f9973m.setText(i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchView(Context context, AttributeSet attributeSet, int i10) {
        int i11 = G;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9979s = new g4.c(this);
        this.f9982v = new LinkedHashSet();
        this.f9984x = 16;
        this.E = b.HIDDEN;
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.SearchView, i10, i11, new int[0]);
        this.B = typedArrayObtainStyledAttributes.getColor(R$styleable.SearchView_backgroundTint, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.SearchView_headerLayout, -1);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.SearchView_android_textAppearance, -1);
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.SearchView_android_text);
        String string2 = typedArrayObtainStyledAttributes.getString(R$styleable.SearchView_android_hint);
        String string3 = typedArrayObtainStyledAttributes.getString(R$styleable.SearchView_searchPrefixText);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchView_useDrawerArrowDrawable, false);
        this.f9985y = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchView_animateNavigationIcon, true);
        this.f9986z = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchView_animateMenuItems, true);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchView_hideNavigationIcon, false);
        this.A = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchView_autoShowKeyboard, true);
        this.f9980t = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SearchView_backHandlingEnabled, true);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(context2).inflate(R$layout.mtrl_search_view, this);
        this.f9977q = true;
        this.f9964a = findViewById(R$id.open_search_view_scrim);
        this.f9965b = (ClippableRoundedCornerLayout) findViewById(R$id.open_search_view_root);
        this.f9966c = findViewById(R$id.open_search_view_background);
        this.f9967f = findViewById(R$id.open_search_view_status_bar_spacer);
        this.f9968h = (FrameLayout) findViewById(R$id.open_search_view_header_container);
        this.f9969i = (FrameLayout) findViewById(R$id.open_search_view_toolbar_container);
        this.f9970j = (MaterialToolbar) findViewById(R$id.open_search_view_toolbar);
        this.f9971k = (Toolbar) findViewById(R$id.open_search_view_dummy_toolbar);
        this.f9972l = (TextView) findViewById(R$id.open_search_view_search_prefix);
        this.f9973m = (EditText) findViewById(R$id.open_search_view_edit_text);
        this.f9974n = (ImageButton) findViewById(R$id.open_search_view_clear_button);
        this.f9975o = findViewById(R$id.open_search_view_divider);
        this.f9976p = (TouchObserverFrameLayout) findViewById(R$id.open_search_view_content_container);
        this.f9978r = new w(this);
        this.f9981u = new d4.a(context2);
        O();
        I();
        setUpHeaderLayout(resourceId);
        setSearchPrefixText(string3);
        M(resourceId2, string, string2);
        H(z10, z11);
        J();
        K();
        N();
    }
}
