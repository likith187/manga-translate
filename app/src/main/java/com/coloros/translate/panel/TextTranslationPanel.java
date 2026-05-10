package com.coloros.translate.panel;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.base.R$dimen;
import com.coloros.translate.base.R$drawable;
import com.coloros.translate.base.R$id;
import com.coloros.translate.base.R$layout;
import com.coloros.translate.base.R$raw;
import com.coloros.translate.base.R$string;
import com.coloros.translate.panel.TextTranslationPanel;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.f0;
import com.coloros.translate.utils.j;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;
import com.coui.appcompat.panel.COUIBottomSheetBehavior;
import com.coui.appcompat.panel.COUIBottomSheetDialog;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.oplus.zoomwindow.OplusZoomWindowManager;
import com.support.panel.R$style;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import t2.b;

/* JADX INFO: loaded from: classes.dex */
public final class TextTranslationPanel implements f2.a {

    /* JADX INFO: renamed from: g0 */
    public static final a f5363g0 = new a(null);
    private View A;
    private LinearLayout B;
    private RelativeLayout C;
    private View D;
    private TextView E;
    private ImageView F;
    private View G;
    private TextView H;
    private int I;
    private String J;
    private String K;
    private String L;
    private int M;
    private Integer N;
    private String O;
    private String P;
    private boolean Q;
    private int R;
    private final int S;
    private int T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;

    /* JADX INFO: renamed from: a */
    private final Context f5364a;

    /* JADX INFO: renamed from: a0 */
    private boolean f5365a0;

    /* JADX INFO: renamed from: b */
    private COUIBottomSheetDialog f5366b;

    /* JADX INFO: renamed from: b0 */
    private boolean f5367b0;

    /* JADX INFO: renamed from: c */
    private f2.b f5368c;

    /* JADX INFO: renamed from: c0 */
    private ValueAnimator f5369c0;

    /* JADX INFO: renamed from: d */
    private View f5370d;

    /* JADX INFO: renamed from: d0 */
    private final int f5371d0;

    /* JADX INFO: renamed from: e */
    private COUIToolbar f5372e;

    /* JADX INFO: renamed from: e0 */
    private int f5373e0;

    /* JADX INFO: renamed from: f */
    private ScrollableTextView f5374f;

    /* JADX INFO: renamed from: f0 */
    private boolean f5375f0;

    /* JADX INFO: renamed from: g */
    private ScrollableTextView f5376g;

    /* JADX INFO: renamed from: h */
    private ScrollableTextView f5377h;

    /* JADX INFO: renamed from: i */
    private ScrollableTextView f5378i;

    /* JADX INFO: renamed from: j */
    private ImageView f5379j;

    /* JADX INFO: renamed from: k */
    private ImageView f5380k;

    /* JADX INFO: renamed from: l */
    private View f5381l;

    /* JADX INFO: renamed from: m */
    private View f5382m;

    /* JADX INFO: renamed from: n */
    private View f5383n;

    /* JADX INFO: renamed from: o */
    private ImageView f5384o;

    /* JADX INFO: renamed from: p */
    private ImageView f5385p;

    /* JADX INFO: renamed from: q */
    private ImageView f5386q;

    /* JADX INFO: renamed from: r */
    private ImageView f5387r;

    /* JADX INFO: renamed from: s */
    private LottieAnimationView f5388s;

    /* JADX INFO: renamed from: t */
    private LottieAnimationView f5389t;

    /* JADX INFO: renamed from: u */
    private LottieAnimationView f5390u;

    /* JADX INFO: renamed from: v */
    private TextView f5391v;

    /* JADX INFO: renamed from: w */
    private TextView f5392w;

    /* JADX INFO: renamed from: x */
    private TextView f5393x;

    /* JADX INFO: renamed from: y */
    private LinearLayout f5394y;

    /* JADX INFO: renamed from: z */
    private RelativeLayout f5395z;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ViewTreeObserver viewTreeObserver;
            RelativeLayout relativeLayout = TextTranslationPanel.this.f5395z;
            if (relativeLayout != null && (viewTreeObserver = relativeLayout.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            TextTranslationPanel.this.Q();
        }
    }

