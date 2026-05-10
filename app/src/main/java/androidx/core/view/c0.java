package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
public final class c0 implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f2029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewTreeObserver f2030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f2031c;

    private c0(View view, Runnable runnable) {
        this.f2029a = view;
        this.f2030b = view.getViewTreeObserver();
        this.f2031c = runnable;
    }

    public static c0 a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        c0 c0Var = new c0(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(c0Var);
        view.addOnAttachStateChangeListener(c0Var);
        return c0Var;
    }

    public void b() {
        if (this.f2030b.isAlive()) {
            this.f2030b.removeOnPreDrawListener(this);
        } else {
            this.f2029a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f2029a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        b();
        this.f2031c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f2030b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
