package com.coloros.translate.screen.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.coloros.translate.screen.R$dimen;
import com.coloros.translate.screen.R$drawable;
import com.coloros.translate.screen.R$id;
import com.coloros.translate.screen.R$layout;
import com.coloros.translate.utils.j;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class LanguageChooseView extends FrameLayout {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f5752i = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f5753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f5754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FrameLayout f5755c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f5756f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f5757h;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageChooseView(Context context) {
        super(context);
        kotlin.jvm.internal.r.e(context, "context");
        this.f5757h = (int) getContext().getResources().getDimension(R$dimen.dp_40);
        e();
    }

    private final void e() {
        com.coloros.translate.utils.c0.f7098a.d("LanguageChooseView", "initView layout");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.translate_screen_choose_language_view, (ViewGroup) this, true);
        View viewFindViewById = viewInflate.findViewById(R$id.languageFrom);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f5753a = (TextView) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R$id.languageTo);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.f5754b = (TextView) viewFindViewById2;
        View viewFindViewById3 = viewInflate.findViewById(R$id.languageLt);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        this.f5755c = (FrameLayout) viewFindViewById3;
        View viewFindViewById4 = viewInflate.findViewById(R$id.switchButton);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        this.f5756f = (ImageView) viewFindViewById4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(w8.l callBack, LanguageChooseView this$0, View view) {
        kotlin.jvm.internal.r.e(callBack, "$callBack");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TextView textView = null;
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        TextView textView2 = this$0.f5753a;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("mFromLanguage");
        } else {
            textView = textView2;
        }
        callBack.invoke(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(w8.l callBack, LanguageChooseView this$0, View view) {
        kotlin.jvm.internal.r.e(callBack, "$callBack");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ImageView imageView = null;
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        ImageView imageView2 = this$0.f5756f;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mSwitchButton");
        } else {
            imageView = imageView2;
        }
        callBack.invoke(imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(w8.l callBack, LanguageChooseView this$0, View view) {
        kotlin.jvm.internal.r.e(callBack, "$callBack");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TextView textView = null;
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        TextView textView2 = this$0.f5754b;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("mToLanguage");
        } else {
            textView = textView2;
        }
        callBack.invoke(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(LanguageChooseView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.m();
    }

    private final void m() {
        FrameLayout frameLayout = this.f5755c;
        TextView textView = null;
        if (frameLayout == null) {
            kotlin.jvm.internal.r.r("mLanguageLt");
            frameLayout = null;
        }
        int measuredWidth = frameLayout.getMeasuredWidth();
        if (measuredWidth > 0) {
            TextView textView2 = this.f5753a;
            if (textView2 == null) {
                kotlin.jvm.internal.r.r("mFromLanguage");
                textView2 = null;
            }
            TextPaint paint = textView2.getPaint();
            TextView textView3 = this.f5753a;
            if (textView3 == null) {
                kotlin.jvm.internal.r.r("mFromLanguage");
                textView3 = null;
            }
            int iMeasureText = (int) paint.measureText(textView3.getText().toString());
            TextView textView4 = this.f5754b;
            if (textView4 == null) {
                kotlin.jvm.internal.r.r("mToLanguage");
                textView4 = null;
            }
            TextPaint paint2 = textView4.getPaint();
            TextView textView5 = this.f5754b;
            if (textView5 == null) {
                kotlin.jvm.internal.r.r("mToLanguage");
                textView5 = null;
            }
            int iMeasureText2 = (int) paint2.measureText(textView5.getText().toString());
            if (iMeasureText >= measuredWidth || iMeasureText2 >= measuredWidth) {
                TextView textView6 = this.f5753a;
                if (textView6 == null) {
                    kotlin.jvm.internal.r.r("mFromLanguage");
                    textView6 = null;
                }
                textView6.setWidth(measuredWidth);
                TextView textView7 = this.f5754b;
                if (textView7 == null) {
                    kotlin.jvm.internal.r.r("mToLanguage");
                } else {
                    textView = textView7;
                }
                textView.setWidth(measuredWidth);
                return;
            }
            int iMax = Math.max(iMeasureText, iMeasureText2) + this.f5757h;
            TextView textView8 = this.f5753a;
            if (textView8 == null) {
                kotlin.jvm.internal.r.r("mFromLanguage");
                textView8 = null;
            }
            textView8.setWidth(iMax);
            TextView textView9 = this.f5754b;
            if (textView9 == null) {
                kotlin.jvm.internal.r.r("mToLanguage");
            } else {
                textView = textView9;
            }
            textView.setWidth(iMax);
        }
    }

    public final void f() {
        TextView textView = this.f5753a;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mFromLanguage");
            textView = null;
        }
        textView.setSelected(true);
        TextView textView2 = this.f5754b;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("mToLanguage");
            textView2 = null;
        }
        textView2.setSelected(false);
        TextView textView3 = this.f5753a;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("mFromLanguage");
            textView3 = null;
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R$drawable.ic_triangle_up), (Drawable) null);
        TextView textView4 = this.f5754b;
        if (textView4 == null) {
            kotlin.jvm.internal.r.r("mToLanguage");
            textView4 = null;
        }
        textView4.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R$drawable.ic_triangle_down), (Drawable) null);
    }

    public final void j() {
        TextView textView = this.f5753a;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mFromLanguage");
            textView = null;
        }
        textView.setSelected(false);
        TextView textView2 = this.f5754b;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("mToLanguage");
            textView2 = null;
        }
        textView2.setSelected(true);
        TextView textView3 = this.f5753a;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("mFromLanguage");
            textView3 = null;
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R$drawable.ic_triangle_down), (Drawable) null);
        TextView textView4 = this.f5754b;
        if (textView4 == null) {
            kotlin.jvm.internal.r.r("mToLanguage");
            textView4 = null;
        }
        textView4.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R$drawable.ic_triangle_up), (Drawable) null);
    }

    public final void k(String fromValue, String toValue) {
        kotlin.jvm.internal.r.e(fromValue, "fromValue");
        kotlin.jvm.internal.r.e(toValue, "toValue");
        TextView textView = this.f5753a;
        TextView textView2 = null;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mFromLanguage");
            textView = null;
        }
        textView.setText(fromValue);
        TextView textView3 = this.f5754b;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("mToLanguage");
            textView3 = null;
        }
        textView3.setText(toValue);
        TextView textView4 = this.f5754b;
        if (textView4 == null) {
            kotlin.jvm.internal.r.r("mToLanguage");
        } else {
            textView2 = textView4;
        }
        textView2.post(new Runnable() { // from class: com.coloros.translate.screen.widget.g
            @Override // java.lang.Runnable
            public final void run() {
                LanguageChooseView.l(this.f6010a);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.coloros.translate.utils.c0.f7098a.d("LanguageChooseView", "onAttachedToWindow:" + getParent());
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.coloros.translate.utils.c0.f7098a.d("LanguageChooseView", "onDetachedFromWindow");
    }

    public final void setLanguageChangeIcon(int i10) {
        ImageView imageView = null;
        if (getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
            ImageView imageView2 = this.f5756f;
            if (imageView2 == null) {
                kotlin.jvm.internal.r.r("mSwitchButton");
                imageView2 = null;
            }
            imageView2.setRotation(180.0f);
        }
        ImageView imageView3 = this.f5756f;
        if (imageView3 == null) {
            kotlin.jvm.internal.r.r("mSwitchButton");
        } else {
            imageView = imageView3;
        }
        imageView.setImageResource(i10);
    }

    public final void setOnFromLangeClickListener(final w8.l callBack) {
        kotlin.jvm.internal.r.e(callBack, "callBack");
        TextView textView = this.f5753a;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mFromLanguage");
            textView = null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.screen.widget.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LanguageChooseView.g(callBack, this, view);
            }
        });
    }

    public final void setOnSwitchClickListener(final w8.l callBack) {
        kotlin.jvm.internal.r.e(callBack, "callBack");
        ImageView imageView = this.f5756f;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mSwitchButton");
            imageView = null;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.screen.widget.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LanguageChooseView.h(callBack, this, view);
            }
        });
    }

    public final void setOnToLangeClickListener(final w8.l callBack) {
        kotlin.jvm.internal.r.e(callBack, "callBack");
        TextView textView = this.f5754b;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mToLanguage");
            textView = null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.screen.widget.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LanguageChooseView.i(callBack, this, view);
            }
        });
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        com.coloros.translate.utils.c0.f7098a.d("LanguageChooseView", "setVisibility:" + i10);
        if (i10 == 0) {
            m();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageChooseView(Context context, AttributeSet attrs) {
        super(context, attrs);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(attrs, "attrs");
        this.f5757h = (int) getContext().getResources().getDimension(R$dimen.dp_40);
        e();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageChooseView(Context context, AttributeSet attrs, int i10) {
        super(context, attrs, i10);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(attrs, "attrs");
        this.f5757h = (int) getContext().getResources().getDimension(R$dimen.dp_40);
        e();
    }
}
