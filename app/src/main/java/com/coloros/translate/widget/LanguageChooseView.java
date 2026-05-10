package com.coloros.translate.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.coloros.translate.R;
import com.coloros.translate.utils.c0;
import com.support.appcompat.R$style;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class LanguageChooseView extends FrameLayout {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f7181j = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f7182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f7183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FrameLayout f7184c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f7185f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f7186h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f7187i;

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
        r.e(context, "context");
        this.f7187i = (int) getContext().getResources().getDimension(R.dimen.dp_40);
        f();
    }

    private final void f() {
        c0.f7098a.d("VoiceLanguageChooseView", "initView layout");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.choose_language_view, (ViewGroup) this, true);
        View viewFindViewById = viewInflate.findViewById(R.id.languageFrom);
        r.d(viewFindViewById, "findViewById(...)");
        this.f7182a = (TextView) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R.id.languageTo);
        r.d(viewFindViewById2, "findViewById(...)");
        this.f7183b = (TextView) viewFindViewById2;
        View viewFindViewById3 = viewInflate.findViewById(R.id.languageLt);
        r.d(viewFindViewById3, "findViewById(...)");
        this.f7184c = (FrameLayout) viewFindViewById3;
        View viewFindViewById4 = viewInflate.findViewById(R.id.switchButton);
        r.d(viewFindViewById4, "findViewById(...)");
        this.f7185f = (ImageView) viewFindViewById4;
    }

    private final boolean g() {
        if (System.currentTimeMillis() - this.f7186h <= 500) {
            return false;
        }
        this.f7186h = System.currentTimeMillis();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(LanguageChooseView this$0, w8.l callBack, View view) {
        r.e(this$0, "this$0");
        r.e(callBack, "$callBack");
        if (this$0.g()) {
            TextView textView = this$0.f7182a;
            if (textView == null) {
                r.r("mFromLanguage");
                textView = null;
            }
            callBack.invoke(textView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(LanguageChooseView this$0, w8.l callBack, View view) {
        r.e(this$0, "this$0");
        r.e(callBack, "$callBack");
        if (this$0.g()) {
            ImageView imageView = this$0.f7185f;
            if (imageView == null) {
                r.r("mSwitchButton");
                imageView = null;
            }
            callBack.invoke(imageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(LanguageChooseView this$0, w8.l callBack, View view) {
        r.e(this$0, "this$0");
        r.e(callBack, "$callBack");
        if (this$0.g()) {
            TextView textView = this$0.f7183b;
            if (textView == null) {
                r.r("mToLanguage");
                textView = null;
            }
            callBack.invoke(textView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(LanguageChooseView this$0) {
        r.e(this$0, "this$0");
        FrameLayout frameLayout = this$0.f7184c;
        TextView textView = null;
        if (frameLayout == null) {
            r.r("mLanguageLt");
            frameLayout = null;
        }
        int measuredWidth = frameLayout.getMeasuredWidth();
        if (measuredWidth > 0) {
            TextView textView2 = this$0.f7182a;
            if (textView2 == null) {
                r.r("mFromLanguage");
                textView2 = null;
            }
            TextPaint paint = textView2.getPaint();
            TextView textView3 = this$0.f7182a;
            if (textView3 == null) {
                r.r("mFromLanguage");
                textView3 = null;
            }
            int iMeasureText = ((int) paint.measureText(textView3.getText().toString())) + this$0.f7187i;
            TextView textView4 = this$0.f7183b;
            if (textView4 == null) {
                r.r("mToLanguage");
                textView4 = null;
            }
            TextPaint paint2 = textView4.getPaint();
            TextView textView5 = this$0.f7183b;
            if (textView5 == null) {
                r.r("mToLanguage");
                textView5 = null;
            }
            int iMeasureText2 = ((int) paint2.measureText(textView5.getText().toString())) + this$0.f7187i;
            if (iMeasureText >= measuredWidth || iMeasureText2 >= measuredWidth) {
                TextView textView6 = this$0.f7182a;
                if (textView6 == null) {
                    r.r("mFromLanguage");
                    textView6 = null;
                }
                textView6.setWidth(measuredWidth);
                TextView textView7 = this$0.f7183b;
                if (textView7 == null) {
                    r.r("mToLanguage");
                } else {
                    textView = textView7;
                }
                textView.setWidth(measuredWidth);
                return;
            }
            int iMax = Math.max(iMeasureText, iMeasureText2);
            TextView textView8 = this$0.f7182a;
            if (textView8 == null) {
                r.r("mFromLanguage");
                textView8 = null;
            }
            textView8.setWidth(iMax);
            TextView textView9 = this$0.f7183b;
            if (textView9 == null) {
                r.r("mToLanguage");
            } else {
                textView = textView9;
            }
            textView.setWidth(iMax);
        }
    }

    public final void e() {
        ImageView imageView = this.f7185f;
        TextView textView = null;
        if (imageView == null) {
            r.r("mSwitchButton");
            imageView = null;
        }
        imageView.setImageResource(R.drawable.si_single_arrow);
        TextView textView2 = this.f7182a;
        if (textView2 == null) {
            r.r("mFromLanguage");
            textView2 = null;
        }
        textView2.setForceDarkAllowed(false);
        TextView textView3 = this.f7182a;
        if (textView3 == null) {
            r.r("mFromLanguage");
            textView3 = null;
        }
        textView3.setBackgroundResource(R.drawable.si_language_bg);
        TextView textView4 = this.f7182a;
        if (textView4 == null) {
            r.r("mFromLanguage");
            textView4 = null;
        }
        textView4.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, R.drawable.ic_triangle_down_dark, 0);
        TextView textView5 = this.f7183b;
        if (textView5 == null) {
            r.r("mToLanguage");
            textView5 = null;
        }
        textView5.setForceDarkAllowed(false);
        TextView textView6 = this.f7183b;
        if (textView6 == null) {
            r.r("mToLanguage");
            textView6 = null;
        }
        textView6.setBackgroundResource(R.drawable.si_language_bg);
        TextView textView7 = this.f7183b;
        if (textView7 == null) {
            r.r("mToLanguage");
            textView7 = null;
        }
        textView7.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, R.drawable.ic_triangle_down_dark, 0);
        TextView textView8 = this.f7182a;
        if (textView8 == null) {
            r.r("mFromLanguage");
            textView8 = null;
        }
        textView8.setTextAppearance(R$style.couiTextButtonM);
        TextView textView9 = this.f7183b;
        if (textView9 == null) {
            r.r("mToLanguage");
            textView9 = null;
        }
        textView9.setTextAppearance(R$style.couiTextButtonM);
        TextView textView10 = this.f7183b;
        if (textView10 == null) {
            r.r("mToLanguage");
            textView10 = null;
        }
        textView10.setTextColor(Color.parseColor("#E6FFFFFF"));
        TextView textView11 = this.f7182a;
        if (textView11 == null) {
            r.r("mFromLanguage");
        } else {
            textView = textView11;
        }
        textView.setTextColor(Color.parseColor("#E6FFFFFF"));
    }

    public final void h() {
        TextView textView = this.f7182a;
        if (textView == null) {
            r.r("mFromLanguage");
            textView = null;
        }
        textView.setSelected(true);
        TextView textView2 = this.f7183b;
        if (textView2 == null) {
            r.r("mToLanguage");
            textView2 = null;
        }
        textView2.setSelected(false);
        TextView textView3 = this.f7182a;
        if (textView3 == null) {
            r.r("mFromLanguage");
            textView3 = null;
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_up), (Drawable) null);
        TextView textView4 = this.f7183b;
        if (textView4 == null) {
            r.r("mToLanguage");
            textView4 = null;
        }
        textView4.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_down), (Drawable) null);
    }

    public final void i() {
        TextView textView = this.f7182a;
        if (textView == null) {
            r.r("mFromLanguage");
            textView = null;
        }
        textView.setSelected(true);
        TextView textView2 = this.f7183b;
        if (textView2 == null) {
            r.r("mToLanguage");
            textView2 = null;
        }
        textView2.setSelected(false);
        TextView textView3 = this.f7182a;
        if (textView3 == null) {
            r.r("mFromLanguage");
            textView3 = null;
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_up), (Drawable) null);
        TextView textView4 = this.f7183b;
        if (textView4 == null) {
            r.r("mToLanguage");
            textView4 = null;
        }
        textView4.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_down_dark), (Drawable) null);
    }

    public final void j() {
        TextView textView = this.f7182a;
        if (textView == null) {
            r.r("mFromLanguage");
            textView = null;
        }
        textView.setSelected(false);
        TextView textView2 = this.f7182a;
        if (textView2 == null) {
            r.r("mFromLanguage");
            textView2 = null;
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_down_dark), (Drawable) null);
    }

    public final void k() {
        TextView textView = this.f7182a;
        if (textView == null) {
            r.r("mFromLanguage");
            textView = null;
        }
        textView.setSelected(false);
        TextView textView2 = this.f7182a;
        if (textView2 == null) {
            r.r("mFromLanguage");
            textView2 = null;
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_down), (Drawable) null);
    }

    public final void o() {
        TextView textView = this.f7182a;
        if (textView == null) {
            r.r("mFromLanguage");
            textView = null;
        }
        textView.setSelected(false);
        TextView textView2 = this.f7183b;
        if (textView2 == null) {
            r.r("mToLanguage");
            textView2 = null;
        }
        textView2.setSelected(true);
        TextView textView3 = this.f7182a;
        if (textView3 == null) {
            r.r("mFromLanguage");
            textView3 = null;
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_down), (Drawable) null);
        TextView textView4 = this.f7183b;
        if (textView4 == null) {
            r.r("mToLanguage");
            textView4 = null;
        }
        textView4.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_up), (Drawable) null);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        c0.f7098a.d("VoiceLanguageChooseView", "onAttachedToWindow:" + getParent());
        s();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c0.f7098a.d("VoiceLanguageChooseView", "onDetachedFromWindow");
    }

    public final void p() {
        TextView textView = this.f7182a;
        if (textView == null) {
            r.r("mFromLanguage");
            textView = null;
        }
        textView.setSelected(false);
        TextView textView2 = this.f7183b;
        if (textView2 == null) {
            r.r("mToLanguage");
            textView2 = null;
        }
        textView2.setSelected(true);
        TextView textView3 = this.f7182a;
        if (textView3 == null) {
            r.r("mFromLanguage");
            textView3 = null;
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_down_dark), (Drawable) null);
        TextView textView4 = this.f7183b;
        if (textView4 == null) {
            r.r("mToLanguage");
            textView4 = null;
        }
        textView4.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_up), (Drawable) null);
    }

    public final void q() {
        TextView textView = this.f7183b;
        if (textView == null) {
            r.r("mToLanguage");
            textView = null;
        }
        textView.setSelected(false);
        TextView textView2 = this.f7183b;
        if (textView2 == null) {
            r.r("mToLanguage");
            textView2 = null;
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_down_dark), (Drawable) null);
    }

    public final void r() {
        TextView textView = this.f7183b;
        if (textView == null) {
            r.r("mToLanguage");
            textView = null;
        }
        textView.setSelected(false);
        TextView textView2 = this.f7183b;
        if (textView2 == null) {
            r.r("mToLanguage");
            textView2 = null;
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getContext().getResources().getDrawable(R.drawable.ic_triangle_down), (Drawable) null);
    }

    public final void s() {
        FrameLayout frameLayout = this.f7184c;
        if (frameLayout == null) {
            r.r("mLanguageLt");
            frameLayout = null;
        }
        frameLayout.post(new Runnable() { // from class: com.coloros.translate.widget.o
            @Override // java.lang.Runnable
            public final void run() {
                LanguageChooseView.t(this.f7245a);
            }
        });
    }

    public final void setFromLanguage(String value) {
        r.e(value, "value");
        TextView textView = this.f7182a;
        if (textView == null) {
            r.r("mFromLanguage");
            textView = null;
        }
        textView.setText(value);
        s();
    }

    public final void setLanguageChangeIcon(int i10) {
        ImageView imageView = this.f7185f;
        if (imageView == null) {
            r.r("mSwitchButton");
            imageView = null;
        }
        imageView.setImageResource(i10);
    }

    public final void setOnFromLangeClickListener(final w8.l callBack) {
        r.e(callBack, "callBack");
        TextView textView = this.f7182a;
        if (textView == null) {
            r.r("mFromLanguage");
            textView = null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.widget.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LanguageChooseView.l(this.f7241a, callBack, view);
            }
        });
    }

    public final void setOnSwitchClickListener(final w8.l callBack) {
        r.e(callBack, "callBack");
        ImageView imageView = this.f7185f;
        if (imageView == null) {
            r.r("mSwitchButton");
            imageView = null;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.widget.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LanguageChooseView.m(this.f7239a, callBack, view);
            }
        });
    }

    public final void setOnToLangeClickListener(final w8.l callBack) {
        r.e(callBack, "callBack");
        TextView textView = this.f7183b;
        if (textView == null) {
            r.r("mToLanguage");
            textView = null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.widget.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LanguageChooseView.n(this.f7243a, callBack, view);
            }
        });
    }

    public final void setToLanguage(String value) {
        r.e(value, "value");
        TextView textView = this.f7183b;
        if (textView == null) {
            r.r("mToLanguage");
            textView = null;
        }
        textView.setText(value);
        s();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        c0.f7098a.d("VoiceLanguageChooseView", "setVisibility:" + i10);
        if (i10 == 0) {
            s();
        }
    }

    public final void setFromLanguage(int i10) {
        TextView textView = this.f7182a;
        if (textView == null) {
            r.r("mFromLanguage");
            textView = null;
        }
        textView.setText(getContext().getString(i10));
        s();
    }

    public final void setToLanguage(int i10) {
        TextView textView = this.f7183b;
        if (textView == null) {
            r.r("mToLanguage");
            textView = null;
        }
        textView.setText(getContext().getString(i10));
        s();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageChooseView(Context context, AttributeSet attrs) {
        super(context, attrs);
        r.e(context, "context");
        r.e(attrs, "attrs");
        this.f7187i = (int) getContext().getResources().getDimension(R.dimen.dp_40);
        f();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageChooseView(Context context, AttributeSet attrs, int i10) {
        super(context, attrs, i10);
        r.e(context, "context");
        r.e(attrs, "attrs");
        this.f7187i = (int) getContext().getResources().getDimension(R.dimen.dp_40);
        f();
    }
}
