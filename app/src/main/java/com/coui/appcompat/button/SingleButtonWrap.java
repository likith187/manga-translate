package com.coui.appcompat.button;

import android.content.Context;
import android.content.res.Configuration;
import android.util.TypedValue;
import android.view.View;
import com.coui.appcompat.button.listener.OnSizeChangeListener;
import com.coui.appcompat.button.listener.OnTextChangeListener;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.state.COUIViewStateController;
import com.coui.appcompat.state.PaddingProcessor;
import com.coui.appcompat.state.Processor;
import com.coui.appcompat.state.SizeProcessor;
import com.coui.appcompat.state.TextSizeProcessor;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.button.R$dimen;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SingleButtonWrap extends COUIViewStateController implements OnTextChangeListener, OnSizeChangeListener {
    public static final int BUTTON_MAX_LINE = 2;
    public static final int MULTI_LINE = 2;
    public static final int SINGLE_LINE = 1;
    private COUIButton mCOUIButton;
    private int mSmallPaddingStart;
    private int mType;
    private int mLargeButtonCurrentLines = 0;
    private Runnable setCOUIButtonRequestLayoutRunnable = new Runnable() { // from class: com.coui.appcompat.button.SingleButtonWrap.1
        @Override // java.lang.Runnable
        public void run() {
            if (SingleButtonWrap.this.mCOUIButton != null) {
                SingleButtonWrap.this.mCOUIButton.requestLayout();
            }
        }
    };

    @Target({ElementType.TYPE, ElementType.PARAMETER, ElementType.FIELD})
    @Retention(RetentionPolicy.SOURCE)
    public @interface Type {
        public static final int DescLarge = 7;
        public static final int DescMedium = 4;
        public static final int Large = 0;
        public static final int Medium = 1;
        public static final int PanelMedium = 3;
        public static final int SingleCentralLarge = 6;
        public static final int Small = 2;
        public static final int TextLarge = 5;
    }

    public SingleButtonWrap(COUIButton cOUIButton, int i10) {
        this.mType = 0;
        this.mSmallPaddingStart = 0;
        if (cOUIButton == null) {
            throw new IllegalArgumentException(getClass().getSimpleName() + ": parameter is null!");
        }
        this.mCOUIButton = cOUIButton;
        cOUIButton.setDrawableRadius(-1);
        this.mCOUIButton.setIncludeFontPadding(false);
        this.mType = i10;
        this.mCOUIButton.setOnSizeChangeListener(this);
        this.mCOUIButton.setOnTextChangeListener(this);
        this.mCOUIButton.setSingleLine(false);
        this.mCOUIButton.setMaxLines(2);
        this.mSmallPaddingStart = this.mCOUIButton.getContext().getResources().getDimensionPixelSize(R$dimen.coui_small_single_btn_padding_horizontal);
        initProcessor();
        setSmallButtonStateChange();
        LimitLargeButtonMaxWidth();
    }

    private void LimitLargeButtonMaxWidth() {
        if (needLimitLargeButtonMaxWidth()) {
            this.mCOUIButton.setNeedLimitMaxWidth(true);
        } else {
            this.mCOUIButton.setNeedLimitMaxWidth(false);
        }
    }

    private static int dp2px(Context context, float f10) {
        return Math.round(TypedValue.applyDimension(1, f10, context.getResources().getDisplayMetrics()));
    }

    private static float getAdapterSize(Context context, int i10, int i11) {
        return COUIChangeTextUtil.getSuitableFontSize(i10, context.getResources().getConfiguration().fontScale, i11);
    }

    private int getButtonMaxHeight(COUIButton cOUIButton) {
        if (cOUIButton == null) {
            return 0;
        }
        return (((cOUIButton.getLineHeight() * 2) + cOUIButton.getPaddingTop()) + cOUIButton.getPaddingBottom()) - ((int) (cOUIButton.getLineHeight() - (cOUIButton.getLineHeight() / cOUIButton.getLineSpacingMultiplier())));
    }

    private List<Processor> getCentralLargeProcessor(Context context) {
        ArrayList arrayList = new ArrayList();
        int largeButtonWidth = getLargeButtonWidth(context);
        arrayList.add(new SizeProcessor.Builder(1).setHeight(-2).setWidth(largeButtonWidth).create());
        arrayList.add(new SizeProcessor.Builder(2).setHeight(-2).setWidth(largeButtonWidth).create());
        return arrayList;
    }

    private List<Processor> getDescMediumProcessor(Context context) {
        ArrayList arrayList = new ArrayList();
        int dimensionPixelSize = this.mType == 4 ? context.getResources().getDimensionPixelSize(R$dimen.coui_medium_btn_width) : context.getResources().getDimensionPixelSize(R$dimen.coui_larger_btn_width);
        if (COUIResponsiveUtils.isSmallScreen(context, context.getResources().getDisplayMetrics().widthPixels)) {
            dimensionPixelSize = this.mType == 7 ? getLargeButtonWidth(context) : -1;
        }
        arrayList.add(new SizeProcessor.Builder(1).setHeight(-2).setWidth(dimensionPixelSize).create());
        arrayList.add(new PaddingProcessor.Builder(1).setPaddingBottom(context.getResources().getDimensionPixelSize(com.support.appcompat.R$dimen.coui_btn_desc_padding_vertical)).setPaddingTop(context.getResources().getDimensionPixelSize(com.support.appcompat.R$dimen.coui_btn_desc_padding_vertical)).setPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).setPaddingEnd(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).create());
        arrayList.add(new TextSizeProcessor.Builder(1).setTextSize(getAdapterSize(context, context.getResources().getDimensionPixelSize(R$dimen.coui_btn_group_text_size), 4)).setSizeType(2.0f).create());
        arrayList.add(new SizeProcessor.Builder(2).setHeight(-2).setWidth(dimensionPixelSize).create());
        arrayList.add(new PaddingProcessor.Builder(2).setPaddingBottom(context.getResources().getDimensionPixelSize(com.support.appcompat.R$dimen.coui_btn_desc_padding_vertical)).setPaddingTop(context.getResources().getDimensionPixelSize(com.support.appcompat.R$dimen.coui_btn_desc_padding_vertical)).setPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).setPaddingEnd(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).create());
        arrayList.add(new TextSizeProcessor.Builder(2).setTextSize(getAdapterSize(context, context.getResources().getDimensionPixelSize(R$dimen.coui_btn_group_text_size), 4)).setSizeType(2.0f).create());
        return arrayList;
    }

    private int getLargeButtonWidth(Context context) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.coui_larger_btn_width);
        if (!COUIResponsiveUtils.isSmallScreen(context, context.getResources().getDisplayMetrics().widthPixels) || this.mCOUIButton == null) {
            return dimensionPixelSize;
        }
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(com.support.appcompat.R$dimen.coui_single_larger_btn_width);
        if (UIUtil.getScreenWidthMetrics(context) >= context.getResources().getDimensionPixelSize(R$dimen.coui_single_larger_window_screen)) {
            return dimensionPixelSize2;
        }
        return -1;
    }

    private List<Processor> getLargeProcessor(Context context) {
        ArrayList arrayList = new ArrayList();
        int largeButtonWidth = getLargeButtonWidth(context);
        arrayList.add(new SizeProcessor.Builder(1).setHeight(-2).setWidth(largeButtonWidth).create());
        arrayList.add(new SizeProcessor.Builder(2).setHeight(-2).setWidth(largeButtonWidth).create());
        arrayList.add(new PaddingProcessor.Builder(1).setPaddingBottom(dp2px(context, 12.0f)).setPaddingTop(dp2px(context, 12.0f)).setPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).setPaddingEnd(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).create());
        arrayList.add(new PaddingProcessor.Builder(2).setPaddingBottom(dp2px(context, 6.0f)).setPaddingTop(dp2px(context, 6.0f)).setPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).setPaddingEnd(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).create());
        arrayList.add(new TextSizeProcessor.Builder(1).setTextSize(getAdapterSize(context, context.getResources().getDimensionPixelSize(R$dimen.coui_btn_group_text_size), 4)).setSizeType(2.0f).create());
        arrayList.add(new TextSizeProcessor.Builder(2).setTextSize(getAdapterSize(context, context.getResources().getDimensionPixelSize(R$dimen.coui_btn_group_text_size), 4)).setSizeType(2.0f).create());
        return arrayList;
    }

    private List<Processor> getMediumProcessor(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SizeProcessor.Builder(1).setHeight(-2).setWidth(context.getResources().getDimensionPixelSize(R$dimen.coui_medium_btn_width)).create());
        arrayList.add(new PaddingProcessor.Builder(1).setPaddingBottom(dp2px(context, 12.0f)).setPaddingTop(dp2px(context, 12.0f)).setPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).setPaddingEnd(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).create());
        arrayList.add(new TextSizeProcessor.Builder(1).setTextSize(getAdapterSize(context, context.getResources().getDimensionPixelSize(R$dimen.coui_btn_group_text_size), 4)).setSizeType(2.0f).create());
        arrayList.add(new SizeProcessor.Builder(2).setHeight(-2).setWidth(context.getResources().getDimensionPixelSize(R$dimen.coui_medium_btn_width)).create());
        arrayList.add(new PaddingProcessor.Builder(2).setPaddingBottom(dp2px(context, 6.0f)).setPaddingTop(dp2px(context, 6.0f)).setPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).setPaddingEnd(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).create());
        arrayList.add(new TextSizeProcessor.Builder(2).setTextSize(getAdapterSize(context, context.getResources().getDimensionPixelSize(R$dimen.coui_btn_group_text_size), 4)).setSizeType(2.0f).create());
        return arrayList;
    }

    private List<Processor> getPanelMediumProcessor(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SizeProcessor.Builder(1).setHeight(context.getResources().getDimensionPixelSize(R$dimen.coui_medium_btn_height)).setWidth(0).setWeight(1.0f).create());
        arrayList.add(new PaddingProcessor.Builder(1).setPaddingBottom(dp2px(context, 11.0f)).setPaddingTop(dp2px(context, 11.0f)).setPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).setPaddingEnd(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).create());
        arrayList.add(new TextSizeProcessor.Builder(1).setTextSize(16.0f).setSizeType(1.0f).create());
        arrayList.add(new SizeProcessor.Builder(2).setHeight(-2).setWidth(0).setWeight(1.0f).create());
        arrayList.add(new PaddingProcessor.Builder(2).setPaddingBottom(dp2px(context, 6.0f)).setPaddingTop(dp2px(context, 6.0f)).setPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).setPaddingEnd(context.getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal)).create());
        arrayList.add(new TextSizeProcessor.Builder(2).setTextSize(16.0f).setSizeType(1.0f).create());
        return arrayList;
    }

    private List<Processor> getSmallProcessor(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SizeProcessor.Builder(1).setHeight(-2).setWidth(-2).create());
        arrayList.add(new PaddingProcessor.Builder(1).setPaddingBottom(context.getResources().getDimensionPixelSize(R$dimen.coui_small_btn_padding_victical)).setPaddingTop(context.getResources().getDimensionPixelSize(R$dimen.coui_small_btn_padding_victical)).setPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_small_single_btn_padding_horizontal)).setPaddingEnd(context.getResources().getDimensionPixelSize(R$dimen.coui_small_single_btn_padding_horizontal)).create());
        arrayList.add(new TextSizeProcessor.Builder(1).setTextSize(getAdapterSize(context, context.getResources().getDimensionPixelSize(R$dimen.coui_btn_group_small_single_text_size), 2)).setSizeType(2.0f).create());
        arrayList.add(new SizeProcessor.Builder(2).setHeight(-2).setWidth(-2).create());
        arrayList.add(new PaddingProcessor.Builder(2).setPaddingBottom(context.getResources().getDimensionPixelSize(R$dimen.coui_small_btn_padding_victical)).setPaddingTop(context.getResources().getDimensionPixelSize(R$dimen.coui_small_btn_padding_victical)).setPaddingStart(context.getResources().getDimensionPixelSize(R$dimen.coui_small_btn_padding_horizontal)).setPaddingEnd(context.getResources().getDimensionPixelSize(R$dimen.coui_small_btn_padding_horizontal)).create());
        arrayList.add(new TextSizeProcessor.Builder(2).setTextSize(getAdapterSize(context, context.getResources().getDimensionPixelSize(R$dimen.coui_btn_group_small_single_text_size), 2)).setSizeType(2.0f).create());
        return arrayList;
    }

    private void initProcessor() {
        COUIButton cOUIButton = this.mCOUIButton;
        if (cOUIButton == null) {
            return;
        }
        int i10 = this.mType;
        if (i10 == 0 || i10 == 5) {
            addViewStateProcessor(getLargeProcessor(cOUIButton.getContext()));
        } else if (i10 == 6) {
            addViewStateProcessor(getCentralLargeProcessor(cOUIButton.getContext()));
        } else if (i10 == 1) {
            addViewStateProcessor(getMediumProcessor(cOUIButton.getContext()));
        } else if (i10 == 2) {
            addViewStateProcessor(getSmallProcessor(cOUIButton.getContext()));
        } else if (i10 == 4 || i10 == 7) {
            addViewStateProcessor(getDescMediumProcessor(cOUIButton.getContext()));
            onViewStateChanged(1);
        } else {
            addViewStateProcessor(getPanelMediumProcessor(cOUIButton.getContext()));
        }
        COUIButton cOUIButton2 = this.mCOUIButton;
        cOUIButton2.setText(cOUIButton2.getText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConfigurationChanged$0() {
        super.release();
        initProcessor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setSmallButtonLines$1() {
        COUIButton cOUIButton = this.mCOUIButton;
        if (cOUIButton == null) {
            return;
        }
        if (getButtonMaxHeight(cOUIButton) <= this.mCOUIButton.getMeasureMaxHeight() || this.mCOUIButton.getMeasureMaxHeight() == 0 || !this.mCOUIButton.isLimitHeight()) {
            this.mCOUIButton.setSingleLine(false);
            this.mCOUIButton.setMaxLines(2);
        } else {
            this.mCOUIButton.setSingleLine(false);
            this.mCOUIButton.setMaxLines(1);
        }
        this.mCOUIButton.requestLayout();
    }

    private boolean needLimitLargeButtonMaxWidth() {
        int i10;
        COUIButton cOUIButton = this.mCOUIButton;
        return (cOUIButton == null || (i10 = this.mType) == 2 || i10 == 4 || !COUIResponsiveUtils.isSmallScreen(cOUIButton.getContext(), this.mCOUIButton.getContext().getResources().getDisplayMetrics().widthPixels)) ? false : true;
    }

    private void reInProcessor() {
        if (needLimitLargeButtonMaxWidth()) {
            if (this.mCOUIButton.getMeasuredWidth() >= this.mCOUIButton.getContext().getResources().getDimensionPixelSize(com.support.appcompat.R$dimen.coui_single_larger_btn_width)) {
                super.release();
                initProcessor();
                this.mCOUIButton.removeCallbacks(this.setCOUIButtonRequestLayoutRunnable);
                this.mCOUIButton.post(this.setCOUIButtonRequestLayoutRunnable);
                return;
            }
            if (this.mCOUIButton.getLineCount() != this.mLargeButtonCurrentLines) {
                onViewStateChanged(this.mCOUIButton.getLineCount());
                this.mLargeButtonCurrentLines = this.mCOUIButton.getLineCount();
            }
        }
    }

    private void setLargeButtonLines(COUIButton cOUIButton, float f10) {
        int dimensionPixelSize = cOUIButton.getContext().getResources().getDimensionPixelSize(R$dimen.coui_larger_btn_width);
        if (COUIResponsiveUtils.isSmallScreen(cOUIButton.getContext(), cOUIButton.getContext().getResources().getDisplayMetrics().widthPixels)) {
            dimensionPixelSize = Math.min(Math.max(dimensionPixelSize, cOUIButton.getMeasuredWidth()), cOUIButton.getContext().getResources().getDimensionPixelSize(com.support.appcompat.R$dimen.coui_single_larger_btn_width));
        }
        if (f10 > dimensionPixelSize - (cOUIButton.getContext().getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal) * 2)) {
            onViewStateChanged(2);
            this.mLargeButtonCurrentLines = 2;
        } else {
            onViewStateChanged(1);
            this.mLargeButtonCurrentLines = 1;
        }
    }

    private void setMediumButtonLines(COUIButton cOUIButton, float f10) {
        if (f10 > cOUIButton.getContext().getResources().getDimensionPixelSize(R$dimen.coui_medium_btn_width) - (cOUIButton.getContext().getResources().getDimensionPixelSize(R$dimen.coui_btn_padding_horizontal) * 2)) {
            onViewStateChanged(2);
        } else {
            onViewStateChanged(1);
        }
    }

    private void setSmallButtonLines() {
        if (this.mType == 2) {
            this.mCOUIButton.post(new Runnable() { // from class: com.coui.appcompat.button.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f7262a.lambda$setSmallButtonLines$1();
                }
            });
        }
    }

    private void setSmallButtonStateChange() {
        if (this.mType == 2) {
            if (this.mCOUIButton.getPaint().measureText(this.mCOUIButton.getText() == null ? "" : this.mCOUIButton.getText().toString()) > this.mCOUIButton.getMeasuredWidth() - (this.mSmallPaddingStart * 2)) {
                onViewStateChanged(2);
                COUIButton cOUIButton = this.mCOUIButton;
                cOUIButton.setDrawableRadius(dp2px(cOUIButton.getContext(), 14.0f));
            } else {
                onViewStateChanged(1);
                this.mCOUIButton.setDrawableRadius(-1);
            }
            this.mCOUIButton.requestLayout();
        }
    }

    @Override // com.coui.appcompat.state.COUIViewStateController
    public View getProcessView() {
        return this.mCOUIButton;
    }

    @Override // com.coui.appcompat.state.COUIViewStateController, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mCOUIButton.post(new Runnable() { // from class: com.coui.appcompat.button.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f7261a.lambda$onConfigurationChanged$0();
            }
        });
        LimitLargeButtonMaxWidth();
    }

    @Override // com.coui.appcompat.button.listener.OnSizeChangeListener
    public void onSizeChanged(View view, int i10, int i11, int i12, int i13) {
        if (view != null) {
            if (i10 == i12 && i11 == i13) {
                return;
            }
            setSmallButtonStateChange();
            setTextButtonPressBackGround(this.mCOUIButton);
            reInProcessor();
        }
    }

    @Override // com.coui.appcompat.button.listener.OnTextChangeListener
    public void onTextChanged(View view, CharSequence charSequence, int i10, int i11, int i12) {
        if (view == null || !(view instanceof COUIButton)) {
            return;
        }
        COUIButton cOUIButton = (COUIButton) view;
        float fMeasureText = cOUIButton.getPaint().measureText(cOUIButton.getText().toString());
        int i13 = this.mType;
        if (i13 == 0 || i13 == 5 || i13 == 6) {
            setLargeButtonLines(cOUIButton, fMeasureText);
        } else if (i13 == 1) {
            setMediumButtonLines(cOUIButton, fMeasureText);
        } else if (i13 == 2) {
            setSmallButtonLines();
        }
    }

    @Override // com.coui.appcompat.state.COUIViewStateController, com.coui.appcompat.state.IViewStateController
    public void release() {
        super.release();
        COUIButton cOUIButton = this.mCOUIButton;
        if (cOUIButton != null) {
            cOUIButton.setOnTextChangeListener(null);
            this.mCOUIButton.setOnSizeChangeListener(null);
            this.mCOUIButton.removeCallbacks(this.setCOUIButtonRequestLayoutRunnable);
            this.mCOUIButton = null;
        }
    }

    public void setTextButtonPressBackGround(COUIButton cOUIButton) {
        if (this.mType == 5) {
            cOUIButton.setAnimType(0);
        }
    }
}
