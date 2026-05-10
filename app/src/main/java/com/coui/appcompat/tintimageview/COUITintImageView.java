package com.coui.appcompat.tintimageview;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.h0;

/* JADX INFO: loaded from: classes.dex */
public class COUITintImageView extends AppCompatImageView {
    private static final int[] TINT_ATTRS = {R.attr.background, R.attr.src};
    private final COUITintManager mTintManager;

    public COUITintImageView(Context context) {
        this(context, null);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        setImageDrawable(this.mTintManager.getDrawable(i10));
    }

    public COUITintImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUITintImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        h0 h0VarW = h0.w(getContext(), attributeSet, TINT_ATTRS, i10, 0);
        if (h0VarW.t() > 0) {
            if (h0VarW.s(0)) {
                setBackgroundDrawable(h0VarW.g(0));
            }
            if (h0VarW.s(1)) {
                setImageDrawable(h0VarW.g(1));
            }
        }
        h0VarW.y();
        this.mTintManager = COUITintManager.get(context);
    }
}
