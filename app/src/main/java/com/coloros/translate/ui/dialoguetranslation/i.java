package com.coloros.translate.ui.dialoguetranslation;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.base.R$raw;
import com.coloros.translate.repository.local.Conversation;
import com.coloros.translate.ui.dialoguetranslation.DialogTranslationActivity;
import com.coloros.translate.utils.f1;
import com.coloros.translate.utils.j;
import com.coui.appcompat.checkbox.COUICheckBox;
import com.coui.component.responsiveui.ResponsiveUIModel;
import com.coui.component.responsiveui.layoutgrid.MarginType;
import com.coui.component.responsiveui.window.LayoutGridWindowSize;
import com.coui.component.responsiveui.window.WindowWidthSizeClass;
import com.support.appcompat.R$color;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public class i extends RecyclerView.d0 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final a f6268u = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f6269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i0 f6270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f6271c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final COUICheckBox f6272f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final View f6273h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f6274i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Conversation f6275j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f6276k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f6277l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private LottieAnimationView f6278m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private TextView f6279n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f6280o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ImageView f6281p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f6282q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f6283r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f6284s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final androidx.lifecycle.b0 f6285t;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LottieAnimationView f6286a;

        b(LottieAnimationView lottieAnimationView) {
            this.f6286a = lottieAnimationView;
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
            this.f6286a.setMinFrame(15);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(View view, i0 mViewMode, Context context) {
        super(view);
        kotlin.jvm.internal.r.e(view, "view");
        kotlin.jvm.internal.r.e(mViewMode, "mViewMode");
        kotlin.jvm.internal.r.e(context, "context");
        this.f6269a = view;
        this.f6270b = mViewMode;
        this.f6271c = context;
        View viewFindViewById = view.findViewById(R.id.select);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f6272f = (COUICheckBox) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.contentView);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.f6273h = viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.reTranslationLL);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        this.f6274i = viewFindViewById3;
        View viewFindViewById4 = view.findViewById(R.id.fromLanguage);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        this.f6276k = (TextView) viewFindViewById4;
        View viewFindViewById5 = view.findViewById(R.id.toLanguage);
        kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
        this.f6277l = (TextView) viewFindViewById5;
        View viewFindViewById6 = view.findViewById(R.id.playTts);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
        this.f6278m = (LottieAnimationView) viewFindViewById6;
        View viewFindViewById7 = view.findViewById(R.id.fromLanguage);
        kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(...)");
        this.f6279n = (TextView) viewFindViewById7;
        View viewFindViewById8 = view.findViewById(R.id.toLanguage);
        kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(...)");
        this.f6280o = (TextView) viewFindViewById8;
        View viewFindViewById9 = view.findViewById(R.id.reTranslationImageView);
        kotlin.jvm.internal.r.d(viewFindViewById9, "findViewById(...)");
        this.f6281p = (ImageView) viewFindViewById9;
        this.f6283r = com.coloros.translate.utils.o0.e();
        this.f6284s = (int) TranslationApplication.f4754b.a().getResources().getDimension(R.dimen.dialog_item_layout_extra);
        this.f6285t = new androidx.lifecycle.b0() { // from class: com.coloros.translate.ui.dialoguetranslation.a
            @Override // androidx.lifecycle.b0
            public final void b(Object obj) {
                i.r(this.f6200a, (n8.q) obj);
            }
        };
        float dimension = view.getResources().getDimension(R.dimen.dp_10);
        com.coloros.translate.utils.w.c(this.f6278m, dimension, dimension, dimension, dimension);
    }

    private final void A() {
        HashMap mapG0 = this.f6270b.g0();
        String strValueOf = String.valueOf(getPosition());
        Object obj = this.f6270b.g0().get(String.valueOf(getPosition()));
        Boolean bool = Boolean.TRUE;
        mapG0.put(strValueOf, Boolean.valueOf(!kotlin.jvm.internal.r.a(obj, bool)));
        this.f6270b.J().k(Integer.valueOf(getPosition()));
        this.f6272f.setChecked(kotlin.jvm.internal.r.a(this.f6270b.g0().get(String.valueOf(getPosition())), bool));
    }

    private final void D() {
        if (this.f6278m.q()) {
            return;
        }
        LottieAnimationView lottieAnimationView = this.f6278m;
        lottieAnimationView.x();
        lottieAnimationView.setMinFrame(0);
        lottieAnimationView.setMaxFrame(69);
        lottieAnimationView.g(new b(lottieAnimationView));
        lottieAnimationView.v();
    }

    private final void E() {
        final LottieAnimationView lottieAnimationView = this.f6278m;
        lottieAnimationView.w();
        lottieAnimationView.setMaxFrame(84);
        if (this.f6282q != 2) {
            lottieAnimationView.h(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.ui.dialoguetranslation.b
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    i.F(lottieAnimationView, valueAnimator);
                }
            });
        } else {
            lottieAnimationView.setMinFrame(0);
            com.coloros.translate.utils.w.e(lottieAnimationView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(LottieAnimationView this_apply, ValueAnimator animation) {
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        kotlin.jvm.internal.r.e(animation, "animation");
        if (animation.getAnimatedFraction() == 1.0f) {
            this_apply.setMinFrame(0);
            com.coloros.translate.utils.w.e(this_apply);
        }
    }

    private final void j() {
        this.f6270b.D0(true);
        this.f6270b.R0();
        HashMap mapG0 = this.f6270b.g0();
        String strValueOf = String.valueOf(getPosition());
        Boolean bool = Boolean.TRUE;
        mapG0.put(strValueOf, bool);
        this.f6270b.V().k(bool);
        f1.a aVar = f1.f7117a;
        Context context = this.f6269a.getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        aVar.a(context, "event_longpress_for_edit", (60 & 4) != 0 ? null : null, (60 & 8) != 0 ? null : null, (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? null : null);
    }

    private final int k() {
        ResponsiveUIModel responsiveUIModelChooseMargin = new ResponsiveUIModel(this.f6271c, new LayoutGridWindowSize(k2.a.b(this.f6271c), 1)).chooseMargin(MarginType.MARGIN_LARGE);
        WindowWidthSizeClass windowWidthSizeClass = responsiveUIModelChooseMargin.windowSizeClass().getWindowWidthSizeClass();
        int i10 = kotlin.jvm.internal.r.a(windowWidthSizeClass, WindowWidthSizeClass.Medium) ? 7 : kotlin.jvm.internal.r.a(windowWidthSizeClass, WindowWidthSizeClass.Expanded) ? 6 : 0;
        return responsiveUIModelChooseMargin.columnWidth()[i10 / 2] * i10;
    }

    private final SpannableString o(String str) {
        SpannableString spannableString = new SpannableString(str + "  ");
        spannableString.setSpan(new ImageSpan(com.coloros.translate.utils.m.INSTANCE.a(), R.drawable.edit), str.length() + 1, spannableString.length(), 33);
        return spannableString;
    }

    private final void q(Context context) {
        Intent intent = new Intent(context, (Class<?>) EditTranslateTextActivity.class);
        DialogTranslationActivity.a aVar = DialogTranslationActivity.O0;
        Conversation conversationP = this.f6270b.P();
        aVar.b(String.valueOf(conversationP != null ? conversationP.getFromText() : null));
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            activity.startActivityForResult(intent, 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(i this$0, n8.q it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        if (((Number) it.getFirst()).longValue() < 0) {
            return;
        }
        Conversation conversation = this$0.f6275j;
        if (conversation == null || ((Number) it.getFirst()).longValue() != conversation.getId()) {
            this$0.E();
        } else if (((Boolean) it.getSecond()).booleanValue()) {
            this$0.D();
        } else {
            this$0.E();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(i this$0, Conversation data, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(data, "$data");
        this$0.f6270b.R0();
        i0.T0(this$0.f6270b, data, false, false, 6, null);
    }

    private final void u(final Conversation conversation, int i10) {
        this.f6278m.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                i.v(this.f6243a, conversation, view);
            }
        });
        if (i10 != 0 || kotlin.jvm.internal.r.a(conversation.getExpandField1(), "sample")) {
            this.f6273h.setOnLongClickListener(null);
            this.f6273h.setOnClickListener(null);
            this.f6279n.setOnLongClickListener(null);
            this.f6279n.setOnClickListener(null);
            return;
        }
        this.f6273h.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.e
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return i.w(this.f6248a, view);
            }
        });
        this.f6273h.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                i.x(this.f6250a, view);
            }
        });
        this.f6279n.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.g
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return i.y(this.f6253a, view);
            }
        });
        this.f6279n.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                i.z(this.f6256a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(i this$0, Conversation data, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(data, "$data");
        if (!kotlin.jvm.internal.r.a(this$0.f6270b.V().e(), Boolean.FALSE) || j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null) || !com.coloros.translate.repository.d.f5439a.b() || this$0.f6270b.Y()) {
            this$0.A();
            return;
        }
        this$0.f6270b.G0(true);
        this$0.f6270b.R0();
        this$0.f6270b.q0(data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean w(i this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Object objE = this$0.f6270b.V().e();
        Boolean bool = Boolean.TRUE;
        if (!kotlin.jvm.internal.r.a(objE, bool) && !kotlin.jvm.internal.r.a(this$0.f6270b.I().e(), bool)) {
            this$0.j();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(i this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (kotlin.jvm.internal.r.a(this$0.f6270b.V().e(), Boolean.TRUE)) {
            this$0.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean y(i this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Object objE = this$0.f6270b.V().e();
        Boolean bool = Boolean.TRUE;
        if (!kotlin.jvm.internal.r.a(objE, bool) && !kotlin.jvm.internal.r.a(this$0.f6270b.I().e(), bool)) {
            this$0.j();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(i this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f6275j == null) {
            return;
        }
        Object objE = this$0.f6270b.V().e();
        Boolean bool = Boolean.FALSE;
        if (!kotlin.jvm.internal.r.a(objE, bool)) {
            this$0.A();
            return;
        }
        n8.q qVar = (n8.q) this$0.f6270b.O().e();
        if (qVar != null && ((Boolean) qVar.getSecond()).booleanValue()) {
            this$0.f6270b.Q0();
            androidx.lifecycle.a0 a0VarO = this$0.f6270b.O();
            n8.q qVar2 = (n8.q) this$0.f6270b.O().e();
            a0VarO.k(new n8.q(Long.valueOf(qVar2 != null ? ((Number) qVar2.getFirst()).longValue() : -1L), bool));
        }
        this$0.f6270b.A0(this$0.f6275j);
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        this$0.q(context);
    }

    public final void B() {
        androidx.lifecycle.a0 a0VarO = this.f6270b.O();
        Context context = this.f6269a.getContext();
        kotlin.jvm.internal.r.c(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        a0VarO.g((AppCompatActivity) context, this.f6285t);
    }

    public final void C() {
        this.f6270b.O().l(this.f6285t);
    }

    public final COUICheckBox l() {
        return this.f6272f;
    }

    public final View m() {
        return this.f6273h;
    }

    public final View n() {
        return this.f6274i;
    }

    public final View p() {
        return this.f6269a;
    }

    public void s(final Conversation data, int i10, int i11, int i12) {
        int iC;
        int width;
        int iC2;
        int width2;
        kotlin.jvm.internal.r.e(data, "data");
        this.f6275j = data;
        this.f6282q = i10;
        if (!data.isShowEditIcon() || data.getFromText().length() <= 0 || kotlin.jvm.internal.r.a(data.getExpandField1(), "sample") || i10 != 0) {
            this.f6279n.setText(data.getFromText());
        } else {
            this.f6279n.setText(o(data.getFromText()));
        }
        if (data.getToText().length() == 0) {
            this.f6280o.setVisibility(8);
            this.f6278m.setVisibility(8);
        } else {
            this.f6280o.setVisibility(0);
            this.f6280o.setText(data.getToText());
            this.f6278m.setVisibility(0);
        }
        u(data, i10);
        if (data.isLeft()) {
            Drawable background = this.f6273h.getBackground();
            kotlin.jvm.internal.r.c(background, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
            ((GradientDrawable) background).setColor(this.f6271c.getColor(R.color.from_item_bg));
            this.f6276k.setTextColor(this.f6271c.getColor(R.color.black_alpha_90));
            this.f6277l.setTextColor(this.f6271c.getColor(R.color.conversation_blue_text));
            this.f6278m.setAnimation(R.raw.icon_play_blue);
            this.f6278m.setBackgroundResource(R.drawable.bg_play_blue);
        }
        if (data.getFromText().length() > 0 && data.getToText().length() == 0 && !data.isRecognizeing()) {
            this.f6274i.setVisibility(0);
            this.f6273h.setVisibility(8);
            this.f6281p.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.t(this.f6212a, data, view);
                }
            });
            return;
        }
        if (kotlin.jvm.internal.r.a(data.getExpandField1(), "sample") && data.isLeft() && i12 == 0) {
            Drawable background2 = this.f6273h.getBackground();
            kotlin.jvm.internal.r.c(background2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
            ((GradientDrawable) background2).setColor(this.f6271c.getColor(R$color.coui_color_container4));
            this.f6276k.setTextColor(this.f6271c.getColor(R$color.coui_color_label_secondary));
            this.f6277l.setTextColor(this.f6271c.getColor(R$color.coui_color_label_primary));
            this.f6278m.setAnimation(R$raw.icon_play_black);
            com.coloros.translate.utils.w.e(this.f6278m);
            this.f6278m.setBackgroundResource(R.drawable.bg_play_black);
            TextView textView = this.f6276k;
            TranslationApplication.a aVar = TranslationApplication.f4754b;
            textView.setMaxWidth((com.coloros.translate.utils.o0.c(aVar.a()) - this.f6284s) - this.f6272f.getWidth());
            this.f6277l.setMaxWidth((com.coloros.translate.utils.o0.c(aVar.a()) - this.f6284s) - this.f6272f.getWidth());
            return;
        }
        if (data.getFromText().length() > 0) {
            this.f6274i.setVisibility(8);
            this.f6273h.setVisibility(0);
            TextView textView2 = this.f6276k;
            if (this.f6283r) {
                iC = k() - this.f6284s;
                width = this.f6272f.getWidth();
            } else {
                iC = com.coloros.translate.utils.o0.c(TranslationApplication.f4754b.a()) - this.f6284s;
                width = this.f6272f.getWidth();
            }
            textView2.setMaxWidth(iC - width);
            TextView textView3 = this.f6277l;
            if (this.f6283r) {
                iC2 = k() - this.f6284s;
                width2 = this.f6272f.getWidth();
            } else {
                iC2 = com.coloros.translate.utils.o0.c(TranslationApplication.f4754b.a()) - this.f6284s;
                width2 = this.f6272f.getWidth();
            }
            textView3.setMaxWidth(iC2 - width2);
        }
    }
}
