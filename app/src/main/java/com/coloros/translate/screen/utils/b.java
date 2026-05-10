package com.coloros.translate.screen.utils;

import android.content.Context;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static WindowManager.LayoutParams a(Context context, int i10) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = 2038;
        layoutParams.format = -3;
        layoutParams.gravity = 8388659;
        if (i10 == 0) {
            layoutParams.flags |= 24;
        } else if (i10 == 1) {
            int[] iArrD = k.d(context);
            layoutParams.width = iArrD[0];
            layoutParams.height = iArrD[1];
            layoutParams.flags = 792;
            layoutParams.setTitle("screen_trans_shot_black_name");
        } else if (i10 == 2) {
            layoutParams.width = 1;
            layoutParams.height = 1;
            layoutParams.flags |= 24;
        }
        layoutParams.flags |= 201326592;
        return layoutParams;
    }
}
