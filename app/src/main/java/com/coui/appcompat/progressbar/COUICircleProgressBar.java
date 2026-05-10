package com.coui.appcompat.progressbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.support.progressbar.R$attr;
import com.support.progressbar.R$dimen;
import com.support.progressbar.R$style;
import com.support.progressbar.R$styleable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class COUICircleProgressBar extends View {
    public static final int ACCURACY = 2;
    private static final int ALPHA_SHOW_DURATION = 360;
    private static final float BASE_PROGRESS_POINT_ALPHA = 0.215f;
    public static final int DEFAULT_TYPE = 0;
    public static final int LARGE_TYPE = 2;
    public static final int MEDIUM_TYPE = 1;
    private static final long ONE_CIRCLE_DEGREE = 360;
    public static final int ORIGINAL_ANGLE = -90;
    private static final int PROGRESS_POINT_COUNT = 360;
    private static final String TAG = "COUICircleProgressBar";
    private static final int TIMEOUT_SEND_ACCESSIBILITY_EVENT = 10;
    private AccessibilityEventSender mAccessibilityEventSender;
    private float mArcRadius;
    private RectF mArcRect;
    private Paint mBackGroundPaint;
    private float mCenterX;
    private float mCenterY;
    private Context mContext;
    private int mCurrentStepProgress;
    private int mHalfStrokeWidth;
    private int mHalfWidth;
    private int mHeight;
    private AccessibilityManager mManager;
    private int mMax;
    private ArrayList<ProgressPoint> mPointList;
    private int mPointRadius;
    private int mPreStepProgress;
    private int mProgress;
    private int mProgressBarBgCircleColor;
    private int mProgressBarColor;
    private int mProgressBarType;
    private Paint mProgressPaint;
    private float mStepDegree;
    private int mStrokeDefaultWidth;
    private int mStrokeLargeWidth;
    private int mStrokeMediumWidth;
    private int mStrokeWidth;
    private int mStyle;
    private int mWidth;

    private class AccessibilityEventSender implements Runnable {
        private AccessibilityEventSender() {
        }

        @Override // java.lang.Runnable
        public void run() {
            COUICircleProgressBar.this.sendAccessibilityEvent(4);
        }
    }

    private class ProgressPoint {
        float mCurrentAlpha;

        public ProgressPoint() {
        }

        public float getCurrentAlpha() {
            return this.mCurrentAlpha;
        }

        public void setCurrentAlpha(float f10) {
            this.mCurrentAlpha = f10;
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.coui.appcompat.progressbar.COUICircleProgressBar.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        int mProgress;

        public String toString() {
            return "COUICircleProgressBar.SavedState { " + Integer.toHexString(System.identityHashCode(this)) + " mProgress = " + this.mProgress + " }";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeValue(Integer.valueOf(this.mProgress));
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mProgress = ((Integer) parcel.readValue(null)).intValue();
        }
    }

    public COUICircleProgressBar(Context context) {
        this(context, null);
    }

    private void drawBackgroudCicle(Canvas canvas) {
        this.mBackGroundPaint.setStrokeWidth(this.mStrokeWidth);
        int i10 = this.mHalfWidth;
        canvas.drawCircle(i10, i10, this.mArcRadius, this.mBackGroundPaint);
    }

    private void init() {
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        for (int i10 = 0; i10 < 360; i10++) {
            this.mPointList.add(new ProgressPoint());
        }
        initBackgroundPaint();
        initProgressPaint();
        setProgress(this.mProgress);
        setMax(this.mMax);
        this.mManager = (AccessibilityManager) this.mContext.getSystemService("accessibility");
    }

    private void initBackgroundPaint() {
        Paint paint = new Paint(1);
        this.mBackGroundPaint = paint;
        paint.setColor(this.mProgressBarBgCircleColor);
        this.mBackGroundPaint.setStyle(Paint.Style.STROKE);
    }

    private void initProgressPaint() {
        Paint paint = new Paint(1);
        this.mProgressPaint = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mProgressPaint.setColor(this.mProgressBarColor);
        this.mProgressPaint.setStyle(Paint.Style.STROKE);
        this.mProgressPaint.setStrokeWidth(this.mStrokeWidth);
        this.mProgressPaint.setStrokeCap(Paint.Cap.ROUND);
    }

    private void scheduleAccessibilityEventSender() {
        AccessibilityEventSender accessibilityEventSender = this.mAccessibilityEventSender;
        if (accessibilityEventSender == null) {
            this.mAccessibilityEventSender = new AccessibilityEventSender();
        } else {
            removeCallbacks(accessibilityEventSender);
        }
        postDelayed(this.mAccessibilityEventSender, 10L);
    }

    private void verifyProgress() {
        int i10 = this.mMax;
        if (i10 > 0) {
            int i11 = (int) (this.mProgress / (i10 / 360.0f));
            this.mCurrentStepProgress = i11;
            if (360 - i11 < 2) {
                this.mCurrentStepProgress = 360;
            }
            this.mPreStepProgress = this.mCurrentStepProgress;
        } else {
            this.mPreStepProgress = 0;
            this.mCurrentStepProgress = 0;
        }
        invalidate();
    }

    public int getMax() {
        return this.mMax;
    }

    public int getProgress() {
        return this.mProgress;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        AccessibilityEventSender accessibilityEventSender = this.mAccessibilityEventSender;
        if (accessibilityEventSender != null) {
            removeCallbacks(accessibilityEventSender);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        drawBackgroudCicle(canvas);
        canvas.save();
        int i10 = this.mHalfWidth;
        canvas.rotate(-90.0f, i10, i10);
        canvas.drawArc(this.mArcRect, 0.0f, this.mCurrentStepProgress, false, this.mProgressPaint);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(this.mWidth, this.mHeight);
    }

    void onProgressRefresh() {
        AccessibilityManager accessibilityManager = this.mManager;
        if (accessibilityManager != null && accessibilityManager.isEnabled() && this.mManager.isTouchExplorationEnabled()) {
            scheduleAccessibilityEventSender();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setProgress(savedState.mProgress);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mProgress = this.mProgress;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.mHalfStrokeWidth = this.mStrokeWidth / 2;
        this.mHalfWidth = getWidth() / 2;
        this.mArcRadius = r3 - this.mHalfStrokeWidth;
        int i14 = this.mHalfWidth;
        float f10 = this.mArcRadius;
        this.mArcRect = new RectF(i14 - f10, i14 - f10, i14 + f10, i14 + f10);
    }

    public void refresh() {
        String resourceTypeName = getResources().getResourceTypeName(this.mStyle);
        TypedArray typedArrayObtainStyledAttributes = null;
        if ("attr".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R$styleable.COUICircleProgressBar, this.mStyle, 0);
        } else if ("style".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R$styleable.COUICircleProgressBar, 0, this.mStyle);
        }
        if (typedArrayObtainStyledAttributes != null) {
            this.mProgressBarColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUICircleProgressBar_couiCircleProgressBarColor, 0);
            this.mProgressBarBgCircleColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUICircleProgressBar_couiCircleProgressBarBgCircleColor, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setHeight(int i10) {
        this.mHeight = i10;
    }

    public void setMax(int i10) {
        if (i10 < 0) {
            i10 = 0;
        }
        if (i10 != this.mMax) {
            this.mMax = i10;
            if (this.mProgress > i10) {
                this.mProgress = i10;
            }
        }
        verifyProgress();
    }

    public void setProgress(int i10) {
        Log.i(TAG, "setProgress: " + i10);
        if (i10 < 0) {
            i10 = 0;
        }
        int i11 = this.mMax;
        if (i10 > i11) {
            i10 = i11;
        }
        if (i10 != this.mProgress) {
            this.mProgress = i10;
        }
        verifyProgress();
        onProgressRefresh();
    }

    public void setProgressBarBgCircleColor(int i10) {
        this.mProgressBarBgCircleColor = i10;
        initBackgroundPaint();
    }

    public void setProgressBarColor(int i10) {
        this.mProgressBarColor = i10;
        initProgressPaint();
    }

    public void setProgressBarType(int i10) {
        this.mProgressBarType = i10;
    }

    public void setWidth(int i10) {
        this.mWidth = i10;
    }

    public COUICircleProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiCircleProgressBarStyle);
    }

    public COUICircleProgressBar(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_COUI_COUICircleProgressBar);
    }

    public COUICircleProgressBar(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mWidth = 0;
        this.mHeight = 0;
        this.mProgressBarType = 0;
        this.mStrokeWidth = 0;
        this.mPointRadius = 0;
        this.mMax = 100;
        this.mProgress = 0;
        this.mCurrentStepProgress = 0;
        this.mPreStepProgress = -1;
        this.mStepDegree = 1.0f;
        this.mPointList = new ArrayList<>();
        COUIDarkModeUtil.setForceDarkAllow(this, false);
        this.mContext = context;
        if (attributeSet != null && attributeSet.getStyleAttribute() != 0) {
            this.mStyle = attributeSet.getStyleAttribute();
        } else {
            this.mStyle = i10;
        }
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUICircleProgressBar, i10, i11);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_loading_view_default_length);
        this.mWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUICircleProgressBar_couiCircleProgressBarWidth, dimensionPixelSize);
        this.mHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUICircleProgressBar_couiCircleProgressBarHeight, dimensionPixelSize);
        this.mProgressBarType = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUICircleProgressBar_couiCircleProgressBarType, 0);
        this.mProgressBarColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUICircleProgressBar_couiCircleProgressBarColor, 0);
        this.mProgressBarBgCircleColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUICircleProgressBar_couiCircleProgressBarBgCircleColor, 0);
        this.mProgress = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUICircleProgressBar_couiCircleProgress, this.mProgress);
        this.mMax = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUICircleProgressBar_couiCircleMax, this.mMax);
        typedArrayObtainStyledAttributes.recycle();
        this.mStrokeDefaultWidth = context.getResources().getDimensionPixelSize(R$dimen.coui_circle_loading_strokewidth);
        this.mStrokeMediumWidth = context.getResources().getDimensionPixelSize(R$dimen.coui_circle_loading_medium_strokewidth);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R$dimen.coui_circle_loading_large_strokewidth);
        this.mStrokeLargeWidth = dimensionPixelSize2;
        this.mStrokeWidth = this.mStrokeDefaultWidth;
        int i12 = this.mProgressBarType;
        if (1 == i12) {
            this.mStrokeWidth = this.mStrokeMediumWidth;
        } else if (2 == i12) {
            this.mStrokeWidth = dimensionPixelSize2;
        }
        this.mPointRadius = this.mStrokeWidth >> 1;
        this.mCenterX = this.mWidth >> 1;
        this.mCenterY = this.mHeight >> 1;
        init();
    }
}
