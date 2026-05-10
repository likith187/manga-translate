package com.google.android.material.bottomsheet;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.o;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import androidx.core.view.y0;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.EdgeToEdgeUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.i;
import com.oplus.aiunit.core.ConfigPackage;
import d0.h;

/* JADX INFO: loaded from: classes.dex */
public class a extends o {
    private g4.c backOrchestrator;
    private BottomSheetBehavior<FrameLayout> behavior;
    private FrameLayout bottomSheet;
    private BottomSheetBehavior.g bottomSheetCallback;
    boolean cancelable;
    private boolean canceledOnTouchOutside;
    private boolean canceledOnTouchOutsideSet;
    private FrameLayout container;
    private CoordinatorLayout coordinator;
    boolean dismissWithAnimation;
    private f edgeToEdgeCallback;
    private boolean edgeToEdgeEnabled;

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.a$a */
    class C0107a implements a0 {
        C0107a() {
        }

        @Override // androidx.core.view.a0
        public a1 onApplyWindowInsets(View view, a1 a1Var) {
            if (a.this.edgeToEdgeCallback != null) {
                a.this.behavior.removeBottomSheetCallback(a.this.edgeToEdgeCallback);
            }
            if (a1Var != null) {
                a aVar = a.this;
                aVar.edgeToEdgeCallback = new f(aVar.bottomSheet, a1Var, null);
                a.this.edgeToEdgeCallback.b(a.this.getWindow());
                a.this.behavior.addBottomSheetCallback(a.this.edgeToEdgeCallback);
            }
            return a1Var;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a aVar = a.this;
            if (aVar.cancelable && aVar.isShowing() && a.this.shouldWindowCloseOnTouchOutside()) {
                a.this.cancel();
            }
        }
    }

    class c extends androidx.core.view.a {
        c() {
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, h hVar) {
            super.onInitializeAccessibilityNodeInfo(view, hVar);
            if (!a.this.cancelable) {
                hVar.m0(false);
            } else {
                hVar.a(1048576);
                hVar.m0(true);
            }
        }

