package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.c1;
import androidx.core.view.m0;
import com.google.android.material.R$styleable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ViewUtils {
    public static final int EDGE_TO_EDGE_FLAGS = 768;

    /* JADX INFO: renamed from: com.google.android.material.internal.ViewUtils$1 */
    class AnonymousClass1 implements OnApplyWindowInsetsListener {
        final /* synthetic */ OnApplyWindowInsetsListener val$listener;
        final /* synthetic */ boolean val$paddingBottomSystemWindowInsets;
        final /* synthetic */ boolean val$paddingLeftSystemWindowInsets;
        final /* synthetic */ boolean val$paddingRightSystemWindowInsets;

        AnonymousClass1(boolean z10, boolean z11, boolean z12, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            z = z10;
            z = z11;
            z = z12;
            onApplyWindowInsetsListener = onApplyWindowInsetsListener;
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        public a1 onApplyWindowInsets(View view, a1 a1Var, RelativePadding relativePadding) {
            if (z) {
                relativePadding.bottom += a1Var.j();
            }
            boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(view);
            if (z) {
                if (zIsLayoutRtl) {
                    relativePadding.end += a1Var.k();
                } else {
                    relativePadding.start += a1Var.k();
                }
            }
            if (z) {
                if (zIsLayoutRtl) {
                    relativePadding.start += a1Var.l();
                } else {
                    relativePadding.end += a1Var.l();
                }
            }
            relativePadding.applyToView(view);
            OnApplyWindowInsetsListener onApplyWindowInsetsListener = onApplyWindowInsetsListener;
            return onApplyWindowInsetsListener != null ? onApplyWindowInsetsListener.onApplyWindowInsets(view, a1Var, relativePadding) : a1Var;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.ViewUtils$2 */
    class AnonymousClass2 implements a0 {
        final /* synthetic */ RelativePadding val$initialPadding;

        AnonymousClass2(RelativePadding relativePadding) {
            relativePadding = relativePadding;
        }

        @Override // androidx.core.view.a0
        public a1 onApplyWindowInsets(View view, a1 a1Var) {
            return onApplyWindowInsetsListener.onApplyWindowInsets(view, a1Var, new RelativePadding(relativePadding));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.ViewUtils$3 */
    class AnonymousClass3 implements View.OnAttachStateChangeListener {
        AnonymousClass3() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            m0.f0(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public interface OnApplyWindowInsetsListener {
        a1 onApplyWindowInsets(View view, a1 a1Var, RelativePadding relativePadding);
    }

    private ViewUtils() {
    }

    public static void addOnGlobalLayoutListener(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public static Rect calculateOffsetRectFromBounds(View view, View view2) {
        int[] iArr = new int[2];
        view2.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        int i12 = i10 - iArr2[0];
        int i13 = i11 - iArr2[1];
        return new Rect(i12, i13, view2.getWidth() + i12, view2.getHeight() + i13);
    }

    public static Rect calculateRectFromBounds(View view) {
        return calculateRectFromBounds(view, 0);
    }

    public static void doOnApplyWindowInsets(View view, AttributeSet attributeSet, int i10, int i11) {
        doOnApplyWindowInsets(view, attributeSet, i10, i11, null);
    }

    public static float dpToPx(Context context, int i10) {
        return TypedValue.applyDimension(1, i10, context.getResources().getDisplayMetrics());
    }

    public static Integer getBackgroundColor(View view) {
        ColorStateList colorStateListG = com.google.android.material.drawable.a.g(view.getBackground());
        if (colorStateListG != null) {
            return Integer.valueOf(colorStateListG.getDefaultColor());
        }
        return null;
    }

    public static List<View> getChildren(View view) {
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                arrayList.add(viewGroup.getChildAt(i10));
            }
        }
        return arrayList;
    }

    public static ViewGroup getContentView(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static ViewOverlayImpl getContentViewOverlay(View view) {
        return getOverlay(getContentView(view));
    }

    private static InputMethodManager getInputMethodManager(View view) {
        return (InputMethodManager) r.a.h(view.getContext(), InputMethodManager.class);
    }

    public static ViewOverlayImpl getOverlay(View view) {
        if (view == null) {
            return null;
        }
        return new ViewOverlayApi18(view);
    }

    public static float getParentAbsoluteElevation(View view) {
        float fR = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            fR += m0.r((View) parent);
        }
        return fR;
    }

    public static void hideKeyboard(View view) {
        hideKeyboard(view, true);
    }

    public static boolean isLayoutRtl(View view) {
        return m0.v(view) == 1;
    }

    public static PorterDuff.Mode parseTintMode(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void removeOnGlobalLayoutListener(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            removeOnGlobalLayoutListener(view.getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    public static void requestApplyInsetsWhenAttached(View view) {
        if (m0.N(view)) {
            m0.f0(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.internal.ViewUtils.3
                AnonymousClass3() {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    view2.removeOnAttachStateChangeListener(this);
                    m0.f0(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                }
            });
        }
    }

    public static void requestFocusAndShowKeyboard(View view) {
        requestFocusAndShowKeyboard(view, true);
    }

    public static void setBoundsFromRect(View view, Rect rect) {
        view.setLeft(rect.left);
        view.setTop(rect.top);
        view.setRight(rect.right);
        view.setBottom(rect.bottom);
    }

    public static void showKeyboard(View view) {
        showKeyboard(view, true);
    }

    public static Rect calculateRectFromBounds(View view, int i10) {
        return new Rect(view.getLeft(), view.getTop() + i10, view.getRight(), view.getBottom() + i10);
    }

    public static void doOnApplyWindowInsets(View view, AttributeSet attributeSet, int i10, int i11, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R$styleable.Insets, i10, i11);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingBottomSystemWindowInsets, false);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingLeftSystemWindowInsets, false);
        boolean z12 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingRightSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        doOnApplyWindowInsets(view, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.internal.ViewUtils.1
            final /* synthetic */ OnApplyWindowInsetsListener val$listener;
            final /* synthetic */ boolean val$paddingBottomSystemWindowInsets;
            final /* synthetic */ boolean val$paddingLeftSystemWindowInsets;
            final /* synthetic */ boolean val$paddingRightSystemWindowInsets;

            AnonymousClass1(boolean z102, boolean z112, boolean z122, OnApplyWindowInsetsListener onApplyWindowInsetsListener2) {
                z = z102;
                z = z112;
                z = z122;
                onApplyWindowInsetsListener = onApplyWindowInsetsListener2;
            }

            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public a1 onApplyWindowInsets(View view2, a1 a1Var, RelativePadding relativePadding) {
                if (z) {
                    relativePadding.bottom += a1Var.j();
                }
                boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(view2);
                if (z) {
                    if (zIsLayoutRtl) {
                        relativePadding.end += a1Var.k();
                    } else {
                        relativePadding.start += a1Var.k();
                    }
                }
                if (z) {
                    if (zIsLayoutRtl) {
                        relativePadding.start += a1Var.l();
                    } else {
                        relativePadding.end += a1Var.l();
                    }
                }
                relativePadding.applyToView(view2);
                OnApplyWindowInsetsListener onApplyWindowInsetsListener2 = onApplyWindowInsetsListener;
                return onApplyWindowInsetsListener2 != null ? onApplyWindowInsetsListener2.onApplyWindowInsets(view2, a1Var, relativePadding) : a1Var;
            }
        });
    }

    public static void hideKeyboard(View view, boolean z10) {
        c1 c1VarG;
        if (z10 && (c1VarG = m0.G(view)) != null) {
            c1VarG.a(a1.m.a());
            return;
        }
        InputMethodManager inputMethodManager = getInputMethodManager(view);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static void removeOnGlobalLayoutListener(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static void requestFocusAndShowKeyboard(final View view, final boolean z10) {
        view.requestFocus();
        view.post(new Runnable() { // from class: com.google.android.material.internal.f
            @Override // java.lang.Runnable
            public final void run() {
                ViewUtils.showKeyboard(view, z10);
            }
        });
    }

    public static void showKeyboard(View view, boolean z10) {
        c1 c1VarG;
        if (!z10 || (c1VarG = m0.G(view)) == null) {
            getInputMethodManager(view).showSoftInput(view, 1);
        } else {
            c1VarG.e(a1.m.a());
        }
    }

    public static class RelativePadding {
        public int bottom;
        public int end;
        public int start;
        public int top;

        public RelativePadding(int i10, int i11, int i12, int i13) {
            this.start = i10;
            this.top = i11;
            this.end = i12;
            this.bottom = i13;
        }

        public void applyToView(View view) {
            m0.z0(view, this.start, this.top, this.end, this.bottom);
        }

        public RelativePadding(RelativePadding relativePadding) {
            this.start = relativePadding.start;
            this.top = relativePadding.top;
            this.end = relativePadding.end;
            this.bottom = relativePadding.bottom;
        }
    }

    public static void doOnApplyWindowInsets(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        m0.y0(view, new a0() { // from class: com.google.android.material.internal.ViewUtils.2
            final /* synthetic */ RelativePadding val$initialPadding;

            AnonymousClass2(RelativePadding relativePadding) {
                relativePadding = relativePadding;
            }

            @Override // androidx.core.view.a0
            public a1 onApplyWindowInsets(View view2, a1 a1Var) {
                return onApplyWindowInsetsListener.onApplyWindowInsets(view2, a1Var, new RelativePadding(relativePadding));
            }
        });
        requestApplyInsetsWhenAttached(view);
    }
}
