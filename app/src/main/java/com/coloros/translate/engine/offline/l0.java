package com.coloros.translate.engine.offline;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class l0 {
    public static final l0 INSTANCE = new l0();

    private l0() {
    }

    public static final String a(Context context, String fromCode, String resultValue) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(fromCode, "fromCode");
        kotlin.jvm.internal.r.e(resultValue, "resultValue");
        if (kotlin.jvm.internal.r.a(fromCode, "zh") || resultValue.length() <= 0) {
            return resultValue;
        }
        String[] stringArray = context.getResources().getStringArray(R$array.sensitive_result);
        kotlin.jvm.internal.r.d(stringArray, "getStringArray(...)");
        String strB = resultValue;
        for (String str : stringArray) {
            kotlin.jvm.internal.r.b(str);
            String string = kotlin.text.r.U0(str).toString();
            if (kotlin.text.r.K(strB, string, false, 2, null)) {
                com.coloros.translate.utils.c0.f7098a.d("SensitiveWordUtils", "SensitiveWordUtils contains sensitive word");
                strB = kotlin.text.r.B(strB, string, "***", false, 4, null);
            }
        }
        return strB;
    }
}
