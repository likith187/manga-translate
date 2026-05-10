package com.coui.appcompat.uiutil;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.oplus.graphics.OplusBlurParam;
import com.oplus.view.ViewRootManager;
import com.support.appcompat.R$bool;
import com.support.appcompat.R$color;
import com.support.appcompat.R$dimen;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class COUIBackgroundBlurBuilder {
    private static final int MAX_ALPHA = 255;
    private static final String SYSTEM_MATERIAL_BLUR_ENABLE = "system_material_blur_enable";
    private static final String TAG = "BackgroundBlurBuilder";
    private int mBlurRadius;
    private Context mContext;
    private float mCornerRadiusBottomLeft;
    private float mCornerRadiusBottomRight;
    private float mCornerRadiusTopLeft;
    private float mCornerRadiusTopRight;
    private Consumer<Boolean> mCrossWindowBlurEnabledListener;
    private View mRootView;
    private float mSmoothWeight;
    private View mTargetView;
    private boolean mUseBackgroundBlur;
    private ViewRootManager mViewRootManager;
    private WindowManager mWindowManager;
    private float[] mBlendColorLight = null;
    private float[] mBlendColorDark = null;
    private float[] mMixColorLight = null;
    private float[] mMixColorDark = null;

    public COUIBackgroundBlurBuilder(Context context) {
        this.mContext = context;
        init();
    }

    private OplusBlurParam createBlurParams() {
        float[] fArr;
        float[] fArr2;
        OplusBlurParam oplusBlurParam = new OplusBlurParam();
        oplusBlurParam.setBlurType(2);
        boolean z10 = COUIContextUtil.isCOUIDarkTheme(this.mContext) || COUIDarkModeUtil.isNightMode(this.mContext);
        int i10 = z10 ? 2 : 3;
        if (z10) {
            fArr = this.mBlendColorDark;
            fArr2 = this.mMixColorDark;
        } else {
            fArr = this.mBlendColorLight;
            fArr2 = this.mMixColorLight;
        }
        oplusBlurParam.setMaterialParams(i10, fArr, fArr2);
        if (RoundCornerUtil.isSupportRoundCornerWhenBlur()) {
            oplusBlurParam.setSmoothCornerWeight(this.mSmoothWeight);
            COUILog.i(TAG, "Current version supports roundCorner when using blur");
        }
        return oplusBlurParam;
    }

    private void init() {
        this.mBlurRadius = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_list_dialog_background_blur_radius);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyBlurBackground$0(Boolean bool) {
        int color = COUIContextUtil.getColor(this.mContext, R$color.coui_list_dialog_background_color_above_blur);
        int color2 = COUIContextUtil.getColor(this.mContext, R$color.coui_list_dialog_background_color_no_blur);
        ViewRootManager viewRootManager = this.mViewRootManager;
        if (!bool.booleanValue()) {
            color = color2;
        }
        viewRootManager.setColor(color);
        this.mTargetView.invalidate();
        COUILog.i(TAG, "WindowBlurEnabled = " + bool);
    }

    public void applyBlurBackground() {
        if (useBackgroundBlur()) {
            this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
            if (this.mTargetView == null) {
                throw new IllegalStateException("Must setTargetView before applyBlurBackground");
            }
            if (this.mRootView != null) {
                this.mViewRootManager = new ViewRootManager(this.mRootView);
            } else {
                this.mViewRootManager = new ViewRootManager(this.mTargetView);
            }
            Drawable backgroundBlurDrawable = this.mViewRootManager.getBackgroundBlurDrawable();
            if (this.mCrossWindowBlurEnabledListener == null) {
                this.mCrossWindowBlurEnabledListener = new Consumer() { // from class: com.coui.appcompat.uiutil.a
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f7397a.lambda$applyBlurBackground$0((Boolean) obj);
                    }
                };
            }
            this.mWindowManager.addCrossWindowBlurEnabledListener(this.mCrossWindowBlurEnabledListener);
            this.mViewRootManager.setBlurParams(createBlurParams());
            this.mViewRootManager.setBlurRadius(this.mBlurRadius);
            refreshCornerRadius();
            if (backgroundBlurDrawable != null) {
                backgroundBlurDrawable.setAlpha((int) (this.mTargetView.getAlpha() * 255.0f));
                this.mTargetView.setBackground(backgroundBlurDrawable);
            }
        }
    }

    public boolean isMaterialBlurEnabled() {
        return Settings.System.getInt(this.mContext.getContentResolver(), SYSTEM_MATERIAL_BLUR_ENABLE, 0) == 1;
    }

    public void refreshCornerRadius() {
        this.mViewRootManager.setCornerRadius(this.mCornerRadiusTopLeft, this.mCornerRadiusTopRight, this.mCornerRadiusBottomLeft, this.mCornerRadiusBottomRight);
    }

    public void release() {
        Consumer<Boolean> consumer;
        if (!this.mUseBackgroundBlur || (consumer = this.mCrossWindowBlurEnabledListener) == null) {
            return;
        }
        this.mWindowManager.removeCrossWindowBlurEnabledListener(consumer);
    }

    public void setBlendColorDark(float[] fArr) {
        this.mBlendColorDark = fArr;
    }

    public void setBlendColorLight(float[] fArr) {
        this.mBlendColorLight = fArr;
    }

    public COUIBackgroundBlurBuilder setBlurRadius(int i10) {
        this.mBlurRadius = i10;
        return this;
    }

    public COUIBackgroundBlurBuilder setCornerRadius(float f10) {
        this.mCornerRadiusTopLeft = f10;
        this.mCornerRadiusTopRight = f10;
        this.mCornerRadiusBottomLeft = f10;
        this.mCornerRadiusBottomRight = f10;
        return this;
    }

    public void setMixColorDark(float[] fArr) {
        this.mMixColorDark = fArr;
    }

    public void setMixColorLight(float[] fArr) {
        this.mMixColorLight = fArr;
    }

    public COUIBackgroundBlurBuilder setRootView(View view) {
        this.mRootView = view;
        return this;
    }

    public COUIBackgroundBlurBuilder setSmoothWeight(float f10) {
        this.mSmoothWeight = f10;
        return this;
    }

    public COUIBackgroundBlurBuilder setTargetView(View view) {
        this.mTargetView = view;
        return this;
    }

    public COUIBackgroundBlurBuilder setUseBackgroundBlur(boolean z10, AnimLevel animLevel) {
        return setUseBackgroundBlur(z10, animLevel, this.mContext.getResources().getBoolean(R$bool.coui_blur_enable));
    }

    public boolean useBackgroundBlur() {
        return this.mUseBackgroundBlur;
    }

    public COUIBackgroundBlurBuilder setUseBackgroundBlur(boolean z10, AnimLevel animLevel, boolean z11) {
        if (ShadowUtils.checkOPlusViewElevationSDK() && UIUtil.confirmLevelAnim(animLevel) && z11) {
            this.mUseBackgroundBlur = z10;
        } else {
            Log.e(TAG, "Machines below V do not support setting blurred backgrounds or current animLevel is too low or is in third party theme");
            this.mUseBackgroundBlur = false;
        }
        return this;
    }

    public COUIBackgroundBlurBuilder setCornerRadius(float f10, float f11, float f12, float f13) {
        this.mCornerRadiusTopLeft = f10;
        this.mCornerRadiusTopRight = f11;
        this.mCornerRadiusBottomLeft = f12;
        this.mCornerRadiusBottomRight = f13;
        return this;
    }
}
