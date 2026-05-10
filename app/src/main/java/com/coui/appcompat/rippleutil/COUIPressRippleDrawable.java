package com.coui.appcompat.rippleutil;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.statelistutil.COUIStateListUtil;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$dimen;

/* JADX INFO: loaded from: classes.dex */
public class COUIPressRippleDrawable extends RippleDrawable {
    private static final int TRANSPARENT = Color.parseColor("#00000000");
    public static final int U = 34;

    public COUIPressRippleDrawable(Context context, int i10) {
        this(context, i10, false);
    }

    private void initPadding(Context context) {
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R$dimen.text_ripple_bg_padding_horizontal);
        int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R$dimen.text_ripple_bg_padding_vertical);
        setPadding(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2);
    }

    private static int parseThemeColor() {
        return Build.VERSION.SDK_INT >= 34 ? R$attr.couiColorPressBackground : R$attr.couiColorRipplePressBackground;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public COUIPressRippleDrawable(Context context, int i10, boolean z10) {
        int attrColor = COUIContextUtil.getAttrColor(context, parseThemeColor());
        int i11 = TRANSPARENT;
        super(COUIStateListUtil.createColorStateList(attrColor, i11), new ColorDrawable(i11), new COUIPressMaskDrawable(i10));
        if (z10) {
            initPadding(context);
        }
    }
}
