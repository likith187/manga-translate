package com.coloros.translate.ui.simultaneous.widget;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.text.SpannableString;
import android.util.AttributeSet;
import com.coloros.translate.utils.c0;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.textview.COUITextView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class COUIAnimateTextView extends COUITextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ValueAnimator f6776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f6777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CharSequence f6778c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6779f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f6780h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f6781i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f6782j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f6783k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f6784l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f6785m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f6786n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f6787o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f6788p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f6789q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f6790r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f6791s;

    class a implements Animator.AnimatorListener {
        a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            COUIAnimateTextView.d(COUIAnimateTextView.this);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            COUIAnimateTextView.d(COUIAnimateTextView.this);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public interface b {
    }

    public COUIAnimateTextView(Context context) {
        this(context, null);
    }

    static /* bridge */ /* synthetic */ b d(COUIAnimateTextView cOUIAnimateTextView) {
        cOUIAnimateTextView.getClass();
        return null;
    }

    private void e() {
        this.f6786n = SystemClock.uptimeMillis() - this.f6787o;
        this.f6787o = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(ValueAnimator valueAnimator) {
        postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(int i10) {
        this.f6788p = i10;
        if (i10 == this.f6778c.length() - 1) {
            this.f6776a.cancel();
        }
    }

    private void j(int i10, int i11, boolean z10) {
        CharSequence charSequence = this.f6778c;
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        if (i10 > i11 || i10 > this.f6778c.length() - 1 || i11 > this.f6778c.length() - 1) {
            setText(this.f6778c);
            c0.o("COUIAnimateTextView", "showTextWithAnimation: return;");
            return;
        }
        if (z10) {
            this.f6790r = false;
            this.f6791s = false;
            this.f6789q = 0;
            this.f6788p = -1;
            this.f6787o = -1L;
        }
        if (z10 || this.f6786n == -1 || !this.f6790r || this.f6791s) {
            this.f6786n = SystemClock.uptimeMillis();
        } else if (this.f6787o != -1) {
            e();
        }
        k(i10, i11, z10);
    }

    private void k(int i10, int i11, boolean z10) {
        int i12 = i11;
        SpannableString spannableString = new SpannableString(this.f6778c);
        final int i13 = i10;
        while (i13 <= i12) {
            long j10 = this.f6783k * ((long) (i13 - i10));
            if (this.f6777b.containsKey(Integer.valueOf(i13))) {
                c cVar = (c) this.f6777b.get(Integer.valueOf(i13));
                if (cVar != null) {
                    cVar.g(getTextSize());
                    cVar.f(this.f6782j, j10, this.f6784l);
                }
            } else {
                this.f6777b.put(Integer.valueOf(i13), new c(new com.coloros.translate.ui.simultaneous.widget.b(this.f6782j, j10, getTextSize(), this.f6784l, this.f6779f, this.f6780h, this.f6781i), new Runnable() { // from class: com.coloros.translate.ui.simultaneous.widget.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6872a.h(i13);
                    }
                }));
            }
            c cVar2 = (c) this.f6777b.get(Integer.valueOf(i13));
            if (cVar2 != null) {
                cVar2.g(getTextSize());
                spannableString.setSpan(cVar2, i13, i13 + 1, 33);
                cVar2.e(this.f6785m, this.f6786n);
            }
            i13++;
            i12 = i11;
        }
        setText(spannableString);
        this.f6776a.setDuration((((long) (i11 - i10)) * this.f6783k) + this.f6782j);
        if (z10 || !this.f6776a.isRunning()) {
            this.f6776a.start();
        } else if (this.f6776a.isRunning() && this.f6776a.isPaused()) {
            this.f6776a.resume();
        }
    }

    public void f() {
        CharSequence charSequence = this.f6778c;
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        for (int i10 = 0; i10 < this.f6778c.length(); i10++) {
            c cVar = (c) this.f6777b.get(Integer.valueOf(i10));
            if (cVar != null) {
                cVar.a();
            }
        }
        this.f6777b.clear();
        this.f6776a.cancel();
        postInvalidate();
    }

    public CharSequence getAnimateCharSequence() {
        return this.f6778c;
    }

    public void i(CharSequence charSequence, int i10) {
        if (charSequence == null || charSequence.length() == 0) {
            this.f6778c = "";
            return;
        }
        this.f6790r = true;
        this.f6791s = true;
        this.f6789q = i10;
        this.f6778c = charSequence;
        j(i10, charSequence.length() - 1, true);
    }

    public void setAnimateText(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            this.f6778c = "";
            return;
        }
        this.f6790r = true;
        this.f6791s = true;
        CharSequence charSequence2 = this.f6778c;
        if (charSequence2 == null) {
            this.f6789q = 0;
        } else {
            this.f6789q = charSequence2.length();
        }
        this.f6778c = charSequence;
        j(this.f6789q, charSequence.length() - 1, true);
    }

    public void setAnimationListener(b bVar) {
    }

    public void setDelay(long j10) {
        this.f6783k = j10;
    }

    public void setDuration(long j10) {
        this.f6782j = j10;
    }

    public void setEndColor(int i10) {
        this.f6780h = i10;
    }

    public void setStableColor(int i10) {
        this.f6781i = i10;
    }

    public void setStartColor(int i10) {
        this.f6779f = i10;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextSize(int i10, float f10) {
        super.setTextSize(i10, f10);
        setText(this.f6778c);
        f();
    }

    public void setTranslationOffset(float f10) {
        this.f6784l = f10;
    }

    public void setType(int i10) {
        this.f6785m = i10;
    }

    public COUIAnimateTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public COUIAnimateTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f6776a = valueAnimatorOfFloat;
        this.f6777b = new HashMap();
        this.f6786n = -1L;
        this.f6787o = -1L;
        this.f6788p = -1;
        this.f6789q = 0;
        this.f6790r = false;
        this.f6791s = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.coloros.translate.R.styleable.COUIAnimateTextView, i10, 0);
        this.f6785m = typedArrayObtainStyledAttributes.getInteger(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextType, 7);
        this.f6779f = typedArrayObtainStyledAttributes.getColor(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextStartColor, COUIContextUtil.getColor(context, com.coloros.translate.R.color.coui_animate_text_start_color_default));
        this.f6780h = typedArrayObtainStyledAttributes.getColor(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextEndColor, COUIContextUtil.getColor(context, com.coloros.translate.R.color.coui_animate_text_end_color_default));
        this.f6781i = typedArrayObtainStyledAttributes.getColor(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextStableColor, getTextColors().getDefaultColor());
        this.f6782j = (long) typedArrayObtainStyledAttributes.getFloat(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextDuration, 500.0f);
        this.f6783k = (long) typedArrayObtainStyledAttributes.getFloat(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextDelay, 91.0f);
        typedArrayObtainStyledAttributes.recycle();
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.ui.simultaneous.widget.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f6871a.g(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new a());
        this.f6778c = getText();
    }
}
