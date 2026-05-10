package com.coui.appcompat.tablayout;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.h0;
import com.support.tablayout.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public final class COUITabItem extends View {
    final int mCustomLayout;
    final Drawable mIcon;
    final CharSequence mText;

    public COUITabItem(Context context) {
        this(context, null);
    }

    public COUITabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h0 h0VarV = h0.v(context, attributeSet, R$styleable.COUITabItem);
        this.mText = h0VarV.p(R$styleable.COUITabItem_android_text);
        this.mIcon = h0VarV.g(R$styleable.COUITabItem_android_icon);
        this.mCustomLayout = h0VarV.n(R$styleable.COUITabItem_android_layout, 0);
        h0VarV.y();
    }
}
