package com.google.android.material.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import d0.h;
import d0.k;
import kotlinx.serialization.json.internal.ReaderJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class BottomSheetDragHandleView extends AppCompatImageView implements AccessibilityManager.AccessibilityStateChangeListener {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f9053m = R$style.Widget_Material3_BottomSheet_DragHandle;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AccessibilityManager f9054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BottomSheetBehavior f9055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9056c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9057f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9058h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f9059i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f9060j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f9061k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final BottomSheetBehavior.g f9062l;

    class a extends BottomSheetBehavior.g {
        a() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void onSlide(View view, float f10) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void onStateChanged(View view, int i10) {
            BottomSheetDragHandleView.this.i(i10);
        }
    }

    class b extends androidx.core.view.a {
        b() {
        }

        @Override // androidx.core.view.a
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            if (accessibilityEvent.getEventType() == 1) {
                BottomSheetDragHandleView.this.e();
            }
        }
    }

    public BottomSheetDragHandleView(Context context) {
        this(context, null);
    }

    private void d(String str) {
        if (this.f9054a == null) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(ReaderJsonLexerKt.BATCH_SIZE);
        accessibilityEventObtain.getText().add(str);
        this.f9054a.sendAccessibilityEvent(accessibilityEventObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        boolean z10 = false;
        if (!this.f9057f) {
            return false;
        }
        d(this.f9061k);
        if (!this.f9055b.isFitToContents() && !this.f9055b.shouldSkipHalfExpandedStateWhenDragging()) {
            z10 = true;
        }
        int state = this.f9055b.getState();
        int i10 = 6;
        int i11 = 3;
        if (state == 4) {
            if (!z10) {
                i10 = i11;
            }
        } else if (state != 3) {
            if (!this.f9058h) {
                i11 = 4;
            }
            i10 = i11;
        } else if (!z10) {
            i10 = 4;
        }
        this.f9055b.setState(i10);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.material.bottomsheet.BottomSheetDragHandleView] */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.view.View] */
    private BottomSheetBehavior f() {
        while (true) {
            this = g(this);
            if (this == 0) {
                return null;
            }
            ViewGroup.LayoutParams layoutParams = this.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) layoutParams).f();
                if (cVarF instanceof BottomSheetBehavior) {
                    return (BottomSheetBehavior) cVarF;
                }
            }
        }
    }

    private static View g(View view) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean h(View view, k.a aVar) {
        return e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(int i10) {
        if (i10 == 4) {
            this.f9058h = true;
        } else if (i10 == 3) {
            this.f9058h = false;
        }
        m0.e0(this, h.a.f11466i, this.f9058h ? this.f9059i : this.f9060j, new k() { // from class: com.google.android.material.bottomsheet.c
            @Override // d0.k
            public final boolean perform(View view, k.a aVar) {
                return this.f9075a.h(view, aVar);
            }
        });
    }

    private void j() {
        this.f9057f = this.f9056c && this.f9055b != null;
        m0.t0(this, this.f9055b == null ? 2 : 1);
        setClickable(this.f9057f);
    }

    private void setBottomSheetBehavior(BottomSheetBehavior<?> bottomSheetBehavior) {
        BottomSheetBehavior bottomSheetBehavior2 = this.f9055b;
        if (bottomSheetBehavior2 != null) {
            bottomSheetBehavior2.removeBottomSheetCallback(this.f9062l);
            this.f9055b.setAccessibilityDelegateView(null);
        }
        this.f9055b = bottomSheetBehavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.setAccessibilityDelegateView(this);
            i(this.f9055b.getState());
            this.f9055b.addBottomSheetCallback(this.f9062l);
        }
        j();
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean z10) {
        this.f9056c = z10;
        j();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setBottomSheetBehavior(f());
        AccessibilityManager accessibilityManager = this.f9054a;
        if (accessibilityManager != null) {
            accessibilityManager.addAccessibilityStateChangeListener(this);
            onAccessibilityStateChanged(this.f9054a.isEnabled());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        AccessibilityManager accessibilityManager = this.f9054a;
        if (accessibilityManager != null) {
            accessibilityManager.removeAccessibilityStateChangeListener(this);
        }
        setBottomSheetBehavior(null);
        super.onDetachedFromWindow();
    }

    public BottomSheetDragHandleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomSheetDragHandleStyle);
    }

    public BottomSheetDragHandleView(Context context, AttributeSet attributeSet, int i10) {
        super(m4.a.c(context, attributeSet, i10, f9053m), attributeSet, i10);
        this.f9059i = getResources().getString(R$string.bottomsheet_action_expand);
        this.f9060j = getResources().getString(R$string.bottomsheet_action_collapse);
        this.f9061k = getResources().getString(R$string.bottomsheet_drag_handle_clicked);
        this.f9062l = new a();
        this.f9054a = (AccessibilityManager) getContext().getSystemService("accessibility");
        j();
        m0.j0(this, new b());
    }
}
