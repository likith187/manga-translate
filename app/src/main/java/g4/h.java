package g4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.j;
import androidx.core.view.m0;
import com.google.android.material.R$dimen;

/* JADX INFO: loaded from: classes.dex */
public class h extends g4.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f12082g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f12083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f12084i;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f12085a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f12086b;

        a(boolean z10, int i10) {
            this.f12085a = z10;
            this.f12086b = i10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            h.this.f12058b.setTranslationX(0.0f);
            h.this.k(0.0f, this.f12085a, this.f12086b);
        }
    }

    public h(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f12082g = resources.getDimension(R$dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.f12083h = resources.getDimension(R$dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.f12084i = resources.getDimension(R$dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    private boolean g(int i10, int i11) {
        return (j.b(i10, m0.v(this.f12058b)) & i11) == i11;
    }

    private int i(boolean z10) {
        ViewGroup.LayoutParams layoutParams = this.f12058b.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return 0;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return z10 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
    }

    public void f() {
        if (super.b() == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f12058b, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f12058b, (Property<View, Float>) View.SCALE_Y, 1.0f));
        View view = this.f12058b;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i10), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(this.f12061e);
        animatorSet.start();
    }

    public void h(androidx.activity.b bVar, int i10, Animator.AnimatorListener animatorListener, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        boolean z10 = bVar.b() == 0;
        boolean zG = g(i10, 3);
        float width = (this.f12058b.getWidth() * this.f12058b.getScaleX()) + i(zG);
        View view = this.f12058b;
        Property property = View.TRANSLATION_X;
        if (zG) {
            width = -width;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, width);
        if (animatorUpdateListener != null) {
            objectAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
        }
        objectAnimatorOfFloat.setInterpolator(new j0.b());
        objectAnimatorOfFloat.setDuration(x3.a.c(this.f12059c, this.f12060d, bVar.a()));
        objectAnimatorOfFloat.addListener(new a(z10, i10));
        if (animatorListener != null) {
            objectAnimatorOfFloat.addListener(animatorListener);
        }
        objectAnimatorOfFloat.start();
    }

    public void j(androidx.activity.b bVar) {
        super.d(bVar);
    }

    public void k(float f10, boolean z10, int i10) {
        float fA = a(f10);
        boolean zG = g(i10, 3);
        boolean z11 = z10 == zG;
        int width = this.f12058b.getWidth();
        int height = this.f12058b.getHeight();
        float f11 = width;
        if (f11 > 0.0f) {
            float f12 = height;
            if (f12 <= 0.0f) {
                return;
            }
            float f13 = this.f12082g / f11;
            float f14 = this.f12083h / f11;
            float f15 = this.f12084i / f12;
            View view = this.f12058b;
            if (zG) {
                f11 = 0.0f;
            }
            view.setPivotX(f11);
            if (!z11) {
                f14 = -f13;
            }
            float fA2 = x3.a.a(0.0f, f14, fA);
            float f16 = fA2 + 1.0f;
            this.f12058b.setScaleX(f16);
            float fA3 = 1.0f - x3.a.a(0.0f, f15, fA);
            this.f12058b.setScaleY(fA3);
            View view2 = this.f12058b;
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                    View childAt = viewGroup.getChildAt(i11);
                    childAt.setPivotX(zG ? (width - childAt.getRight()) + childAt.getWidth() : -childAt.getLeft());
                    childAt.setPivotY(-childAt.getTop());
                    float f17 = z11 ? 1.0f - fA2 : 1.0f;
                    float f18 = fA3 != 0.0f ? (f16 / fA3) * f17 : 1.0f;
                    childAt.setScaleX(f17);
                    childAt.setScaleY(f18);
                }
            }
        }
    }

    public void l(androidx.activity.b bVar, int i10) {
        if (super.e(bVar) == null) {
            return;
        }
        k(bVar.a(), bVar.b() == 0, i10);
    }
}
