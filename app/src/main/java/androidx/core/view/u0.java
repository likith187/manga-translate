package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference f2115a;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v0 f2116a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2117b;

        a(v0 v0Var, View view) {
            this.f2116a = v0Var;
            this.f2117b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2116a.a(this.f2117b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2116a.b(this.f2117b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f2116a.c(this.f2117b);
        }
    }

    u0(View view) {
        this.f2115a = new WeakReference(view);
    }

    private void j(View view, v0 v0Var) {
        if (v0Var != null) {
            view.animate().setListener(new a(v0Var, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public u0 b(float f10) {
        View view = (View) this.f2115a.get();
        if (view != null) {
            view.animate().alpha(f10);
        }
        return this;
    }

    public void c() {
        View view = (View) this.f2115a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long d() {
        View view = (View) this.f2115a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public u0 f(float f10) {
        View view = (View) this.f2115a.get();
        if (view != null) {
            view.animate().rotation(f10);
        }
        return this;
    }

    public u0 g(long j10) {
        View view = (View) this.f2115a.get();
        if (view != null) {
            view.animate().setDuration(j10);
        }
        return this;
    }

    public u0 h(Interpolator interpolator) {
        View view = (View) this.f2115a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public u0 i(v0 v0Var) {
        View view = (View) this.f2115a.get();
        if (view != null) {
            j(view, v0Var);
        }
        return this;
    }

    public u0 k(long j10) {
        View view = (View) this.f2115a.get();
        if (view != null) {
            view.animate().setStartDelay(j10);
        }
        return this;
    }

    public u0 l(final x0 x0Var) {
        final View view = (View) this.f2115a.get();
        if (view != null) {
            view.animate().setUpdateListener(x0Var != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.t0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    x0Var.a(view);
                }
            } : null);
        }
        return this;
    }

    public void m() {
        View view = (View) this.f2115a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public u0 n(float f10) {
        View view = (View) this.f2115a.get();
        if (view != null) {
            view.animate().translationY(f10);
        }
        return this;
    }
}
