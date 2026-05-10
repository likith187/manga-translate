package com.coloros.translate.ui.dialoguetranslation;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.R;
import com.coloros.translate.repository.local.Conversation;
import com.coloros.translate.utils.j;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class r0 extends RecyclerView.d0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f6344l = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f6345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c1 f6346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f6347c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Conversation f6348f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f6349h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LottieAnimationView f6350i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f6351j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.lifecycle.b0 f6352k;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LottieAnimationView f6353a;

        b(LottieAnimationView lottieAnimationView) {
            this.f6353a = lottieAnimationView;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6353a.setMinFrame(15);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r0(View view, c1 mViewMode, Context context) {
        super(view);
        kotlin.jvm.internal.r.e(view, "view");
        kotlin.jvm.internal.r.e(mViewMode, "mViewMode");
        kotlin.jvm.internal.r.e(context, "context");
        this.f6345a = view;
        this.f6346b = mViewMode;
        this.f6347c = context;
        View viewFindViewById = view.findViewById(R.id.content_layout);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f6349h = viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.ttsPlay);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.f6350i = (LottieAnimationView) viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.languageText);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        this.f6351j = (TextView) viewFindViewById3;
        this.f6352k = new androidx.lifecycle.b0() { // from class: com.coloros.translate.ui.dialoguetranslation.o0
            @Override // androidx.lifecycle.b0
            public final void b(Object obj) {
                r0.f(this.f6336a, (n8.q) obj);
            }
        };
        float dimension = view.getResources().getDimension(R.dimen.dp_10);
        com.coloros.translate.utils.w.c(this.f6350i, dimension, dimension, dimension, dimension);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(r0 this$0, n8.q it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        Conversation conversation = this$0.f6348f;
        if (conversation == null || ((Number) it.getFirst()).longValue() != conversation.getId()) {
            this$0.l();
        } else if (((Boolean) it.getSecond()).booleanValue()) {
            this$0.k();
        } else {
            this$0.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(r0 this$0, Conversation data, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(data, "$data");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        this$0.f6346b.i0(true);
        this$0.f6346b.n0(false, false);
        this$0.f6346b.b0(data);
    }

    private final void k() {
        if (this.f6350i.q()) {
            return;
        }
        LottieAnimationView lottieAnimationView = this.f6350i;
        lottieAnimationView.x();
        lottieAnimationView.setMinFrame(0);
        lottieAnimationView.setMaxFrame(69);
        lottieAnimationView.g(new b(lottieAnimationView));
        lottieAnimationView.v();
    }

    private final void l() {
        final LottieAnimationView lottieAnimationView = this.f6350i;
        lottieAnimationView.w();
        lottieAnimationView.setMaxFrame(84);
        lottieAnimationView.h(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.ui.dialoguetranslation.q0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                r0.m(lottieAnimationView, valueAnimator);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(LottieAnimationView this_apply, ValueAnimator animation) {
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        kotlin.jvm.internal.r.e(animation, "animation");
        if (animation.getAnimatedFraction() == 1.0f) {
            this_apply.setMinFrame(0);
            com.coloros.translate.utils.w.e(this_apply);
        }
    }

    public final View e() {
        return this.f6345a;
    }

    public final void g(final Conversation data, boolean z10, boolean z11, boolean z12) {
        kotlin.jvm.internal.r.e(data, "data");
        this.f6348f = data;
        if (data.isLeft()) {
            if (!z10) {
                Drawable background = this.f6349h.getBackground();
                kotlin.jvm.internal.r.c(background, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
                ((GradientDrawable) background).setColor(this.f6347c.getColor(R.color.from_item_bg));
                this.f6351j.setText(data.getToText());
                this.f6351j.setTextColor(this.f6347c.getColor(R.color.conversation_blue_text));
                if (data.getToText().length() == 0) {
                    this.f6349h.setVisibility(8);
                } else {
                    this.f6349h.setVisibility(0);
                }
            } else if (data.getFromText().length() > 0) {
                this.f6349h.setVisibility(0);
                this.f6351j.setText(data.getFromText());
                Drawable background2 = this.f6349h.getBackground();
                kotlin.jvm.internal.r.c(background2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
                ((GradientDrawable) background2).setColor(this.f6347c.getColor(R.color.from_item_bg));
                this.f6351j.setTextColor(this.f6347c.getColor(R.color.black_alpha_90));
            }
        } else if (z10) {
            Drawable background3 = this.f6349h.getBackground();
            kotlin.jvm.internal.r.c(background3, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
            ((GradientDrawable) background3).setColor(this.f6347c.getColor(R.color.to_item_bg));
            this.f6351j.setText(data.getToText());
            this.f6351j.setTextColor(this.f6347c.getColor(R.color.conversation_blue_text));
        } else if (data.getFromText().length() > 0) {
            this.f6349h.setVisibility(0);
            Drawable background4 = this.f6349h.getBackground();
            kotlin.jvm.internal.r.c(background4, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
            ((GradientDrawable) background4).setColor(this.f6347c.getColor(R.color.to_item_bg));
            this.f6351j.setText(data.getFromText());
            this.f6351j.setTextColor(this.f6347c.getColor(R.color.black_alpha_90));
        }
        this.f6351j.setMaxWidth(getItemViewType() == 0 ? (z11 && z12) ? this.f6347c.getResources().getDimensionPixelOffset(R.dimen.face_to_face_max_unfold_screen_left_text_width) : com.coloros.translate.utils.o0.e() ? z12 ? this.f6347c.getResources().getDimensionPixelOffset(R.dimen.face_to_face_max_tablet_screen_left_text_width_portrait) : this.f6347c.getResources().getDimensionPixelOffset(R.dimen.face_to_face_max_tablet_screen_left_text_width_landscape) : this.f6347c.getResources().getDimensionPixelOffset(R.dimen.face_to_face_max_left_text_width) : (z11 && z12) ? this.f6347c.getResources().getDimensionPixelOffset(R.dimen.face_to_face_max_unfold_screen_right_text_width) : com.coloros.translate.utils.o0.e() ? z12 ? this.f6347c.getResources().getDimensionPixelOffset(R.dimen.face_to_face_max_tablet_screen_right_text_width_portrait) : this.f6347c.getResources().getDimensionPixelOffset(R.dimen.face_to_face_max_tablet_screen_right_text_width_landscape) : this.f6347c.getResources().getDimensionPixelOffset(R.dimen.face_to_face_max_right_text_width));
        this.f6350i.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r0.h(this.f6339a, data, view);
            }
        });
    }

    public final void i() {
        androidx.lifecycle.a0 a0VarO = this.f6346b.O();
        Context context = this.f6345a.getContext();
        kotlin.jvm.internal.r.c(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        a0VarO.g((AppCompatActivity) context, this.f6352k);
    }

    public final void j() {
        this.f6346b.O().l(this.f6352k);
    }
}
