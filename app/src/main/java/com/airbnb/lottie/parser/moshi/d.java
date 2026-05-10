package com.airbnb.lottie.parser.moshi;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
abstract class d {
    static String a(int i10, int[] iArr, String[] strArr, int[] iArr2) {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = iArr[i11];
            if (i12 == 1 || i12 == 2) {
                sb.append(AbstractJsonLexerKt.BEGIN_LIST);
                sb.append(iArr2[i11]);
                sb.append(AbstractJsonLexerKt.END_LIST);
            } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                sb.append('.');
                String str = strArr[i11];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }
}
