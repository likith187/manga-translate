package com.coui.appcompat.stepper;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.state.COUIMaskEffectDrawable;
import com.coui.appcompat.state.COUIStateEffectDrawable;
import com.coui.appcompat.state.COUIStrokeDrawable;
import com.support.stepper.R$attr;
import com.support.stepper.R$dimen;
import com.support.stepper.R$id;
import com.support.stepper.R$layout;
import com.support.stepper.R$style;
import com.support.stepper.R$styleable;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class COUIStepperView extends ConstraintLayout implements IStepper, Observer {
    private final String TAG;
    private Context mContext;
    private OnStepChangeListener mListener;
    private ImageView mMinusImage;
    private LongPressProxy mMinusLongPressProxy;
    private final Runnable mMinusRunnable;
    private ImageView mPlusImage;
    private LongPressProxy mPlusLongPressProxy;
    private final Runnable mPlusRunnable;
    private ObservableStep mStep;
    private int mStyle;
    private int mUnit;
    private TextView mValueText;

    public COUIStepperView(Context context) {
        this(context, null);
    }

    private void configEffectDrawableForButton() {
        configEffectDrawableForButton(this.mMinusImage, this.mMinusLongPressProxy);
        configEffectDrawableForButton(this.mPlusImage, this.mPlusLongPressProxy);
    }

    private int getNumForMaxWidth() {
        int i10 = 1;
        float f10 = 0.0f;
        for (int i11 = 0; i11 < 10; i11++) {
            float fMeasureText = this.mValueText.getPaint().measureText(String.valueOf(i11));
            if (fMeasureText > f10) {
                i10 = i11;
                f10 = fMeasureText;
            }
        }
        return i10;
    }

    private void initAttr(TypedArray typedArray) {
        try {
            int resourceId = typedArray.getResourceId(R$styleable.COUIStepperView_couiStepperTextStyle, 0);
            int resourceId2 = typedArray.getResourceId(R$styleable.COUIStepperView_couiStepperPlusImage, 0);
            int resourceId3 = typedArray.getResourceId(R$styleable.COUIStepperView_couiStepperMinusImage, 0);
            if (resourceId != 0) {
                this.mValueText.setTextAppearance(resourceId);
            }
            if (resourceId2 != 0) {
                this.mPlusImage.setImageDrawable(r.a.e(getContext(), resourceId2));
            }
            if (resourceId3 != 0) {
                this.mMinusImage.setImageDrawable(r.a.e(getContext(), resourceId3));
            }
            configEffectDrawableForButton();
        } catch (Resources.NotFoundException e10) {
            Log.e("COUIStepperView", e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$configEffectDrawableForButton$2(COUIStateEffectDrawable cOUIStateEffectDrawable, View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            cOUIStateEffectDrawable.setTouched(true);
        }
        if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
            cOUIStateEffectDrawable.setTouched(false);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE_SYNC, 0);
        plus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE_SYNC, 0);
        minus();
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public int getCurStep() {
        return this.mStep.getStep();
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public int getMaximum() {
        return this.mStep.getMaximum();
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public int getMinimum() {
        return this.mStep.getMinimum();
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public int getUnit() {
        return this.mUnit;
    }

    protected void init(AttributeSet attributeSet, int i10) {
        this.mStyle = R$style.COUIStepperViewDefStyle;
        LayoutInflater.from(getContext()).inflate(R$layout.coui_stepper_view, this);
        this.mPlusImage = (ImageView) findViewById(R$id.plus);
        this.mMinusImage = (ImageView) findViewById(R$id.minus);
        this.mValueText = (TextView) findViewById(R$id.indicator);
        this.mPlusLongPressProxy = new LongPressProxy(this.mPlusImage, this.mPlusRunnable);
        this.mMinusLongPressProxy = new LongPressProxy(this.mMinusImage, this.mMinusRunnable);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIStepperView, i10, R$style.COUIStepperViewDefStyle);
        int i11 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIStepperView_couiMaximum, ObservableStep.MAX_VALUE);
        int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIStepperView_couiMinimum, ObservableStep.MIN_VALUE);
        int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIStepperView_couiDefStep, 0);
        this.mUnit = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIStepperView_couiUnit, 1);
        initAttr(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        ObservableStep observableStep = new ObservableStep();
        this.mStep = observableStep;
        observableStep.addObserver(this);
        setMaximum(i11);
        setMinimum(i12);
        setCurStep(i13);
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public void minus() {
        ObservableStep observableStep = this.mStep;
        observableStep.setStep(observableStep.getStep() - getUnit());
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int numForMaxWidth = getNumForMaxWidth();
        String[] strArrSplit = String.valueOf(getMaximum()).split("");
        StringBuilder sb = new StringBuilder();
        for (int i12 = 0; i12 < strArrSplit.length; i12++) {
            sb.append(numForMaxWidth);
        }
        this.mValueText.setWidth(Math.round(this.mValueText.getPaint().measureText(sb.toString())));
        super.onMeasure(i10, i11);
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public void plus() {
        ObservableStep observableStep = this.mStep;
        observableStep.setStep(observableStep.getStep() + getUnit());
    }

    public void refresh() {
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R$styleable.COUIStepperView, 0, this.mStyle);
        if (typedArrayObtainStyledAttributes != null) {
            initAttr(typedArrayObtainStyledAttributes);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void release() {
        this.mPlusLongPressProxy.release();
        this.mMinusLongPressProxy.release();
        this.mStep.deleteObservers();
        this.mListener = null;
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public void setCurStep(int i10) {
        this.mStep.setStep(i10);
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public void setMaximum(int i10) {
        this.mStep.setMaximum(i10);
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public void setMinimum(int i10) {
        this.mStep.setMinimum(i10);
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public void setOnStepChangeListener(OnStepChangeListener onStepChangeListener) {
        this.mListener = onStepChangeListener;
    }

    @Override // com.coui.appcompat.stepper.IStepper
    public void setUnit(int i10) {
        this.mUnit = i10;
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        int step = ((ObservableStep) observable).getStep();
        int iIntValue = ((Integer) obj).intValue();
        boolean z10 = false;
        this.mPlusImage.setEnabled(step < getMaximum() && isEnabled());
        ImageView imageView = this.mMinusImage;
        if (step > getMinimum() && isEnabled()) {
            z10 = true;
        }
        imageView.setEnabled(z10);
        this.mValueText.setText(String.valueOf(step));
        OnStepChangeListener onStepChangeListener = this.mListener;
        if (onStepChangeListener != null) {
            onStepChangeListener.onStepChanged(step, iIntValue);
        }
    }

    public COUIStepperView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiStepperViewStyle);
    }

    public COUIStepperView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.TAG = "COUIStepperView";
        this.mPlusRunnable = new Runnable() { // from class: com.coui.appcompat.stepper.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f7391a.lambda$new$0();
            }
        };
        this.mMinusRunnable = new Runnable() { // from class: com.coui.appcompat.stepper.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f7392a.lambda$new$1();
            }
        };
        this.mContext = context;
        init(attributeSet, i10);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void configEffectDrawableForButton(ImageView imageView, LongPressProxy longPressProxy) {
        float dimension = getContext().getResources().getDimension(R$dimen.stepper_button_size);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        RectF rectF = new RectF(0.0f, 0.0f, dimension, dimension);
        shapeDrawable.getPaint().setColor(COUIContextUtil.getAttrColor(getContext(), com.support.appcompat.R$attr.couiColorPressBackground));
        int i10 = (int) dimension;
        shapeDrawable.setBounds(0, 0, i10, i10);
        COUIMaskEffectDrawable cOUIMaskEffectDrawable = new COUIMaskEffectDrawable(getContext(), 0);
        float f10 = dimension / 2.0f;
        cOUIMaskEffectDrawable.setMaskRect(rectF, f10, f10);
        COUIStrokeDrawable cOUIStrokeDrawable = new COUIStrokeDrawable(getContext());
        cOUIStrokeDrawable.setStrokeRect(rectF, f10, f10);
        final COUIStateEffectDrawable cOUIStateEffectDrawable = new COUIStateEffectDrawable(new Drawable[]{shapeDrawable, cOUIMaskEffectDrawable, cOUIStrokeDrawable});
        cOUIStateEffectDrawable.enableScaleEffect(imageView, 2);
        imageView.setBackground(cOUIStateEffectDrawable);
        longPressProxy.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.stepper.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return COUIStepperView.lambda$configEffectDrawableForButton$2(cOUIStateEffectDrawable, view, motionEvent);
            }
        });
    }
}