    public static final class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ViewTreeObserver viewTreeObserver;
            View view = TextTranslationPanel.this.f5370d;
            if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            TextTranslationPanel textTranslationPanel = TextTranslationPanel.this;
            textTranslationPanel.T = (int) textTranslationPanel.V().getResources().getDimension(R$dimen.common_dp_32);
            if (f0.d(TextTranslationPanel.this.V())) {
                int iA = f0.a(TextTranslationPanel.this.V());
                c0.f7098a.d("TextTranslationPanel", "getNavigationBarHeight," + iA);
                if (iA == 0) {
                    TextTranslationPanel.this.T += (int) TextTranslationPanel.this.V().getResources().getDimension(R$dimen.common_dp_8);
                } else if (TextTranslationPanel.this.f5367b0) {
                    TextTranslationPanel.this.T += (int) TextTranslationPanel.this.V().getResources().getDimension(R$dimen.common_dp_16);
                } else {
                    TextTranslationPanel.this.T -= (int) TextTranslationPanel.this.V().getResources().getDimension(R$dimen.common_dp_6);
                }
            }
            View view2 = TextTranslationPanel.this.f5370d;
            if (view2 != null) {
                view2.setPadding(view2.getPaddingStart(), view2.getPaddingTop(), view2.getPaddingEnd(), TextTranslationPanel.this.T);
            }
            TextTranslationPanel textTranslationPanel2 = TextTranslationPanel.this;
            textTranslationPanel2.G0(textTranslationPanel2.R, true);
        }
    }

    public static final class d implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ LottieAnimationView f5398a;

        d(LottieAnimationView lottieAnimationView) {
            this.f5398a = lottieAnimationView;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            r.e(animation, "animation");
            this.f5398a.setMinFrame(b5.a.CODE_SCANNER_CANCELLED);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            r.e(animation, "animation");
        }
    }

    public static final class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f5400b;

        e(int i10) {
            this.f5400b = i10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            ViewGroup.LayoutParams layoutParams;
            r.e(animation, "animation");
            COUIBottomSheetDialog cOUIBottomSheetDialog = TextTranslationPanel.this.f5366b;
            if (cOUIBottomSheetDialog != null) {
                cOUIBottomSheetDialog.setDraggable(true);
            }
            View view = TextTranslationPanel.this.f5381l;
            if (view != null && (layoutParams = view.getLayoutParams()) != null) {
                int i10 = this.f5400b;
                TextTranslationPanel textTranslationPanel = TextTranslationPanel.this;
                layoutParams.height = i10;
                View view2 = textTranslationPanel.f5381l;
                if (view2 != null) {
                    view2.setLayoutParams(layoutParams);
                }
                View view3 = textTranslationPanel.f5381l;
                if (view3 != null) {
                    view3.setAlpha(textTranslationPanel.U ? 1.0f : 0.0f);
                }
            }
            TextTranslationPanel.this.C0();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            r.e(animation, "animation");
        }
    }

    public static final class f implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ LottieAnimationView f5401a;

        f(LottieAnimationView lottieAnimationView) {
            this.f5401a = lottieAnimationView;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            r.e(animation, "animation");
            this.f5401a.setMinFrame(15);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            r.e(animation, "animation");
        }
    }

    public static final class g implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ LottieAnimationView f5402a;

        g(LottieAnimationView lottieAnimationView) {
            this.f5402a = lottieAnimationView;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            r.e(animation, "animation");
            this.f5402a.setMinFrame(15);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            r.e(animation, "animation");
        }
    }

    public static final class h implements ViewTreeObserver.OnGlobalLayoutListener {
        h() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ViewTreeObserver viewTreeObserver;
            RelativeLayout relativeLayout = TextTranslationPanel.this.f5395z;
            if (relativeLayout != null && (viewTreeObserver = relativeLayout.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            TextTranslationPanel.this.Q();
        }
    }

    public static final class i implements ViewTreeObserver.OnGlobalLayoutListener {
        i() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ViewTreeObserver viewTreeObserver;
            ScrollableTextView scrollableTextView = TextTranslationPanel.this.f5377h;
            if (scrollableTextView != null && (viewTreeObserver = scrollableTextView.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            TextTranslationPanel.this.D0();
        }
    }

    public TextTranslationPanel(Context context) {
        r.e(context, "context");
        this.f5364a = context;
        this.I = 4;
        this.J = "";
        this.K = "";
        this.L = "";
        this.O = "";
        this.P = "";
        this.Q = true;
        this.S = (int) context.getResources().getDimension(R$dimen.common_dp_80);
        this.U = true;
        this.V = true;
        this.W = true;
        this.f5371d0 = (int) context.getResources().getDimension(R$dimen.common_dp_64);
        this.f5375f0 = true;
    }

    public final void C0() {
        int dimension;
        int i10;
        int dimension2;
        ViewGroup.LayoutParams layoutParams;
        int iR = R();
        ScrollableTextView scrollableTextView = this.f5377h;
        int i11 = 0;
        if (scrollableTextView != null) {
            if (this.U) {
                i10 = iR / 2;
                dimension2 = this.f5371d0;
            } else {
                i10 = iR / 2;
                dimension2 = (int) this.f5364a.getResources().getDimension(R$dimen.common_dp_24);
            }
            int i12 = i10 - dimension2;
            ScrollableTextView scrollableTextView2 = this.f5377h;
            int i13 = (scrollableTextView2 == null || (layoutParams = scrollableTextView2.getLayoutParams()) == null) ? 0 : layoutParams.height;
            c0.f7098a.d("TextTranslationPanel", "[updateBottomLine] source h: " + i13 + ", halfMaxHeight: " + i12);
            dimension = (int) this.f5364a.getResources().getDimension(R$dimen.common_dp_12);
            if (i13 < i12) {
                scrollableTextView.e(false);
            } else {
                scrollableTextView.e(true);
            }
        } else {
            dimension = 0;
        }
        View view = this.f5382m;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            ConstraintLayout.b bVar = layoutParams2 instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams2 : null;
            if (bVar != null) {
                bVar.setMargins(dimension, ((ViewGroup.MarginLayoutParams) bVar).topMargin, dimension, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin);
            }
            view.setLayoutParams(bVar);
        }
        ScrollableTextView scrollableTextView3 = this.f5378i;
        if (scrollableTextView3 != null) {
            ScrollableTextView scrollableTextView4 = this.f5376g;
            int measuredHeight = (scrollableTextView4 != null ? scrollableTextView4.getMeasuredHeight() : 0) + scrollableTextView3.getPaddingTop();
            c0.f7098a.d("TextTranslationPanel", "[updateBottomLine] target h: " + measuredHeight + ", tv h: " + scrollableTextView3.getHeight());
            int dimension3 = (int) this.f5364a.getResources().getDimension(R$dimen.common_dp_12);
            if (measuredHeight < scrollableTextView3.getHeight()) {
                scrollableTextView3.e(false);
            } else {
                scrollableTextView3.e(true);
            }
            i11 = dimension3;
        }
        View view2 = this.f5383n;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams3 = view2.getLayoutParams();
            LinearLayout.LayoutParams layoutParams4 = layoutParams3 instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams3 : null;
            if (layoutParams4 != null) {
                layoutParams4.setMargins(i11, layoutParams4.topMargin, i11, layoutParams4.bottomMargin);
            }
            view2.setLayoutParams(layoutParams4);
        }
    }

    public final void D0() {
        boolean z10;
        ViewGroup.LayoutParams layoutParams;
        LinearLayout linearLayout = this.f5394y;
        if ((linearLayout != null ? linearLayout.getMeasuredWidth() : 0) == 0) {
            c0.f7098a.q("TextTranslationPanel", "updateFrameLayout:sourceLt measuredWidth is 0");
            return;
        }
        ScrollableTextView scrollableTextView = this.f5374f;
        int measuredHeight = scrollableTextView != null ? scrollableTextView.getMeasuredHeight() : 0;
        ScrollableTextView scrollableTextView2 = this.f5377h;
        r.b(scrollableTextView2);
        this.f5373e0 = measuredHeight + scrollableTextView2.getPaddingTop();
        ScrollableTextView scrollableTextView3 = this.f5374f;
        boolean z11 = true;
        boolean z12 = (scrollableTextView3 != null ? scrollableTextView3.getLineCount() : 1) > 1;
        boolean z13 = this.X;
        boolean z14 = (z13 || !z12) ? this.V : false;
        if (z12 && z13) {
            ImageView imageView = this.f5385p;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            z10 = true;
        } else {
            ImageView imageView2 = this.f5385p;
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
            z10 = false;
        }
        if (!z14 && !z10) {
            z11 = false;
        }
        this.U = z11;
        ScrollableTextView scrollableTextView4 = this.f5377h;
        int i10 = (scrollableTextView4 == null || (layoutParams = scrollableTextView4.getLayoutParams()) == null) ? 0 : layoutParams.height;
        int iS = S(false);
        if (this.X || !z12) {
            ImageView imageView3 = this.f5384o;
            if (imageView3 != null) {
                imageView3.setVisibility(8);
            }
            ScrollableTextView scrollableTextView5 = this.f5377h;
            if (scrollableTextView5 != null) {
                scrollableTextView5.setSingleLine(false);
            }
        } else {
            long j10 = Math.abs(i10 - iS) > this.f5371d0 ? 650L : 450L;
            ScrollableTextView scrollableTextView6 = this.f5377h;
            if (scrollableTextView6 != null) {
                scrollableTextView6.postDelayed(new Runnable() { // from class: f2.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        TextTranslationPanel.E0(this.f11833a);
                    }
                }, j10 / ((long) 2));
            }
        }
        c0.a aVar = c0.f7098a;
        ScrollableTextView scrollableTextView7 = this.f5377h;
        aVar.d("TextTranslationPanel", "updateFrameLayout:" + (scrollableTextView7 != null ? Boolean.valueOf(scrollableTextView7.isSingleLine()) : null));
        y0(i10, iS);
    }

    public static final void E0(TextTranslationPanel this$0) {
        r.e(this$0, "this$0");
        ImageView imageView = this$0.f5384o;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        ScrollableTextView scrollableTextView = this$0.f5377h;
        if (scrollableTextView == null) {
            return;
        }
        scrollableTextView.setSingleLine(true);
    }

    public final void G0(int i10, boolean z10) {
        ViewGroup.LayoutParams layoutParams;
        View view = this.f5370d;
        Integer numValueOf = (view == null || (layoutParams = view.getLayoutParams()) == null) ? null : Integer.valueOf(layoutParams.height);
        if (numValueOf != null && numValueOf.intValue() == i10) {
            c0.f7098a.q("TextTranslationPanel", "updatePanelInnerHeight: height has not change");
            return;
        }
        if (z10 || i10 >= this.R) {
            View view2 = this.f5370d;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                layoutParams2.height = i10;
                view2.setLayoutParams(layoutParams2);
            }
            S(true);
            if (z10) {
                C0();
            }
        }
    }

    static /* synthetic */ void H0(TextTranslationPanel textTranslationPanel, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        textTranslationPanel.G0(i10, z10);
    }

    public final void Q() {
        RelativeLayout relativeLayout = this.f5395z;
        int measuredWidth = relativeLayout != null ? relativeLayout.getMeasuredWidth() : 0;
        if (measuredWidth == 0) {
            c0.f7098a.q("TextTranslationPanel", "calculateLanguageLayout:frameWidth is 0");
            return;
        }
        TextView textView = this.H;
        r.b(textView);
        TextPaint paint = textView.getPaint();
        TextView textView2 = this.H;
        r.b(textView2);
        int iMeasureText = ((int) paint.measureText(textView2.getText().toString())) + ((int) this.f5364a.getResources().getDimension(R$dimen.common_dp_32));
        int dimension = measuredWidth / 2;
        if (this.f5364a.getResources().getDisplayMetrics().density > 3.0f) {
            float f10 = this.f5364a.getResources().getConfiguration().fontScale;
            dimension -= (int) this.f5364a.getResources().getDimension(R$dimen.common_dp_16);
            if (f10 > 1.35f) {
                dimension -= (int) this.f5364a.getResources().getDimension(R$dimen.common_dp_8);
            }
        }
        if (iMeasureText > dimension) {
            TextView textView3 = this.H;
            if (textView3 != null) {
                textView3.setMaxWidth(dimension);
            }
            iMeasureText = dimension;
        }
        int i10 = (measuredWidth - this.S) - iMeasureText;
        int i11 = i10 / 2;
        TextView textView4 = this.f5392w;
        r.b(textView4);
        TextPaint paint2 = textView4.getPaint();
        TextView textView5 = this.f5392w;
        r.b(textView5);
        int iMeasureText2 = (int) paint2.measureText(textView5.getText().toString());
        TextView textView6 = this.f5393x;
        r.b(textView6);
        TextPaint paint3 = textView6.getPaint();
        TextView textView7 = this.f5393x;
        r.b(textView7);
        int iMeasureText3 = (int) paint3.measureText(textView7.getText().toString());
        if (iMeasureText2 >= i11 && iMeasureText3 >= i11) {
            TextView textView8 = this.f5392w;
            r.b(textView8);
            textView8.setMaxWidth(i11);
            TextView textView9 = this.f5393x;
            r.b(textView9);
            textView9.setMaxWidth(i11);
            return;
        }
        if (iMeasureText2 >= i11) {
            TextView textView10 = this.f5392w;
            r.b(textView10);
            textView10.setMaxWidth(i10 - iMeasureText3);
            TextView textView11 = this.f5393x;
            r.b(textView11);
            textView11.setMaxWidth(iMeasureText3);
            return;
        }
        if (iMeasureText3 >= i11) {
            TextView textView12 = this.f5392w;
            r.b(textView12);
            textView12.setMaxWidth(iMeasureText2);
            TextView textView13 = this.f5393x;
            r.b(textView13);
            textView13.setMaxWidth(i10 - iMeasureText2);
            return;
        }
        TextView textView14 = this.f5392w;
        r.b(textView14);
        textView14.setMaxWidth(iMeasureText2);
        TextView textView15 = this.f5393x;
        r.b(textView15);
        textView15.setMaxWidth(iMeasureText3);
    }

    private final int R() {
        LinearLayout linearLayout = this.f5394y;
        int measuredHeight = linearLayout != null ? linearLayout.getMeasuredHeight() : 0;
        View view = this.f5370d;
        if (view == null || measuredHeight == 0) {
            return 0;
        }
        r.b(view);
        int i10 = view.getLayoutParams().height;
        COUIToolbar cOUIToolbar = this.f5372e;
        r.b(cOUIToolbar);
        int measuredHeight2 = cOUIToolbar.getMeasuredHeight();
        RelativeLayout relativeLayout = this.f5395z;
        r.b(relativeLayout);
        return (((i10 - measuredHeight2) - relativeLayout.getMeasuredHeight()) - this.T) - ((int) this.f5364a.getResources().getDimension(R$dimen.common_dp_34));
    }

    private final int S(boolean z10) {
        int i10;
        int dimension;
        int dimension2;
        int iR = R();
        int i11 = 0;
        if (iR == 0) {
            c0.f7098a.q("TextTranslationPanel", "calculateTextHeight:textFrameHeight is invalid");
            return 0;
        }
        ScrollableTextView scrollableTextView = this.f5377h;
        if (scrollableTextView != null) {
            if (this.U) {
                i10 = iR / 2;
                dimension = this.f5371d0;
            } else {
                i10 = iR / 2;
                dimension = (int) this.f5364a.getResources().getDimension(R$dimen.common_dp_24);
            }
            int i12 = i10 - dimension;
            if (!this.X) {
                dimension2 = (int) this.f5364a.getResources().getDimension(R$dimen.common_dp_48);
            } else if (this.f5365a0) {
                c0.f7098a.d("TextTranslationPanel", "calculateTextHeight:isSmallScreen");
                dimension2 = this.f5373e0;
            } else {
                dimension2 = Math.min(this.f5373e0, i12);
            }
            i11 = dimension2;
            if (z10) {
                ViewGroup.LayoutParams layoutParams = scrollableTextView.getLayoutParams();
                layoutParams.height = i11;
                scrollableTextView.setLayoutParams(layoutParams);
            }
        }
        return i11;
    }

    private final void T() {
        if (this.f5390u != null) {
            return;
        }
        LottieAnimationView lottieAnimationView = new LottieAnimationView(this.f5364a);
        lottieAnimationView.setContentDescription(lottieAnimationView.getResources().getString(R$string.generating));
        this.f5390u = lottieAnimationView;
        lottieAnimationView.setId(View.generateViewId());
        int dimension = (int) this.f5364a.getResources().getDimension(R$dimen.common_dp_32);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dimension, dimension);
        layoutParams.addRule(14);
        LottieAnimationView lottieAnimationView2 = this.f5390u;
        if (lottieAnimationView2 != null) {
            lottieAnimationView2.setAnimation(R$raw.ic_translation_panel_loading);
            lottieAnimationView2.setRepeatMode(1);
            lottieAnimationView2.setRepeatCount(-1);
        }
        RelativeLayout relativeLayout = this.C;
        if (relativeLayout != null) {
            relativeLayout.addView(this.f5390u, 0, layoutParams);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int[] W(android.content.Context r8) {
        /*
            Method dump skipped, instruction units count: 209
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.panel.TextTranslationPanel.W(android.content.Context):int[]");
    }

    private final StaticLayout Y(TextView textView) {
        TextPaint textPaint = new TextPaint(textView.getPaint());
        textPaint.setTextSize(textView.getTextSize());
        textPaint.setTypeface(textView.getTypeface());
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(textView.getText(), 0, textView.getText().length(), textPaint, textView.getWidth());
        r.d(builderObtain, "obtain(...)");
        builderObtain.setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier());
        StaticLayout staticLayoutBuild = builderObtain.build();
        r.d(staticLayoutBuild, "build(...)");
        return staticLayoutBuild;
    }

    public static final void b0(TextTranslationPanel this$0, w8.a onHidden) {
        ViewTreeObserver viewTreeObserver;
        r.e(this$0, "this$0");
        r.e(onHidden, "$onHidden");
        c0.f7098a.d("TextTranslationPanel", "hideLoadingView done");
        LinearLayout linearLayout = this$0.B;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        RelativeLayout relativeLayout = this$0.f5395z;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
        View view = this$0.A;
        if (view != null) {
            view.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this$0.C;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(8);
        }
        View view2 = this$0.D;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        RelativeLayout relativeLayout3 = this$0.f5395z;
        if (relativeLayout3 != null && (viewTreeObserver = relativeLayout3.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(this$0.new b());
        }
        LottieAnimationView lottieAnimationView = this$0.f5390u;
        if (lottieAnimationView != null) {
            lottieAnimationView.w();
            lottieAnimationView.j();
            lottieAnimationView.setFrame(0);
        }
        onHidden.mo8invoke();
        this$0.Z = false;
    }

    private final void c0(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int dimension;
        ImageView imageView;
        TextView textView;
        this.B = view != null ? (LinearLayout) view.findViewById(R$id.containerLt) : null;
        this.f5372e = view != null ? (COUIToolbar) view.findViewById(R$id.toolBar) : null;
        this.f5391v = view != null ? (TextView) view.findViewById(R$id.titleTv) : null;
        this.A = view != null ? view.findViewById(R$id.loadingContainerLt) : null;
        this.C = view != null ? (RelativeLayout) view.findViewById(R$id.loadingLt) : null;
        this.D = view != null ? view.findViewById(R$id.generatingErrorLt) : null;
        this.E = view != null ? (TextView) view.findViewById(R$id.generatingErrorTv) : null;
        this.F = view != null ? (ImageView) view.findViewById(R$id.generatingErrorIv) : null;
        this.G = view != null ? view.findViewById(R$id.retryBtn) : null;
        this.f5394y = view != null ? (LinearLayout) view.findViewById(R$id.sourceLt) : null;
        this.f5374f = view != null ? (ScrollableTextView) view.findViewById(R$id.sourceHolderTv) : null;
        this.f5376g = view != null ? (ScrollableTextView) view.findViewById(R$id.targetHolderTv) : null;
        this.f5377h = view != null ? (ScrollableTextView) view.findViewById(R$id.sourceTv) : null;
        this.f5378i = view != null ? (ScrollableTextView) view.findViewById(R$id.targetTv) : null;
        this.f5384o = view != null ? (ImageView) view.findViewById(R$id.expandIv) : null;
        this.f5385p = view != null ? (ImageView) view.findViewById(R$id.collapseIv) : null;
        this.f5386q = view != null ? (ImageView) view.findViewById(R$id.sourcePlayerIv) : null;
        this.f5387r = view != null ? (ImageView) view.findViewById(R$id.targetPlayerIv) : null;
        this.f5388s = view != null ? (LottieAnimationView) view.findViewById(R$id.sourcePlayerAnimationView) : null;
        this.f5389t = view != null ? (LottieAnimationView) view.findViewById(R$id.targetPlayerAnimationView) : null;
        this.f5381l = view != null ? view.findViewById(R$id.sourcePlayerLt) : null;
        this.f5382m = view != null ? view.findViewById(R$id.sourceLine) : null;
        this.f5383n = view != null ? view.findViewById(R$id.targetLine) : null;
        this.f5379j = view != null ? (ImageView) view.findViewById(R$id.switchButton) : null;
        this.f5380k = view != null ? (ImageView) view.findViewById(R$id.copyIv) : null;
        this.f5392w = view != null ? (TextView) view.findViewById(R$id.language_source) : null;
        this.f5393x = view != null ? (TextView) view.findViewById(R$id.language_target) : null;
        this.f5395z = view != null ? (RelativeLayout) view.findViewById(R$id.bottomLt) : null;
        this.H = view != null ? (TextView) view.findViewById(R$id.exportTv) : null;
        if (X()) {
            c0.f7098a.d("TextTranslationPanel", "initPanelView, showCloseText: " + this.f5375f0);
            viewFindViewById = view != null ? view.findViewById(R$id.closeIv) : null;
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            if (view != null && (textView = (TextView) view.findViewById(R$id.closeTv)) != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: f2.q
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        TextTranslationPanel.l0(this.f11850a, view2);
                    }
                });
            }
        } else {
            viewFindViewById = view != null ? (TextView) view.findViewById(R$id.closeTv) : null;
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            if (view != null && (viewFindViewById2 = view.findViewById(R$id.closeIv)) != null) {
                viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: f2.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        TextTranslationPanel.m0(this.f11834a, view2);
                    }
                });
            }
        }
        ImageView imageView2 = this.f5386q;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: f2.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.n0(this.f11835a, view2);
                }
            });
        }
        ImageView imageView3 = this.f5387r;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new View.OnClickListener() { // from class: f2.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.o0(this.f11836a, view2);
                }
            });
        }
        LottieAnimationView lottieAnimationView = this.f5388s;
        if (lottieAnimationView != null) {
            lottieAnimationView.setOnClickListener(new View.OnClickListener() { // from class: f2.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.p0(this.f11837a, view2);
                }
            });
        }
        LottieAnimationView lottieAnimationView2 = this.f5389t;
        if (lottieAnimationView2 != null) {
            lottieAnimationView2.setOnClickListener(new View.OnClickListener() { // from class: f2.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.q0(this.f11838a, view2);
                }
            });
        }
        TextView textView2 = this.H;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: f2.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.d0(this.f11839a, view2);
                }
            });
        }
        TextView textView3 = this.f5392w;
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: f2.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.e0(this.f11840a, view2);
                }
            });
        }
        TextView textView4 = this.f5393x;
        if (textView4 != null) {
            textView4.setOnClickListener(new View.OnClickListener() { // from class: f2.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.f0(this.f11841a, view2);
                }
            });
        }
        ImageView imageView4 = this.f5379j;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new View.OnClickListener() { // from class: f2.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.g0(this.f11842a, view2);
                }
            });
        }
        ImageView imageView5 = this.f5380k;
        if (imageView5 != null) {
            imageView5.setOnClickListener(new View.OnClickListener() { // from class: f2.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.h0(this.f11851a, view2);
                }
            });
        }
        ImageView imageView6 = this.f5384o;
        if (imageView6 != null) {
            imageView6.setOnClickListener(new View.OnClickListener() { // from class: f2.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.i0(this.f11852a, view2);
                }
            });
        }
        ImageView imageView7 = this.f5385p;
        if (imageView7 != null) {
            imageView7.setOnClickListener(new View.OnClickListener() { // from class: f2.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TextTranslationPanel.j0(this.f11853a, view2);
                }
            });
        }
        View view2 = this.G;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: f2.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    TextTranslationPanel.k0(this.f11854a, view3);
                }
            });
        }
        TextView textView5 = this.f5392w;
        if (textView5 != null) {
            textView5.setText(this.O);
        }
        TextView textView6 = this.f5393x;
        if (textView6 != null) {
            textView6.setText(this.P);
        }
        if (this.f5364a.getResources().getConfiguration().getLayoutDirection() == 1 && (imageView = this.f5379j) != null) {
            imageView.setRotation(180.0f);
        }
        if (this.Q) {
            ImageView imageView8 = this.f5379j;
            if (imageView8 != null) {
                imageView8.setImageResource(R$drawable.common_ic_swtich);
            }
        } else {
            ImageView imageView9 = this.f5379j;
            if (imageView9 != null) {
                imageView9.setImageResource(R$drawable.common_ic_switch_single);
            }
        }
        ScrollableTextView scrollableTextView = this.f5377h;
        if (scrollableTextView != null) {
            dimension = (((int) this.f5364a.getResources().getDimension(R$dimen.common_dp_48)) - Y(scrollableTextView).getHeight()) / 2;
            scrollableTextView.setPadding(scrollableTextView.getPaddingLeft(), dimension, scrollableTextView.getPaddingRight(), scrollableTextView.getPaddingBottom());
        } else {
            dimension = 0;
        }
        ScrollableTextView scrollableTextView2 = this.f5378i;
        if (scrollableTextView2 != null) {
            scrollableTextView2.setPadding(scrollableTextView2.getPaddingLeft(), dimension, scrollableTextView2.getPaddingRight(), scrollableTextView2.getPaddingBottom());
        }
        TextView textView7 = this.f5391v;
        if (textView7 != null) {
            textView7.setText(this.L);
        }
        ScrollableTextView scrollableTextView3 = this.f5377h;
        if (scrollableTextView3 != null) {
            scrollableTextView3.setText(this.J);
        }
        ScrollableTextView scrollableTextView4 = this.f5378i;
        if (scrollableTextView4 != null) {
            scrollableTextView4.setText(this.K);
        }
        View view3 = this.f5381l;
        if (view3 != null) {
            ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
            layoutParams.height = 0;
            view3.setLayoutParams(layoutParams);
        }
    }

    public static final void d0(TextTranslationPanel this$0, View view) {
        f2.b bVar;
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null) || (bVar = this$0.f5368c) == null) {
            return;
        }
        bVar.s();
    }

    public static final void e0(TextTranslationPanel this$0, View view) {
        f2.b bVar;
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null) || (bVar = this$0.f5368c) == null) {
            return;
        }
        bVar.m(true);
    }

    public static final void f0(TextTranslationPanel this$0, View view) {
        f2.b bVar;
        r.e(this$0, "this$0");
        c0.f7098a.d("TextTranslationPanel", "languageTargetTv OnClicked");
        if (j.a.c(j.f7127a, 0L, 1, null) || (bVar = this$0.f5368c) == null) {
            return;
        }
        bVar.m(false);
    }

    public static final void g0(TextTranslationPanel this$0, View view) {
        f2.b bVar;
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null) || (bVar = this$0.f5368c) == null) {
            return;
        }
        bVar.r();
    }

    public static final void h0(TextTranslationPanel this$0, View view) {
        f2.b bVar;
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null) || (bVar = this$0.f5368c) == null) {
            return;
        }
        bVar.k();
    }

    public static final void i0(TextTranslationPanel this$0, View view) {
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null)) {
            return;
        }
        c0.f7098a.d("TextTranslationPanel", "expandPanel");
        COUIBottomSheetDialog cOUIBottomSheetDialog = this$0.f5366b;
        BottomSheetBehavior<FrameLayout> behavior = cOUIBottomSheetDialog != null ? cOUIBottomSheetDialog.getBehavior() : null;
        COUIBottomSheetBehavior cOUIBottomSheetBehavior = behavior instanceof COUIBottomSheetBehavior ? (COUIBottomSheetBehavior) behavior : null;
        if (cOUIBottomSheetBehavior != null) {
            if (cOUIBottomSheetBehavior.getState() != 3) {
                this$0.Y = true;
                cOUIBottomSheetBehavior.setPanelState(3);
            } else {
                this$0.X = true;
                this$0.D0();
            }
        }
    }

    public static final void j0(TextTranslationPanel this$0, View view) {
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null)) {
            return;
        }
        c0.f7098a.d("TextTranslationPanel", "collapsePanel");
        this$0.X = false;
        this$0.D0();
    }

    public static final void k0(TextTranslationPanel this$0, View view) {
        f2.b bVar;
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null) || (bVar = this$0.f5368c) == null) {
            return;
        }
        bVar.y();
    }

    public static final void l0(TextTranslationPanel this$0, View view) {
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null)) {
            return;
        }
        c0.f7098a.d("TextTranslationPanel", "closeTv clicked!");
        f2.b bVar = this$0.f5368c;
        if (bVar != null) {
            bVar.z();
        }
    }

    public static final void m0(TextTranslationPanel this$0, View view) {
        f2.b bVar;
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null) || (bVar = this$0.f5368c) == null) {
            return;
        }
        bVar.z();
    }

    public static final void n0(TextTranslationPanel this$0, View view) {
        f2.b bVar;
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null) || (bVar = this$0.f5368c) == null) {
            return;
        }
        bVar.h();
    }

    public static final void o0(TextTranslationPanel this$0, View view) {
        r.e(this$0, "this$0");
        c0.a aVar = c0.f7098a;
        aVar.d("TextTranslationPanel", "targetPlayerIv OnClicked");
        if (j.a.c(j.f7127a, 0L, 1, null) || this$0.Z) {
            aVar.d("TextTranslationPanel", "targetPlayerIv DuplicateClicked or isHideLoadingView, can not play");
            return;
        }
        f2.b bVar = this$0.f5368c;
        if (bVar != null) {
            bVar.d();
        }
    }

    public static final void p0(TextTranslationPanel this$0, View view) {
        f2.b bVar;
        r.e(this$0, "this$0");
        if (j.a.c(j.f7127a, 0L, 1, null) || (bVar = this$0.f5368c) == null) {
            return;
        }
        bVar.h();
    }

    public static final void q0(TextTranslationPanel this$0, View view) {
        f2.b bVar;
        r.e(this$0, "this$0");
        c0.f7098a.d("TextTranslationPanel", "targetPlayerAnimationView OnClicked");
        if (j.a.c(j.f7127a, 0L, 1, null) || (bVar = this$0.f5368c) == null) {
            return;
        }
        bVar.d();
    }

    private final boolean s0(Context context) {
        return t2.a.f(context).l().e() != b.a.UNFOLD;
    }

    public static final void v0(TextTranslationPanel this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        f2.b bVar = this$0.f5368c;
        if (bVar != null) {
            bVar.n();
        }
    }

    public static final void x0(TextTranslationPanel this$0) {
        r.e(this$0, "this$0");
        this$0.T();
        LottieAnimationView lottieAnimationView = this$0.f5390u;
        if (lottieAnimationView != null) {
            lottieAnimationView.x();
            lottieAnimationView.setMinFrame(0);
            lottieAnimationView.setMaxFrame(344);
            lottieAnimationView.g(new d(lottieAnimationView));
            lottieAnimationView.v();
        }
    }

    private final void y0(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams;
        c0.f7098a.d("TextTranslationPanel", "showShrinkAnimation:" + i10 + "," + i11);
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f5366b;
        if (cOUIBottomSheetDialog != null) {
            cOUIBottomSheetDialog.setDraggable(false);
        }
        View view = this.f5381l;
        final int i12 = (view == null || (layoutParams = view.getLayoutParams()) == null) ? 0 : layoutParams.height;
        final int dimension = this.U ? (int) this.f5364a.getResources().getDimension(R$dimen.common_dp_64) : 0;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, i11);
        valueAnimatorOfInt.setDuration(Math.abs(i10 - i11) > this.f5371d0 ? 650L : 450L);
        valueAnimatorOfInt.setInterpolator(new COUIMoveEaseInterpolator());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: f2.n
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TextTranslationPanel.z0(this.f11845a, i12, dimension, valueAnimator);
            }
        });
        valueAnimatorOfInt.addListener(new e(dimension));
        this.f5369c0 = valueAnimatorOfInt;
        valueAnimatorOfInt.start();
    }

    public static final void z0(TextTranslationPanel this$0, int i10, int i11, ValueAnimator it) {
        View view;
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        r.e(this$0, "this$0");
        r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        r.c(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = ((Integer) animatedValue).intValue();
        ScrollableTextView scrollableTextView = this$0.f5377h;
        if (scrollableTextView != null && (layoutParams2 = scrollableTextView.getLayoutParams()) != null) {
            layoutParams2.height = iIntValue;
            ScrollableTextView scrollableTextView2 = this$0.f5377h;
            if (scrollableTextView2 != null) {
                scrollableTextView2.setLayoutParams(layoutParams2);
            }
        }
        if (i10 == i11 || (view = this$0.f5381l) == null || (layoutParams = view.getLayoutParams()) == null) {
            return;
        }
        layoutParams.height = (int) (i10 + (it.getAnimatedFraction() * (i11 - i10)));
        View view2 = this$0.f5381l;
        if (view2 != null) {
            view2.setLayoutParams(layoutParams);
        }
        View view3 = this$0.f5381l;
        if (view3 == null) {
            return;
        }
        view3.setAlpha(this$0.U ? it.getAnimatedFraction() : Math.max(1 - (it.getAnimatedFraction() * 1.2f), 0.0f));
    }

    public void A0(boolean z10) {
        c0.f7098a.d("TextTranslationPanel", "toggleSourcePlayer:" + z10);
        if (!z10) {
            ImageView imageView = this.f5386q;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            LottieAnimationView lottieAnimationView = this.f5388s;
            if (lottieAnimationView != null) {
                lottieAnimationView.setVisibility(8);
                lottieAnimationView.w();
                lottieAnimationView.j();
                lottieAnimationView.setFrame(0);
                return;
            }
            return;
        }
        ImageView imageView2 = this.f5386q;
        if (imageView2 != null) {
            imageView2.setVisibility(4);
        }
        LottieAnimationView lottieAnimationView2 = this.f5388s;
        if (lottieAnimationView2 != null) {
            lottieAnimationView2.setVisibility(0);
            lottieAnimationView2.x();
            lottieAnimationView2.setMinFrame(0);
            lottieAnimationView2.setMaxFrame(69);
            lottieAnimationView2.g(new f(lottieAnimationView2));
            lottieAnimationView2.v();
        }
    }

    public void B0(boolean z10) {
        c0.f7098a.d("TextTranslationPanel", "toggleTargetPlayer:" + z10);
        if (this.Z) {
            return;
        }
        if (!z10) {
            ImageView imageView = this.f5387r;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            LottieAnimationView lottieAnimationView = this.f5389t;
            if (lottieAnimationView != null) {
                lottieAnimationView.setVisibility(8);
                lottieAnimationView.w();
                lottieAnimationView.j();
                lottieAnimationView.setFrame(0);
                return;
            }
            return;
        }
        ImageView imageView2 = this.f5387r;
        if (imageView2 != null) {
            imageView2.setVisibility(4);
        }
        LottieAnimationView lottieAnimationView2 = this.f5389t;
        if (lottieAnimationView2 != null) {
            lottieAnimationView2.setVisibility(0);
            lottieAnimationView2.x();
            lottieAnimationView2.setMinFrame(0);
            lottieAnimationView2.setMaxFrame(69);
            lottieAnimationView2.g(new g(lottieAnimationView2));
            lottieAnimationView2.v();
        }
    }

    public void F0(String sourceLanguage, String targetLanguage, boolean z10) {
        ViewTreeObserver viewTreeObserver;
        r.e(sourceLanguage, "sourceLanguage");
        r.e(targetLanguage, "targetLanguage");
        c0.f7098a.d("TextTranslationPanel", "updateLanguage:" + sourceLanguage + "," + targetLanguage);
        this.O = sourceLanguage;
        this.P = targetLanguage;
        this.Q = z10;
        TextView textView = this.f5392w;
        if (textView != null) {
            textView.setText(sourceLanguage);
        }
        TextView textView2 = this.f5393x;
        if (textView2 != null) {
            textView2.setText(targetLanguage);
        }
        if (z10) {
            ImageView imageView = this.f5379j;
            if (imageView != null) {
                imageView.setImageResource(R$drawable.common_ic_swtich);
            }
        } else {
            ImageView imageView2 = this.f5379j;
            if (imageView2 != null) {
                imageView2.setImageResource(R$drawable.common_ic_switch_single);
            }
        }
        RelativeLayout relativeLayout = this.f5395z;
        if (relativeLayout == null || (viewTreeObserver = relativeLayout.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new h());
    }

    public void U() {
        c0.f7098a.d("TextTranslationPanel", "dismiss");
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f5366b;
        if (cOUIBottomSheetDialog != null) {
            cOUIBottomSheetDialog.dismiss();
        }
    }

    public final Context V() {
        return this.f5364a;
    }

    public final boolean X() {
        return this.f5375f0;
    }

    public void Z() {
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f5366b;
        if (cOUIBottomSheetDialog != null) {
            cOUIBottomSheetDialog.hide();
        }
    }

    @Override // f2.a
    public void a(String title, int i10, Integer num, boolean z10) {
        ViewTreeObserver viewTreeObserver;
        Window window;
        r.e(title, "title");
        c0.a aVar = c0.f7098a;
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f5366b;
        aVar.d("TextTranslationPanel", "show:" + num + "," + (cOUIBottomSheetDialog != null ? Boolean.valueOf(cOUIBottomSheetDialog.isShowing()) : null));
        COUIBottomSheetDialog cOUIBottomSheetDialog2 = this.f5366b;
        if (cOUIBottomSheetDialog2 == null || !cOUIBottomSheetDialog2.isShowing()) {
            this.L = title;
            this.M = i10;
            this.N = num;
            if (this.f5366b == null) {
                final COUIBottomSheetDialog cOUIBottomSheetDialog3 = new COUIBottomSheetDialog(new ContextThemeWrapper(this.f5364a, i10), R$style.DefaultBottomSheetDialog);
                if (num != null && (window = cOUIBottomSheetDialog3.getWindow()) != null) {
                    window.setType(num.intValue());
                }
                if (z10) {
                    Window window2 = cOUIBottomSheetDialog3.getWindow();
                    View decorView = window2 != null ? window2.getDecorView() : null;
                    if (decorView != null) {
                        decorView.setSystemUiVisibility(4);
                    }
                }
                Context context = cOUIBottomSheetDialog3.getContext();
                r.d(context, "getContext(...)");
                int[] iArrW = W(context);
                View viewInflate = LayoutInflater.from(cOUIBottomSheetDialog3.getContext()).inflate(this.f5365a0 ? R$layout.layout_text_translation_panel_small : R$layout.layout_text_translation_panel, (ViewGroup) null);
                this.f5370d = viewInflate;
                cOUIBottomSheetDialog3.setContentView(viewInflate);
                c0(cOUIBottomSheetDialog3.getContentView());
                cOUIBottomSheetDialog3.setIsShowInMaxHeight(true);
                cOUIBottomSheetDialog3.setCanPullUp(false);
                cOUIBottomSheetDialog3.showDragView();
                cOUIBottomSheetDialog3.setSkipCollapsed(false);
                int i11 = iArrW[1];
                this.R = i11;
                cOUIBottomSheetDialog3.setPeekHeight(i11);
                cOUIBottomSheetDialog3.setHeight(iArrW[0]);
                cOUIBottomSheetDialog3.setFirstShowCollapsed(!this.f5365a0);
                cOUIBottomSheetDialog3.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: f2.p
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        TextTranslationPanel.v0(this.f11849a, dialogInterface);
                    }
                });
                BottomSheetBehavior<FrameLayout> behavior = cOUIBottomSheetDialog3.getBehavior();
                COUIBottomSheetBehavior cOUIBottomSheetBehavior = behavior instanceof COUIBottomSheetBehavior ? (COUIBottomSheetBehavior) behavior : null;
                if (cOUIBottomSheetBehavior != null) {
                    cOUIBottomSheetBehavior.setPanelSkipCollapsed(true);
                    cOUIBottomSheetBehavior.setGestureInsetBottomIgnored(true);
                    cOUIBottomSheetBehavior.addBottomSheetCallback(new COUIBottomSheetBehavior.COUIBottomSheetCallback() { // from class: com.coloros.translate.panel.TextTranslationPanel$show$1$2$1
                        @Override // com.coui.appcompat.panel.COUIBottomSheetBehavior.COUIBottomSheetCallback
                        public void onSlide(View p02, float f10) {
                            r.e(p02, "p0");
                            if (this.f5405a.f5365a0) {
                                c0.f7098a.q("TextTranslationPanel", "isSmallScreen ignore onSlide");
                                return;
                            }
                            int dialogHeight = cOUIBottomSheetDialog3.getDialogHeight() - this.f5405a.R;
                            float f11 = dialogHeight;
                            float f12 = f10 * f11;
                            TextTranslationPanel.H0(this.f5405a, Math.min(this.f5405a.R + (f12 <= f11 ? Float.valueOf(f12) : Integer.valueOf(dialogHeight)).intValue(), cOUIBottomSheetDialog3.getDialogHeight()), false, 2, null);
                        }

                        @Override // com.coui.appcompat.panel.COUIBottomSheetBehavior.COUIBottomSheetCallback
                        public void onStateChanged(View p02, int i12) {
                            r.e(p02, "p0");
                            if (this.f5405a.I == i12 || i12 == 1) {
                                c0.f7098a.q("TextTranslationPanel", "onStateChanged:panelState has not change:" + this.f5405a.I + "," + i12);
                                return;
                            }
                            if (i12 == 3 || i12 == 4 || i12 == 6) {
                                this.f5405a.I = i12;
                                if (i12 != 3) {
                                    this.f5405a.X = false;
                                }
                                if (this.f5405a.Y) {
                                    this.f5405a.Y = false;
                                    this.f5405a.X = true;
                                }
                                this.f5405a.D0();
                            }
                        }
                    });
                }
                this.f5366b = cOUIBottomSheetDialog3;
            }
            OplusZoomWindowManager.getInstance().hideZoomWindow(12);
            COUIBottomSheetDialog cOUIBottomSheetDialog4 = this.f5366b;
            if (cOUIBottomSheetDialog4 != null) {
                cOUIBottomSheetDialog4.show();
            }
            if (this.f5365a0) {
                aVar.d("TextTranslationPanel", "isSmallLandscapeScreen,ignore updatePanelInnerHeight");
                return;
            }
            View view = this.f5370d;
            if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null) {
                return;
            }
            viewTreeObserver.addOnGlobalLayoutListener(new c());
        }
    }

    public void a0(final w8.a onHidden) {
        r.e(onHidden, "onHidden");
        c0.f7098a.d("TextTranslationPanel", "hideLoadingView delay");
        this.Z = true;
        LinearLayout linearLayout = this.B;
        if (linearLayout != null) {
            linearLayout.postDelayed(new Runnable() { // from class: f2.m
                @Override // java.lang.Runnable
                public final void run() {
                    TextTranslationPanel.b0(this.f11843a, onHidden);
                }
            }, 350L);
        }
    }

    @Override // f2.a
    public void b(String source, String target, boolean z10, boolean z11) {
        ViewTreeObserver viewTreeObserver;
        r.e(source, "source");
        r.e(target, "target");
        c0.f7098a.d("TextTranslationPanel", "updateTranslationText");
        this.J = source;
        this.K = target;
        ScrollableTextView scrollableTextView = this.f5374f;
        if (scrollableTextView != null) {
            scrollableTextView.setText(source);
        }
        ScrollableTextView scrollableTextView2 = this.f5376g;
        if (scrollableTextView2 != null) {
            scrollableTextView2.setText(target);
        }
        ScrollableTextView scrollableTextView3 = this.f5377h;
        if (scrollableTextView3 != null) {
            scrollableTextView3.setText(source);
        }
        ScrollableTextView scrollableTextView4 = this.f5378i;
        if (scrollableTextView4 != null) {
            scrollableTextView4.setText(target);
        }
        ScrollableTextView scrollableTextView5 = this.f5377h;
        if (scrollableTextView5 != null) {
            scrollableTextView5.d();
        }
        ScrollableTextView scrollableTextView6 = this.f5378i;
        if (scrollableTextView6 != null) {
            scrollableTextView6.d();
        }
        this.V = z10;
        this.W = z11;
        if (z10) {
            ImageView imageView = this.f5386q;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
        } else {
            ImageView imageView2 = this.f5386q;
            if (imageView2 != null) {
                imageView2.setVisibility(4);
            }
        }
        if (z11) {
            ImageView imageView3 = this.f5387r;
            if (imageView3 != null) {
                imageView3.setVisibility(0);
            }
        } else {
            ImageView imageView4 = this.f5387r;
            if (imageView4 != null) {
                imageView4.setVisibility(4);
            }
        }
        ScrollableTextView scrollableTextView7 = this.f5377h;
        if (scrollableTextView7 != null && (viewTreeObserver = scrollableTextView7.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new i());
        }
        ScrollableTextView scrollableTextView8 = this.f5377h;
        if (scrollableTextView8 != null) {
            scrollableTextView8.requestLayout();
        }
    }

    @Override // f2.a
    public void c(String str) {
        LinearLayout linearLayout = this.B;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        RelativeLayout relativeLayout = this.f5395z;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        View view = this.A;
        if (view != null) {
            view.setVisibility(0);
        }
        RelativeLayout relativeLayout2 = this.C;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(8);
        }
        View view2 = this.D;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        if (str == null) {
            TextView textView = this.E;
            if (textView != null) {
                textView.setText(this.f5364a.getResources().getString(R$string.generating_server_error));
            }
            ImageView imageView = this.F;
            if (imageView != null) {
                imageView.setContentDescription(this.f5364a.getResources().getString(R$string.generating_server_error));
            }
        } else {
            TextView textView2 = this.E;
            if (textView2 != null) {
                textView2.setText(str);
            }
            ImageView imageView2 = this.F;
            if (imageView2 != null) {
                imageView2.setContentDescription(str);
            }
        }
        LottieAnimationView lottieAnimationView = this.f5390u;
        if (lottieAnimationView != null) {
            lottieAnimationView.w();
            lottieAnimationView.j();
            lottieAnimationView.setFrame(0);
        }
    }

    public boolean r0() {
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f5366b;
        if (cOUIBottomSheetDialog != null) {
            return cOUIBottomSheetDialog.isShowing();
        }
        return false;
    }

    public void t0(f2.b bVar) {
        c0.f7098a.d("TextTranslationPanel", "setOnPanelCallback");
        this.f5368c = bVar;
    }

    public final void u0(boolean z10) {
        this.f5375f0 = z10;
    }

    public void w0() {
        c0.f7098a.d("TextTranslationPanel", "showLoadingView");
        LinearLayout linearLayout = this.B;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        RelativeLayout relativeLayout = this.f5395z;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        View view = this.A;
        if (view != null) {
            view.setVisibility(0);
        }
        RelativeLayout relativeLayout2 = this.C;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
        }
        View view2 = this.D;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.B;
        if (linearLayout2 != null) {
            linearLayout2.postDelayed(new Runnable() { // from class: f2.o
                @Override // java.lang.Runnable
                public final void run() {
                    TextTranslationPanel.x0(this.f11848a);
                }
            }, 350L);
        }
    }
}
