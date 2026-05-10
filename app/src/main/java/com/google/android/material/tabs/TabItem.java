package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.h0;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class TabItem extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f10286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Drawable f10287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10288c;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h0 h0VarV = h0.v(context, attributeSet, R$styleable.TabItem);
        this.f10286a = h0VarV.p(R$styleable.TabItem_android_text);
        this.f10287b = h0VarV.g(R$styleable.TabItem_android_icon);
        this.f10288c = h0VarV.n(R$styleable.TabItem_android_layout, 0);
        h0VarV.y();
    }
}
