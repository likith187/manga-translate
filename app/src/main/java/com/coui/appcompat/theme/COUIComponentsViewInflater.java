package com.coui.appcompat.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.app.q;
import androidx.appcompat.widget.AppCompatTextView;
import com.coui.appcompat.textview.COUITextView;

/* JADX INFO: loaded from: classes.dex */
public class COUIComponentsViewInflater extends q {
    @Override // androidx.appcompat.app.q
    protected AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new COUITextView(context, attributeSet);
    }
}
