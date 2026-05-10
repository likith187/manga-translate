package com.coloros.translate.widget;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.R;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.w0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class RippleAnimationView extends LinearLayout {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final b f7189m = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CircleView f7190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RippleView f7191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RippleView f7192c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RippleView f7193f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LottieAnimationView f7194h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ImageView f7195i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f7196j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private a f7197k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f7198l;

    public final class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int mPlayStatus = RippleAnimationView.this.getMPlayStatus();
            if (mPlayStatus == 1) {
                RippleView mFirstRipple = RippleAnimationView.this.getMFirstRipple();
                if (mFirstRipple != null) {
                    mFirstRipple.e();
                }
                RippleAnimationView.this.setMPlayStatus(2);
                RippleView mFirstRipple2 = RippleAnimationView.this.getMFirstRipple();
                if (mFirstRipple2 != null) {
                    mFirstRipple2.setVisibility(0);
                }
            } else if (mPlayStatus == 2) {
                RippleView mSecondRipple = RippleAnimationView.this.getMSecondRipple();
                if (mSecondRipple != null) {
                    mSecondRipple.e();
                }
                RippleAnimationView.this.setMPlayStatus(3);
                RippleView mSecondRipple2 = RippleAnimationView.this.getMSecondRipple();
                if (mSecondRipple2 != null) {
                    mSecondRipple2.setVisibility(0);
                }
            } else if (mPlayStatus == 3) {
                RippleView mThirdRipple = RippleAnimationView.this.getMThirdRipple();
                if (mThirdRipple != null) {
                    mThirdRipple.e();
                }
                RippleAnimationView.this.setMPlayStatus(1);
                RippleView mThirdRipple2 = RippleAnimationView.this.getMThirdRipple();
                if (mThirdRipple2 != null) {
                    mThirdRipple2.setVisibility(0);
                }
            }
            w0.INSTANCE.a().postDelayed(this, 750L);
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public interface c {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleAnimationView(Context context) {
        super(context);
        r.e(context, "context");
        this.f7197k = new a();
        a();
    }

    private final void a() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.ripple_animation_view, (ViewGroup) this, true);
        this.f7190a = (CircleView) viewInflate.findViewById(R.id.circle);
        this.f7191b = (RippleView) viewInflate.findViewById(R.id.first_ripple);
        this.f7192c = (RippleView) viewInflate.findViewById(R.id.second_ripple);
        this.f7193f = (RippleView) viewInflate.findViewById(R.id.third_ripple);
        this.f7194h = (LottieAnimationView) viewInflate.findViewById(R.id.animationView);
        this.f7195i = (ImageView) viewInflate.findViewById(R.id.micImage);
        LottieAnimationView lottieAnimationView = this.f7194h;
        if (lottieAnimationView != null) {
            lottieAnimationView.g(new d());
        }
    }

    public final a getMAnimationRunnable() {
        return this.f7197k;
    }

    public final LottieAnimationView getMAnimationView() {
        return this.f7194h;
    }

    public final CircleView getMCircleView() {
        return this.f7190a;
    }

    public final RippleView getMFirstRipple() {
        return this.f7191b;
    }

    public final boolean getMIsAnnimating() {
        return this.f7198l;
    }

    public final ImageView getMMicImage() {
        return this.f7195i;
    }

    public final c getMOnAnimationStatusChangeListener() {
        return null;
    }

    public final int getMPlayStatus() {
        return this.f7196j;
    }

    public final RippleView getMSecondRipple() {
        return this.f7192c;
    }

    public final RippleView getMThirdRipple() {
        return this.f7193f;
    }

    public final void setMAnimationRunnable(a aVar) {
        r.e(aVar, "<set-?>");
        this.f7197k = aVar;
    }

    public final void setMAnimationView(LottieAnimationView lottieAnimationView) {
        this.f7194h = lottieAnimationView;
    }

    public final void setMCircleView(CircleView circleView) {
        this.f7190a = circleView;
    }

    public final void setMFirstRipple(RippleView rippleView) {
        this.f7191b = rippleView;
    }

    public final void setMIsAnnimating(boolean z10) {
        this.f7198l = z10;
    }

    public final void setMMicImage(ImageView imageView) {
        this.f7195i = imageView;
    }

    public final void setMOnAnimationStatusChangeListener(c cVar) {
    }

    public final void setMPlayStatus(int i10) {
        this.f7196j = i10;
    }

    public final void setMSecondRipple(RippleView rippleView) {
        this.f7192c = rippleView;
    }

    public final void setMThirdRipple(RippleView rippleView) {
        this.f7193f = rippleView;
    }

    public static final class d implements Animator.AnimatorListener {
        d() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            r.e(animation, "animation");
            c0.f7098a.d("RippleAnimationView", "onAnimationCancel");
            RippleAnimationView.this.setMIsAnnimating(false);
            RippleAnimationView.this.getMOnAnimationStatusChangeListener();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation, boolean z10) {
            r.e(animation, "animation");
            super.onAnimationEnd(animation, z10);
            c0.f7098a.d("RippleAnimationView", "onAnimationEnd,isReverse:" + z10);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            r.e(animation, "animation");
            c0.f7098a.d("RippleAnimationView", "onAnimationRepeat");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation, boolean z10) {
            r.e(animation, "animation");
            super.onAnimationStart(animation, z10);
            c0.f7098a.d("RippleAnimationView", "onAnimationStart,isReverse:" + z10);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            r.e(animation, "animation");
            c0.f7098a.d("RippleAnimationView", "onAnimationEnd");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            r.e(animation, "animation");
            c0.f7098a.d("RippleAnimationView", "onAnimationStart");
            RippleAnimationView.this.setMIsAnnimating(true);
            RippleAnimationView.this.getMOnAnimationStatusChangeListener();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleAnimationView(Context context, AttributeSet attrs) {
        super(context, attrs);
        r.e(context, "context");
        r.e(attrs, "attrs");
        this.f7197k = new a();
        a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleAnimationView(Context context, AttributeSet attrs, int i10) {
        super(context, attrs, i10);
        r.e(context, "context");
        r.e(attrs, "attrs");
        this.f7197k = new a();
        a();
    }
}
