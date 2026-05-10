package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.j;

/* JADX INFO: loaded from: classes.dex */
public class c extends f0 {

    private static class a extends AnimatorListenerAdapter implements j.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f3649a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3650b = false;

        a(View view) {
            this.f3649a = view;
        }

        @Override // androidx.transition.j.i
        public void a(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void b(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void c(j jVar, boolean z10) {
        }

        @Override // androidx.transition.j.i
        public void d(j jVar) {
            this.f3649a.setTag(R$id.transition_pause_alpha, Float.valueOf(this.f3649a.getVisibility() == 0 ? z.b(this.f3649a) : 0.0f));
        }

        @Override // androidx.transition.j.i
        public void e(j jVar) {
            this.f3649a.setTag(R$id.transition_pause_alpha, null);
        }

        @Override // androidx.transition.j.i
        public void g(j jVar) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            z.e(this.f3649a, 1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f3649a.hasOverlappingRendering() && this.f3649a.getLayerType() == 0) {
                this.f3650b = true;
                this.f3649a.setLayerType(2, null);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (this.f3650b) {
                this.f3649a.setLayerType(0, null);
            }
            if (z10) {
                return;
            }
            z.e(this.f3649a, 1.0f);
            z.a(this.f3649a);
        }
    }

    public c(int i10) {
        y(i10);
    }

    private static float A(v vVar, float f10) {
        Float f11;
        return (vVar == null || (f11 = (Float) vVar.f3729a.get("android:fade:transitionAlpha")) == null) ? f10 : f11.floatValue();
    }

    private Animator z(View view, float f10, float f11) {
        if (f10 == f11) {
            return null;
        }
        z.e(view, f10);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) z.f3740b, f11);
        a aVar = new a(view);
        objectAnimatorOfFloat.addListener(aVar);
        getRootTransition().addListener(aVar);
        return objectAnimatorOfFloat;
    }

    @Override // androidx.transition.f0, androidx.transition.j
    public void captureStartValues(v vVar) {
        super.captureStartValues(vVar);
        Float fValueOf = (Float) vVar.f3730b.getTag(R$id.transition_pause_alpha);
        if (fValueOf == null) {
            fValueOf = vVar.f3730b.getVisibility() == 0 ? Float.valueOf(z.b(vVar.f3730b)) : Float.valueOf(0.0f);
        }
        vVar.f3729a.put("android:fade:transitionAlpha", fValueOf);
    }

    @Override // androidx.transition.j
    public boolean isSeekingSupported() {
        return true;
    }

    @Override // androidx.transition.f0
    public Animator u(ViewGroup viewGroup, View view, v vVar, v vVar2) {
        z.c(view);
        return z(view, A(vVar, 0.0f), 1.0f);
    }

    @Override // androidx.transition.f0
    public Animator w(ViewGroup viewGroup, View view, v vVar, v vVar2) {
        z.c(view);
        Animator animatorZ = z(view, A(vVar, 1.0f), 0.0f);
        if (animatorZ == null) {
            z.e(view, A(vVar2, 1.0f));
        }
        return animatorZ;
    }

    public c() {
    }
}
