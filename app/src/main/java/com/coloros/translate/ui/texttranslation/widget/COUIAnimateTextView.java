package com.coloros.translate.ui.texttranslation.widget;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.text.SpannableString;
import android.util.AttributeSet;
import com.coloros.translate.ui.texttranslation.widget.COUIAnimateTextView;
import com.coloros.translate.utils.c0;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.textview.COUITextView;
import com.support.appcompat.R$color;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class COUIAnimateTextView extends COUITextView {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final b f7066v = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ValueAnimator f7067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f7068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CharSequence f7069c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7070f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f7072i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f7073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f7074k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f7075l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f7076m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f7077n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f7078o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7079p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f7080q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f7081r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f7082s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f7083t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f7084u;

    public static final class a implements Animator.AnimatorListener {
        a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            r.e(animation, "animation");
            COUIAnimateTextView.e(COUIAnimateTextView.this);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            r.e(animation, "animation");
            COUIAnimateTextView.e(COUIAnimateTextView.this);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            r.e(animation, "animation");
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIAnimateTextView(Context context) {
        this(context, null, 0, 6, null);
        r.e(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(COUIAnimateTextView this$0, ValueAnimator valueAnimator) {
        r.e(this$0, "this$0");
        this$0.postInvalidate();
    }

    public static final /* synthetic */ c e(COUIAnimateTextView cOUIAnimateTextView) {
        cOUIAnimateTextView.getClass();
        return null;
    }

    private final void f() {
        this.f7077n = SystemClock.uptimeMillis() - this.f7078o;
        this.f7078o = -1L;
    }

    private final void h(int i10, int i11, boolean z10) {
        CharSequence charSequence = this.f7069c;
        if (charSequence != null) {
            r.b(charSequence);
            if (charSequence.length() == 0) {
                return;
            }
            if (i10 <= i11) {
                r.b(this.f7069c);
                if (i10 <= r0.length() - 1) {
                    r.b(this.f7069c);
                    if (i11 <= r0.length() - 1) {
                        if (z10) {
                            this.f7081r = false;
                            this.f7082s = false;
                            this.f7080q = 0;
                            this.f7079p = -1;
                            this.f7078o = -1L;
                        }
                        if (z10 || this.f7077n == -1 || !this.f7081r || this.f7082s) {
                            this.f7077n = SystemClock.uptimeMillis();
                        } else if (this.f7078o != -1) {
                            f();
                        }
                        i(i10, i11, z10);
                        return;
                    }
                }
            }
            setText(this.f7069c);
            c0.f7098a.q("COUIAnimateTextView", "showTextWithAnimation return");
        }
    }

    private final void i(int i10, int i11, boolean z10) {
        int i12 = i10;
        SpannableString spannableString = new SpannableString(this.f7069c);
        if (i12 <= i11) {
            final int i13 = i12;
            while (true) {
                int i14 = this.f7074k * (i13 - i12);
                if (this.f7068b.containsKey(Integer.valueOf(i13))) {
                    p2.b bVar = (p2.b) this.f7068b.get(Integer.valueOf(i13));
                    if (bVar != null) {
                        bVar.f(this.f7073j, i14, this.f7075l);
                    }
                } else {
                    this.f7068b.put(Integer.valueOf(i13), new p2.b(new p2.a(this.f7073j, i14, getTextSize(), this.f7075l, this.f7070f, this.f7071h, this.f7072i), new Runnable() { // from class: p2.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            COUIAnimateTextView.j(this.f15190a, i13);
                        }
                    }));
                }
                int i15 = i13 + 1;
                spannableString.setSpan(this.f7068b.get(Integer.valueOf(i13)), i13, i15, 33);
                p2.b bVar2 = (p2.b) this.f7068b.get(Integer.valueOf(i13));
                if (bVar2 != null) {
                    bVar2.e(this.f7076m, this.f7077n);
                }
                if (i13 == i11) {
                    break;
                }
                i12 = i10;
                i13 = i15;
            }
        }
        setText(spannableString);
        this.f7067a.setDuration(((long) ((i11 - i10) * this.f7074k)) + ((long) this.f7073j));
        if (z10 || !this.f7067a.isRunning()) {
            this.f7067a.start();
        } else if (this.f7067a.isRunning() && this.f7067a.isPaused()) {
            this.f7067a.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(COUIAnimateTextView this$0, int i10) {
        r.e(this$0, "this$0");
        this$0.f7079p = i10;
        r.b(this$0.f7069c);
        if (i10 == r0.length() - 1) {
            this$0.f7067a.cancel();
        }
    }

    @Override // android.widget.TextView
    public boolean bringPointIntoView(int i10) {
        return super.bringPointIntoView(i10);
    }

    public final void g() {
        CharSequence charSequence = this.f7069c;
        if (charSequence != null) {
            r.b(charSequence);
            if (charSequence.length() == 0) {
                return;
            }
            CharSequence charSequence2 = this.f7069c;
            r.b(charSequence2);
            int length = charSequence2.length();
            for (int i10 = 0; i10 < length; i10++) {
                p2.b bVar = (p2.b) this.f7068b.get(Integer.valueOf(i10));
                if (bVar != null) {
                    bVar.a();
                }
            }
            this.f7068b.clear();
            this.f7067a.cancel();
            postInvalidate();
        }
    }

    public final void setAnimateText(CharSequence charSequence) {
        int length;
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        this.f7081r = true;
        this.f7082s = true;
        CharSequence charSequence2 = this.f7069c;
        if (charSequence2 == null) {
            length = 0;
        } else {
            r.b(charSequence2);
            length = charSequence2.length();
        }
        this.f7080q = length;
        this.f7069c = charSequence;
        r.b(charSequence);
        h(length, charSequence.length() - 1, true);
    }

    public final void setAnimationListener(c cVar) {
    }

    public final void setDelay(int i10) {
        this.f7074k = i10;
    }

    public final void setDuration(int i10) {
        this.f7073j = i10;
    }

    public final void setEndColor(int i10) {
        this.f7071h = i10;
    }

    public final void setStableColor(int i10) {
        this.f7072i = i10;
    }

    public final void setStartColor(int i10) {
        this.f7070f = i10;
    }

    public final void setTranslationOffset(float f10) {
        this.f7075l = f10;
    }

    public final void setType(int i10) {
        this.f7076m = i10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIAnimateTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        r.e(context, "context");
    }

    @Override // android.widget.TextView
    public boolean bringPointIntoView(int i10, boolean z10) {
        if (!hasSelection()) {
            this.f7083t = -1;
            this.f7084u = -1;
            return super.bringPointIntoView(i10, z10);
        }
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        if (selectionStart == this.f7083t && selectionEnd == this.f7084u) {
            return false;
        }
        this.f7083t = selectionStart;
        this.f7084u = selectionEnd;
        return super.bringPointIntoView(i10, z10);
    }

    public /* synthetic */ COUIAnimateTextView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? R.attr.textViewStyle : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUIAnimateTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.e(context, "context");
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        r.d(valueAnimatorOfFloat, "ofFloat(...)");
        this.f7067a = valueAnimatorOfFloat;
        this.f7068b = new HashMap();
        this.f7077n = -1L;
        this.f7078o = -1L;
        this.f7079p = -1;
        this.f7083t = -1;
        this.f7084u = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.coloros.translate.R.styleable.COUIAnimateTextView, i10, 0);
        r.d(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f7076m = typedArrayObtainStyledAttributes.getInteger(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextType, 7);
        this.f7070f = typedArrayObtainStyledAttributes.getColor(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextStartColor, COUIContextUtil.getColor(context, R$color.coui_transparence));
        this.f7071h = typedArrayObtainStyledAttributes.getColor(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextEndColor, COUIContextUtil.getColor(context, R$color.Blue50Opacity40));
        this.f7072i = typedArrayObtainStyledAttributes.getColor(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextStableColor, getTextColors().getDefaultColor());
        this.f7073j = typedArrayObtainStyledAttributes.getInteger(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextDuration, 500);
        this.f7074k = typedArrayObtainStyledAttributes.getInteger(com.coloros.translate.R.styleable.COUIAnimateTextView_couiAnimateTextDelay, 100);
        typedArrayObtainStyledAttributes.recycle();
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: p2.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUIAnimateTextView.d(this.f15189a, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new a());
    }
}
