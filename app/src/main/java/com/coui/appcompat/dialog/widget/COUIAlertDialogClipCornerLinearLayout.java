package com.coui.appcompat.dialog.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.oplus.graphics.OplusOutline;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$dimen;
import com.support.dialog.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIAlertDialogClipCornerLinearLayout extends LinearLayoutCompat {
    private static final String TAG = "COUIAlertDialogClipCorner";
    private boolean mBlurBackgroundWindow;
    private boolean mIsSupportRoundCornerWhenBlur;
    private boolean mIsSupportSmoothRoundCorner;
    private int mRadius;

    public COUIAlertDialogClipCornerLinearLayout(Context context) {
        super(context);
        this.mBlurBackgroundWindow = false;
        this.mIsSupportRoundCornerWhenBlur = false;
        this.mIsSupportSmoothRoundCorner = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mRadius > 0) {
            setClipToOutline(true);
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.dialog.widget.COUIAlertDialogClipCornerLinearLayout.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    boolean z10 = COUIAlertDialogClipCornerLinearLayout.this.mBlurBackgroundWindow && !COUIAlertDialogClipCornerLinearLayout.this.mIsSupportRoundCornerWhenBlur;
                    if (!COUIAlertDialogClipCornerLinearLayout.this.mIsSupportSmoothRoundCorner || z10) {
                        outline.setRoundRect(0, 0, COUIAlertDialogClipCornerLinearLayout.this.getMeasuredWidth(), COUIAlertDialogClipCornerLinearLayout.this.getMeasuredHeight(), COUIAlertDialogClipCornerLinearLayout.this.mRadius);
                    } else {
                        new OplusOutline(outline).setSmoothRoundRect(0, 0, COUIAlertDialogClipCornerLinearLayout.this.getMeasuredWidth(), COUIAlertDialogClipCornerLinearLayout.this.getMeasuredHeight(), COUIAlertDialogClipCornerLinearLayout.this.mRadius, COUIContextUtil.getFloat(COUIAlertDialogClipCornerLinearLayout.this.getContext(), R$dimen.coui_round_corner_xl_weight));
                    }
                    COUILog.i(COUIAlertDialogClipCornerLinearLayout.TAG, "getOutline: notUseRoundCornerWhenBlur" + z10 + " mBlurBackgroundWindow=" + COUIAlertDialogClipCornerLinearLayout.this.mBlurBackgroundWindow + " mIsSupportRoundCornerWhenBlur=" + COUIAlertDialogClipCornerLinearLayout.this.mIsSupportRoundCornerWhenBlur + " mIsSupportSmoothRoundCorner=" + COUIAlertDialogClipCornerLinearLayout.this.mIsSupportSmoothRoundCorner + " mRadius=" + COUIAlertDialogClipCornerLinearLayout.this.mRadius);
                }
            });
        }
    }

    public void setBlurBackgroundWindow(boolean z10) {
        this.mBlurBackgroundWindow = z10;
    }

    public void setIsSupportRoundCornerWhenBlur(boolean z10) {
        this.mIsSupportRoundCornerWhenBlur = z10;
    }

    public COUIAlertDialogClipCornerLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBlurBackgroundWindow = false;
        this.mIsSupportRoundCornerWhenBlur = false;
        this.mIsSupportSmoothRoundCorner = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIAlertDialogClipCornerLinearLayout);
        boolean zIsVersionSupport = RoundCornerUtil.isVersionSupport();
        this.mIsSupportSmoothRoundCorner = zIsVersionSupport;
        this.mRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIAlertDialogClipCornerLinearLayout_clip_radius, COUIContextUtil.getAttrDimens(getContext(), zIsVersionSupport ? R$attr.couiRoundCornerXLRadius : R$attr.couiRoundCornerXL));
        typedArrayObtainStyledAttributes.recycle();
    }

    public COUIAlertDialogClipCornerLinearLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mBlurBackgroundWindow = false;
        this.mIsSupportRoundCornerWhenBlur = false;
        this.mIsSupportSmoothRoundCorner = false;
    }
}
