package com.coui.appcompat.privacypolicy;

import android.widget.TextView;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class MultiFunctionSpanKt {
    public static final void setMultiFunctionSpan(TextView textView, CharSequence spanText) {
        r.e(textView, "<this>");
        r.e(spanText, "spanText");
        textView.setText(spanText);
        textView.setMovementMethod(new MultiMovementMethod());
        textView.setHighlightColor(0);
    }
}
