package g4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.Property;
import android.view.RoundedCorner;
import android.view.View;
import android.view.WindowInsets;
import com.google.android.material.R$dimen;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ViewUtils;

/* JADX INFO: loaded from: classes.dex */
public class g extends g4.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f12074g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f12075h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f12076i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Rect f12077j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Rect f12078k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Integer f12079l;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f12080a;

        a(View view) {
            this.f12080a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View view = this.f12080a;
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public g(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f12074g = resources.getDimension(R$dimen.m3_back_progress_main_container_min_edge_gap);
        this.f12075h = resources.getDimension(R$dimen.m3_back_progress_main_container_max_translation_y);
    }

    private ValueAnimator h(final ClippableRoundedCornerLayout clippableRoundedCornerLayout) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(clippableRoundedCornerLayout.getCornerRadius(), k());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: g4.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                g.q(clippableRoundedCornerLayout, valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private AnimatorSet i(View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f12058b, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f12058b, (Property<View, Float>) View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.f12058b, (Property<View, Float>) View.TRANSLATION_X, 0.0f), ObjectAnimator.ofFloat(this.f12058b, (Property<View, Float>) View.TRANSLATION_Y, 0.0f));
        animatorSet.addListener(new a(view));
        return animatorSet;
    }

    private int n() {
        WindowInsets rootWindowInsets = this.f12058b.getRootWindowInsets();
        if (rootWindowInsets != null) {
            return Math.max(Math.max(o(rootWindowInsets, 0), o(rootWindowInsets, 1)), Math.max(o(rootWindowInsets, 3), o(rootWindowInsets, 2)));
        }
        return 0;
    }

    private int o(WindowInsets windowInsets, int i10) {
        RoundedCorner roundedCorner = windowInsets.getRoundedCorner(i10);
        if (roundedCorner != null) {
            return roundedCorner.getRadius();
        }
        return 0;
    }

    private boolean p() {
        int[] iArr = new int[2];
        this.f12058b.getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q(ClippableRoundedCornerLayout clippableRoundedCornerLayout, ValueAnimator valueAnimator) {
        clippableRoundedCornerLayout.updateCornerRadius(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void r() {
        this.f12076i = 0.0f;
        this.f12077j = null;
        this.f12078k = null;
    }

    public void g(View view) {
        if (super.b() == null) {
            return;
        }
        AnimatorSet animatorSetI = i(view);
        View view2 = this.f12058b;
        if (view2 instanceof ClippableRoundedCornerLayout) {
            animatorSetI.playTogether(h((ClippableRoundedCornerLayout) view2));
        }
        animatorSetI.setDuration(this.f12061e);
        animatorSetI.start();
        r();
    }

    public void j(long j10, View view) {
        AnimatorSet animatorSetI = i(view);
        animatorSetI.setDuration(j10);
        animatorSetI.start();
        r();
    }

    public int k() {
        if (this.f12079l == null) {
            this.f12079l = Integer.valueOf(p() ? n() : 0);
        }
        return this.f12079l.intValue();
    }

    public Rect l() {
        return this.f12078k;
    }

    public Rect m() {
        return this.f12077j;
    }

    public void s(float f10, View view) {
        this.f12077j = ViewUtils.calculateRectFromBounds(this.f12058b);
        if (view != null) {
            this.f12078k = ViewUtils.calculateOffsetRectFromBounds(this.f12058b, view);
        }
        this.f12076i = f10;
    }

    public void t(androidx.activity.b bVar, View view) {
        super.d(bVar);
        s(bVar.c(), view);
    }

    public void u(float f10, boolean z10, float f11, float f12) {
        float fA = a(f10);
        float width = this.f12058b.getWidth();
        float height = this.f12058b.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float fA2 = x3.a.a(1.0f, 0.9f, fA);
        float fA3 = x3.a.a(0.0f, Math.max(0.0f, ((width - (0.9f * width)) / 2.0f) - this.f12074g), fA) * (z10 ? 1 : -1);
        float fMin = Math.min(Math.max(0.0f, ((height - (fA2 * height)) / 2.0f) - this.f12074g), this.f12075h);
        float f13 = f11 - this.f12076i;
        float fA4 = x3.a.a(0.0f, fMin, Math.abs(f13) / height) * Math.signum(f13);
        this.f12058b.setScaleX(fA2);
        this.f12058b.setScaleY(fA2);
        this.f12058b.setTranslationX(fA3);
        this.f12058b.setTranslationY(fA4);
        View view = this.f12058b;
        if (view instanceof ClippableRoundedCornerLayout) {
            ((ClippableRoundedCornerLayout) view).updateCornerRadius(x3.a.a(k(), f12, fA));
        }
    }

    public void v(androidx.activity.b bVar, View view, float f10) {
        if (super.e(bVar) == null) {
            return;
        }
        if (view != null && view.getVisibility() != 4) {
            view.setVisibility(4);
        }
        u(bVar.a(), bVar.b() == 0, bVar.c(), f10);
    }
}
