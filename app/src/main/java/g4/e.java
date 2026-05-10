package g4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.R$dimen;

/* JADX INFO: loaded from: classes.dex */
public class e extends g4.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f12070g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f12071h;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e.this.f12058b.setTranslationY(0.0f);
            e.this.k(0.0f);
        }
    }

    public e(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f12070g = resources.getDimension(R$dimen.m3_back_progress_bottom_container_max_scale_x_distance);
        this.f12071h = resources.getDimension(R$dimen.m3_back_progress_bottom_container_max_scale_y_distance);
    }

    private Animator g() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f12058b, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f12058b, (Property<View, Float>) View.SCALE_Y, 1.0f));
        View view = this.f12058b;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i10), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setInterpolator(new j0.b());
        return animatorSet;
    }

    public void f() {
        if (super.b() == null) {
            return;
        }
        Animator animatorG = g();
        animatorG.setDuration(this.f12061e);
        animatorG.start();
    }

    public void h(androidx.activity.b bVar, Animator.AnimatorListener animatorListener) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f12058b, (Property<View, Float>) View.TRANSLATION_Y, this.f12058b.getHeight() * this.f12058b.getScaleY());
        objectAnimatorOfFloat.setInterpolator(new j0.b());
        objectAnimatorOfFloat.setDuration(x3.a.c(this.f12059c, this.f12060d, bVar.a()));
        objectAnimatorOfFloat.addListener(new a());
        if (animatorListener != null) {
            objectAnimatorOfFloat.addListener(animatorListener);
        }
        objectAnimatorOfFloat.start();
    }

    public void i(androidx.activity.b bVar, Animator.AnimatorListener animatorListener) {
        Animator animatorG = g();
        animatorG.setDuration(x3.a.c(this.f12059c, this.f12060d, bVar.a()));
        if (animatorListener != null) {
            animatorG.addListener(animatorListener);
        }
        animatorG.start();
    }

    public void j(androidx.activity.b bVar) {
        super.d(bVar);
    }

    public void k(float f10) {
        float fA = a(f10);
        float width = this.f12058b.getWidth();
        float height = this.f12058b.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float f11 = this.f12070g / width;
        float f12 = this.f12071h / height;
        float fA2 = 1.0f - x3.a.a(0.0f, f11, fA);
        float fA3 = 1.0f - x3.a.a(0.0f, f12, fA);
        this.f12058b.setScaleX(fA2);
        this.f12058b.setPivotY(height);
        this.f12058b.setScaleY(fA3);
        View view = this.f12058b;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                childAt.setPivotY(-childAt.getTop());
                childAt.setScaleY(fA3 != 0.0f ? fA2 / fA3 : 1.0f);
            }
        }
    }

    public void l(androidx.activity.b bVar) {
        if (super.e(bVar) == null) {
            return;
        }
        k(bVar.a());
    }
}