        @Override // androidx.core.view.a
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 == 1048576) {
                a aVar = a.this;
                if (aVar.cancelable) {
                    aVar.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i10, bundle);
        }
    }

    class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    class e extends BottomSheetBehavior.g {
        e() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void onSlide(View view, float f10) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void onStateChanged(View view, int i10) {
            if (i10 == 5) {
                a.this.cancel();
            }
        }
    }

    private static class f extends BottomSheetBehavior.g {

        /* JADX INFO: renamed from: a */
        private final Boolean f9070a;

        /* JADX INFO: renamed from: b */
        private final a1 f9071b;

        /* JADX INFO: renamed from: c */
        private Window f9072c;

        /* JADX INFO: renamed from: d */
        private boolean f9073d;

        /* synthetic */ f(View view, a1 a1Var, C0107a c0107a) {
            this(view, a1Var);
        }

        private void a(View view) {
            if (view.getTop() < this.f9071b.m()) {
                Window window = this.f9072c;
                if (window != null) {
                    Boolean bool = this.f9070a;
                    EdgeToEdgeUtils.setLightStatusBar(window, bool == null ? this.f9073d : bool.booleanValue());
                }
                view.setPadding(view.getPaddingLeft(), this.f9071b.m() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
                return;
            }
            if (view.getTop() != 0) {
                Window window2 = this.f9072c;
                if (window2 != null) {
                    EdgeToEdgeUtils.setLightStatusBar(window2, this.f9073d);
                }
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        void b(Window window) {
            if (this.f9072c == window) {
                return;
            }
            this.f9072c = window;
            if (window != null) {
                this.f9073d = y0.a(window, window.getDecorView()).b();
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        void onLayout(View view) {
            a(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void onSlide(View view, float f10) {
            a(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void onStateChanged(View view, int i10) {
            a(view);
        }

        private f(View view, a1 a1Var) {
            this.f9071b = a1Var;
            i materialShapeDrawable = BottomSheetBehavior.from(view).getMaterialShapeDrawable();
            ColorStateList fillColor = materialShapeDrawable != null ? materialShapeDrawable.getFillColor() : m0.o(view);
            if (fillColor != null) {
                this.f9070a = Boolean.valueOf(b4.a.h(fillColor.getDefaultColor()));
                return;
            }
            Integer backgroundColor = ViewUtils.getBackgroundColor(view);
            if (backgroundColor != null) {
                this.f9070a = Boolean.valueOf(b4.a.h(backgroundColor.intValue()));
            } else {
                this.f9070a = null;
            }
        }
    }

    public a(Context context, int i10) {
        super(context, d(context, i10));
        this.cancelable = true;
        this.canceledOnTouchOutside = true;
        this.bottomSheetCallback = new e();
        supportRequestWindowFeature(1);
        this.edgeToEdgeEnabled = getContext().getTheme().obtainStyledAttributes(new int[]{R$attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    private static int d(Context context, int i10) {
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R$attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : R$style.Theme_Design_Light_BottomSheetDialog;
    }

    private FrameLayout f() {
        if (this.container == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R$layout.design_bottom_sheet_dialog, null);
            this.container = frameLayout;
            this.coordinator = (CoordinatorLayout) frameLayout.findViewById(R$id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.container.findViewById(R$id.design_bottom_sheet);
            this.bottomSheet = frameLayout2;
            BottomSheetBehavior<FrameLayout> bottomSheetBehaviorFrom = BottomSheetBehavior.from(frameLayout2);
            this.behavior = bottomSheetBehaviorFrom;
            bottomSheetBehaviorFrom.addBottomSheetCallback(this.bottomSheetCallback);
            this.behavior.setHideable(this.cancelable);
            this.backOrchestrator = new g4.c(this.behavior, this.bottomSheet);
        }
        return this.container;
    }

    private View g(int i10, View view, ViewGroup.LayoutParams layoutParams) {
        f();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.container.findViewById(R$id.coordinator);
        if (i10 != 0 && view == null) {
            view = getLayoutInflater().inflate(i10, (ViewGroup) coordinatorLayout, false);
        }
        if (this.edgeToEdgeEnabled) {
            m0.y0(this.bottomSheet, new C0107a());
        }
        this.bottomSheet.removeAllViews();
        if (layoutParams == null) {
            this.bottomSheet.addView(view);
        } else {
            this.bottomSheet.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R$id.touch_outside).setOnClickListener(new b());
        m0.j0(this.bottomSheet, new c());
        this.bottomSheet.setOnTouchListener(new d());
        return this.container;
    }

    @Deprecated
    public static void setLightStatusBar(View view, boolean z10) {
        int systemUiVisibility = view.getSystemUiVisibility();
        view.setSystemUiVisibility(z10 ? systemUiVisibility | ConfigPackage.FRAME_SIZE_6 : systemUiVisibility & (-8193));
    }

    private void updateListeningForBackCallbacks() {
        g4.c cVar = this.backOrchestrator;
        if (cVar == null) {
            return;
        }
        if (this.cancelable) {
            cVar.c();
        } else {
            cVar.f();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior<FrameLayout> behavior = getBehavior();
        if (!this.dismissWithAnimation || behavior.getState() == 5) {
            super.cancel();
        } else {
            behavior.setState(5);
        }
    }

    public BottomSheetBehavior<FrameLayout> getBehavior() {
        if (this.behavior == null) {
            f();
        }
        return this.behavior;
    }

    public boolean getDismissWithAnimation() {
        return this.dismissWithAnimation;
    }

    public boolean getEdgeToEdgeEnabled() {
        return this.edgeToEdgeEnabled;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z10 = this.edgeToEdgeEnabled && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.container;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z10);
            }
            CoordinatorLayout coordinatorLayout = this.coordinator;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z10);
            }
            y0.b(window, !z10);
            f fVar = this.edgeToEdgeCallback;
            if (fVar != null) {
                fVar.b(window);
            }
        }
        updateListeningForBackCallbacks();
    }

    @Override // androidx.appcompat.app.o, androidx.activity.q, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        f fVar = this.edgeToEdgeCallback;
        if (fVar != null) {
            fVar.b(null);
        }
        g4.c cVar = this.backOrchestrator;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // androidx.activity.q, android.app.Dialog
    protected void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.behavior;
        if (bottomSheetBehavior == null || bottomSheetBehavior.getState() != 5) {
            return;
        }
        this.behavior.setState(4);
    }

    void removeDefaultCallback() {
        this.behavior.removeBottomSheetCallback(this.bottomSheetCallback);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        if (this.cancelable != z10) {
            this.cancelable = z10;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.behavior;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.setHideable(z10);
            }
            if (getWindow() != null) {
                updateListeningForBackCallbacks();
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
        if (z10 && !this.cancelable) {
            this.cancelable = true;
        }
        this.canceledOnTouchOutside = z10;
        this.canceledOnTouchOutsideSet = true;
    }

    @Override // androidx.appcompat.app.o, androidx.activity.q, android.app.Dialog
    public void setContentView(int i10) {
        super.setContentView(g(i10, null, null));
    }

    public void setDismissWithAnimation(boolean z10) {
        this.dismissWithAnimation = z10;
    }

    boolean shouldWindowCloseOnTouchOutside() {
        if (!this.canceledOnTouchOutsideSet) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
            this.canceledOnTouchOutside = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
            this.canceledOnTouchOutsideSet = true;
        }
        return this.canceledOnTouchOutside;
    }

    @Override // androidx.appcompat.app.o, androidx.activity.q, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(g(0, view, null));
    }

    @Override // androidx.appcompat.app.o, androidx.activity.q, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(g(0, view, layoutParams));
    }
}
