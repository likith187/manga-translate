package com.coui.appcompat.textviewcompatutil;

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
public class COUITextPressRippleDrawable extends RippleDrawable {
    private static final int TRANSPARENT = Color.parseColor("#00000000");
    public static final int U = 34;

    public COUITextPressRippleDrawable(Context context) {
        this(context, false);
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
    public COUITextPressRippleDrawable(Context context, boolean z10) {
        int attrColor = COUIContextUtil.getAttrColor(context, parseThemeColor());
        int i10 = TRANSPARENT;
        super(COUIStateListUtil.createColorStateList(attrColor, i10), new ColorDrawable(i10), new COUITextPressMaskDrawable());
        if (z10) {
            return;
        }
        initPadding(context);
    }
}
