package com.coui.appcompat.tooltips;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public interface COUIIBubbleStyle {
    void dismissWindow();

    TextView getContentView();

    int[] getDefStyleParams();

    default ImageView getDismissIv() {
        return null;
    }

    int getLayoutId();

    int getMaxWidth();

    int getRealWidth(int i10, ViewGroup viewGroup);

    default void hideDismissView() {
    }

    void initBubbleStyle(ViewGroup viewGroup);

    void refreshBubbleStyle(ColorStateList colorStateList);

    void setContentText(CharSequence charSequence);

    void setContentTextColor(ColorStateList colorStateList);

    void setContentView(View view);

    void setToolTipsAction(IToolTipsAction iToolTipsAction, Context context, int i10);

    void sizeBubbleStyle(ViewGroup viewGroup, int i10);
}
