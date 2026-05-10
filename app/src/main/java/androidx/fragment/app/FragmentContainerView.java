package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.core.view.a1;
import androidx.core.view.m0;
import androidx.fragment.R$styleable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f2487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f2488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View.OnApplyWindowInsetsListener f2489c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2490f;

    public static final class a {
        public static final a INSTANCE = new a();

        private a() {
        }

        public final WindowInsets a(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener, View v10, WindowInsets insets) {
            kotlin.jvm.internal.r.e(onApplyWindowInsetsListener, "onApplyWindowInsetsListener");
            kotlin.jvm.internal.r.e(v10, "v");
            kotlin.jvm.internal.r.e(insets, "insets");
            WindowInsets windowInsetsOnApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(v10, insets);
            kotlin.jvm.internal.r.d(windowInsetsOnApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
            return windowInsetsOnApplyWindowInsets;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        kotlin.jvm.internal.r.e(context, "context");
    }

    private final void a(View view) {
        if (this.f2488b.contains(view)) {
            this.f2487a.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int i10, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.r.e(child, "child");
        if (FragmentManager.B0(child) != null) {
            super.addView(child, i10, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + child + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets insets) {
        a1 a1VarV;
        kotlin.jvm.internal.r.e(insets, "insets");
        a1 a1VarY = a1.y(insets);
        kotlin.jvm.internal.r.d(a1VarY, "toWindowInsetsCompat(insets)");
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f2489c;
        if (onApplyWindowInsetsListener != null) {
            a aVar = a.INSTANCE;
            kotlin.jvm.internal.r.b(onApplyWindowInsetsListener);
            a1VarV = a1.y(aVar.a(onApplyWindowInsetsListener, this, insets));
        } else {
            a1VarV = m0.V(this, a1VarY);
        }
        kotlin.jvm.internal.r.d(a1VarV, "if (applyWindowInsetsLis…, insetsCompat)\n        }");
        if (!a1VarV.q()) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                m0.f(getChildAt(i10), a1VarV);
            }
        }
        return insets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        kotlin.jvm.internal.r.e(canvas, "canvas");
        if (this.f2490f) {
            Iterator it = this.f2487a.iterator();
            while (it.hasNext()) {
                super.drawChild(canvas, (View) it.next(), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View child, long j10) {
        kotlin.jvm.internal.r.e(canvas, "canvas");
        kotlin.jvm.internal.r.e(child, "child");
        if (this.f2490f && !this.f2487a.isEmpty() && this.f2487a.contains(child)) {
            return false;
        }
        return super.drawChild(canvas, child, j10);
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        kotlin.jvm.internal.r.e(view, "view");
        this.f2488b.remove(view);
        if (this.f2487a.remove(view)) {
            this.f2490f = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends Fragment> F getFragment() {
        return (F) FragmentManager.j0(this).g0(getId());
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets insets) {
        kotlin.jvm.internal.r.e(insets, "insets");
        return insets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                super.removeAllViewsInLayout();
                return;
            } else {
                View view = getChildAt(childCount);
                kotlin.jvm.internal.r.d(view, "view");
                a(view);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        kotlin.jvm.internal.r.e(view, "view");
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i10) {
        View view = getChildAt(i10);
        kotlin.jvm.internal.r.d(view, "view");
        a(view);
        super.removeViewAt(i10);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        kotlin.jvm.internal.r.e(view, "view");
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i10, int i11) {
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            View view = getChildAt(i13);
            kotlin.jvm.internal.r.d(view, "view");
            a(view);
        }
        super.removeViews(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i10, int i11) {
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            View view = getChildAt(i13);
            kotlin.jvm.internal.r.d(view, "view");
            a(view);
        }
        super.removeViewsInLayout(i10, i11);
    }

    public final void setDrawDisappearingViewsLast(boolean z10) {
        this.f2490f = z10;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.f2489c = listener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        kotlin.jvm.internal.r.e(view, "view");
        if (view.getParent() == this) {
            this.f2488b.add(view);
        }
        super.startViewTransition(view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context) {
        super(context);
        kotlin.jvm.internal.r.e(context, "context");
        this.f2487a = new ArrayList();
        this.f2488b = new ArrayList();
        this.f2490f = true;
    }

    public /* synthetic */ FragmentContainerView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet, int i10) {
        String str;
        super(context, attributeSet, i10);
        kotlin.jvm.internal.r.e(context, "context");
        this.f2487a = new ArrayList();
        this.f2488b = new ArrayList();
        this.f2490f = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            int[] FragmentContainerView = R$styleable.FragmentContainerView;
            kotlin.jvm.internal.r.d(FragmentContainerView, "FragmentContainerView");
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FragmentContainerView, 0, 0);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(R$styleable.FragmentContainerView_android_name);
                str = "android:name";
            } else {
                str = "class";
            }
            typedArrayObtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + AbstractJsonLexerKt.STRING);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attrs, FragmentManager fm) {
        String str;
        super(context, attrs);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(attrs, "attrs");
        kotlin.jvm.internal.r.e(fm, "fm");
        this.f2487a = new ArrayList();
        this.f2488b = new ArrayList();
        this.f2490f = true;
        String classAttribute = attrs.getClassAttribute();
        int[] FragmentContainerView = R$styleable.FragmentContainerView;
        kotlin.jvm.internal.r.d(FragmentContainerView, "FragmentContainerView");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, FragmentContainerView, 0, 0);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(R$styleable.FragmentContainerView_android_name) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.FragmentContainerView_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        Fragment fragmentG0 = fm.g0(id);
        if (classAttribute != null && fragmentG0 == null) {
            if (id == -1) {
                if (string != null) {
                    str = " with tag " + string;
                } else {
                    str = "";
                }
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + str);
            }
            Fragment fragmentA = fm.s0().a(context.getClassLoader(), classAttribute);
            kotlin.jvm.internal.r.d(fragmentA, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            fragmentA.onInflate(context, attrs, (Bundle) null);
            fm.n().v(true).d(this, fragmentA, string).k();
        }
        fm.Z0(this);
    }
}
