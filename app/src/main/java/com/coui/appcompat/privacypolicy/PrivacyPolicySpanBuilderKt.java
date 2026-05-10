package com.coui.appcompat.privacypolicy;

import android.widget.TextView;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class PrivacyPolicySpanBuilderKt {
    private static final String TAG = "PrivacyPolicySpanBuilder";

    public static final PrivacyPolicySpanBuilder spanBuilder(String str, TextView textView) {
        r.e(str, "<this>");
        r.e(textView, "textView");
        return new PrivacyPolicySpanBuilder(textView, str);
    }
}
