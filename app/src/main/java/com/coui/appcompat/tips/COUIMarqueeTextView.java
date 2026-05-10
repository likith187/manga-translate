package com.coui.appcompat.tips;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.hardware.display.DisplayManager;
import android.text.StaticLayout;
import android.util.AttributeSet;
import android.view.Display;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.coui.appcompat.animation.COUILinearInterpolator;
import com.coui.appcompat.log.COUILog;
import com.support.tips.R$dimen;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class COUIMarqueeTextView extends AppCompatTextView {
    public static final Companion Companion = new Companion(null);
    private static final float DEFAULT_DISPLAY_REFRESH = 60.0f;
    private static final long DEFAULT_SCROLL_DELAY_DURATION = 1000;
    private static final String TAG = "MarqueeView";
    private float fadingEdgeStrength;
    private boolean isActualMarqueeByMeasured;
    private boolean isAllCharactersLtR;
    private boolean isMarqueeEnable;
    private boolean mContinueScrollingEnable;
    private float mCurrentScrollLocation;
    private String mFinalDrawText;
    private String mIndividuallyAssembledText;
    private int mIndividuallyAssembledTextWidth;
    private int mInitStringWidth;
    private String mOriginText;
    private int mScrollRepeatCount;
    private ValueAnimator mScroller;
    private float mScrollerSpeed;
    private StartScrollRunnable mStartScrollRunnable;
    private final int mTextViewScrollDistance;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final class StartScrollRunnable implements Runnable {
        public StartScrollRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            COUIMarqueeTextView.this.continueRoll();
        }
    }

    public COUIMarqueeTextView(Context context) {
        this(context, null, 0, 6, null);
    }

    private final void checkAllCharactersDirections() {
        String str = this.mOriginText;
        StaticLayout staticLayoutBuild = StaticLayout.Builder.obtain(str, 0, str.length(), getPaint(), getWidth()).build();
        r.d(staticLayoutBuild, "if (Build.VERSION.SDK_IN… 1f, 0f, false)\n        }");
        this.isAllCharactersLtR = true;
        int length = this.mOriginText.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (staticLayoutBuild.isRtlCharAt(i10)) {
                this.isAllCharactersLtR = false;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void continueRoll$lambda$2$lambda$1(COUIMarqueeTextView this$0, ValueAnimator it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        this$0.mCurrentScrollLocation -= this$0.mScrollerSpeed;
        this$0.invalidate();
    }

    private final String generateTextDistance() {
        int iCeil = (int) Math.ceil(this.mTextViewScrollDistance / getPaint().measureText(" "));
        String str = this.mTextViewScrollDistance != 0 ? "" : " ";
        if (iCeil >= 0) {
            int i10 = 0;
            while (true) {
                str = str + ' ';
                if (i10 == iCeil) {
                    break;
                }
                i10++;
            }
        }
        return str;
    }

    private final float getMContentHeight() {
        return Math.abs(getPaint().getFontMetrics().bottom - getPaint().getFontMetrics().top) / 2;
    }

    private final void initSpeed() {
        Display display = ((DisplayManager) getContext().getSystemService(DisplayManager.class)).getDisplay(0);
        getResources().getDisplayMetrics();
        this.mScrollerSpeed = getResources().getDimensionPixelOffset(R$dimen.coui_top_tips_scroll_speed) / display.getRefreshRate();
        this.mStartScrollRunnable = new StartScrollRunnable();
    }

    private final void initTextViewAttributes() {
        setHorizontalFadingEdgeEnabled(true);
        setFadingEdgeLength(getResources().getDimensionPixelSize(R$dimen.coui_top_tips_fading_edge_size));
        this.mCurrentScrollLocation = getResources().getDimensionPixelOffset(R$dimen.coui_top_tips_scroll_text_start_location);
        getPaint().setColor(getCurrentTextColor());
    }

    private final void setActualMarqueeByMeasured(boolean z10) {
        setFadingEdgeStrength((z10 && this.isMarqueeEnable) ? 1.0f : 0.0f);
        this.isActualMarqueeByMeasured = z10;
    }

    private final void setContent() {
        this.mIndividuallyAssembledText = this.mOriginText;
        this.mIndividuallyAssembledText += generateTextDistance();
        int i10 = 0;
        this.mScrollRepeatCount = 0;
        this.mIndividuallyAssembledTextWidth = (int) getPaint().measureText(this.mIndividuallyAssembledText);
        int iCeil = (int) Math.ceil(((double) (getMeasuredWidth() / this.mIndividuallyAssembledTextWidth)) + 1.0d);
        this.mFinalDrawText = this.mIndividuallyAssembledText;
        if (iCeil >= 0) {
            while (true) {
                this.mFinalDrawText += this.mIndividuallyAssembledText;
                if (i10 == iCeil) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        this.mInitStringWidth = (int) getPaint().measureText(this.mFinalDrawText);
        checkAllCharactersDirections();
        super.setText(this.mFinalDrawText, TextView.BufferType.NORMAL);
    }

    private final void setFadingEdgeStrength(float f10) {
        this.fadingEdgeStrength = Math.signum(f10);
    }

    public final void continueRoll() {
        setMarqueeEnable(true);
        if (getPaint().measureText(getText().toString()) <= getMeasuredWidth() || this.mContinueScrollingEnable) {
            return;
        }
        ValueAnimator valueAnimator = this.mScroller;
        if (valueAnimator != null) {
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.mScroller = null;
        }
        this.mContinueScrollingEnable = true;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(Integer.MAX_VALUE);
        this.mScroller = valueAnimatorOfInt;
        if (valueAnimatorOfInt != null) {
            valueAnimatorOfInt.setDuration(2147483647L);
            valueAnimatorOfInt.setInterpolator(new COUILinearInterpolator());
            valueAnimatorOfInt.setRepeatCount(-1);
            valueAnimatorOfInt.setRepeatMode(1);
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.tips.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    COUIMarqueeTextView.continueRoll$lambda$2$lambda$1(this.f7395a, valueAnimator2);
                }
            });
            valueAnimatorOfInt.start();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected float getLeftFadingEdgeStrength() {
        return this.fadingEdgeStrength;
    }

    @Override // android.widget.TextView, android.view.View
    protected float getRightFadingEdgeStrength() {
        return this.fadingEdgeStrength;
    }

    public final boolean isMarqueeEnable() {
        return this.isMarqueeEnable;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.isMarqueeEnable) {
            stopRoll();
            removeCallbacks(this.mStartScrollRunnable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        r.e(canvas, "canvas");
        if (!this.isMarqueeEnable || !this.isActualMarqueeByMeasured) {
            COUILog.d(TAG, "onDraw: isMarqueeEnable=" + this.isMarqueeEnable + ", isActualMarqueeByMeasured=" + this.isActualMarqueeByMeasured);
            super.onDraw(canvas);
            return;
        }
        float f10 = this.mCurrentScrollLocation;
        if (f10 < 0.0f) {
            int iAbs = (int) Math.abs(f10 / this.mIndividuallyAssembledTextWidth);
            int i10 = this.mScrollRepeatCount;
            if (iAbs >= i10) {
                this.mScrollRepeatCount = i10 + 1;
                if (this.mCurrentScrollLocation <= (-this.mInitStringWidth)) {
                    String strSubstring = this.mFinalDrawText.substring(this.mIndividuallyAssembledText.length());
                    r.d(strSubstring, "this as java.lang.String).substring(startIndex)");
                    this.mFinalDrawText = strSubstring;
                    this.mCurrentScrollLocation += this.mIndividuallyAssembledTextWidth;
                    this.mScrollRepeatCount--;
                }
                String str = this.mFinalDrawText + this.mIndividuallyAssembledText;
                this.mFinalDrawText = str;
                super.setText(str, TextView.BufferType.NORMAL);
            }
        }
        if (getLayout() == null) {
            super.onDraw(canvas);
        }
        canvas.save();
        float f11 = this.mCurrentScrollLocation;
        if (!this.isAllCharactersLtR) {
            f11 = -f11;
        }
        canvas.translate(f11, 0.0f);
        getLayout().draw(canvas);
        canvas.restore();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (getPaint().measureText(getText().toString()) <= getMeasuredWidth()) {
            setActualMarqueeByMeasured(false);
            return;
        }
        setActualMarqueeByMeasured(true);
        if (this.isMarqueeEnable) {
            setContent();
        }
    }

    public final void setMarqueeEnable(boolean z10) {
        float f10;
        if (z10) {
            setSingleLine(true);
            setMaxLines(1);
            f10 = 1.0f;
        } else {
            setSingleLine(false);
            setMaxLines(Integer.MAX_VALUE);
            f10 = 0.0f;
        }
        setFadingEdgeStrength(f10);
        this.isMarqueeEnable = z10;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.mOriginText = String.valueOf(charSequence);
        super.setText(charSequence, bufferType);
    }

    @Override // android.widget.TextView
    public void setTextColor(int i10) {
        super.setTextColor(i10);
        getPaint().setColor(getCurrentTextColor());
    }

    public final void stopRoll() {
        this.mContinueScrollingEnable = false;
        this.mCurrentScrollLocation = getResources().getDimensionPixelOffset(R$dimen.coui_top_tips_scroll_text_start_location);
        ValueAnimator valueAnimator = this.mScroller;
        if (valueAnimator != null && valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mScroller = null;
    }

    public COUIMarqueeTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUIMarqueeTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.b(context);
        this.mOriginText = "";
        this.mFinalDrawText = "";
        this.mScrollerSpeed = getResources().getDimensionPixelOffset(R$dimen.coui_top_tips_scroll_speed);
        this.mCurrentScrollLocation = getResources().getDimensionPixelOffset(R$dimen.coui_top_tips_scroll_text_start_location);
        this.mIndividuallyAssembledText = "";
        this.mTextViewScrollDistance = getResources().getDimensionPixelOffset(R$dimen.coui_top_tips_scroll_text_interval);
        this.isAllCharactersLtR = true;
        initSpeed();
        initTextViewAttributes();
        if (this.isMarqueeEnable) {
            postDelayed(this.mStartScrollRunnable, 1000L);
        }
    }

    public /* synthetic */ COUIMarqueeTextView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
