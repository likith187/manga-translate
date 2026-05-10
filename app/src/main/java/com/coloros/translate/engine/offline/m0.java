package com.coloros.translate.engine.offline;

import android.text.TextUtils;
import com.oplus.aiunit.core.utils.AuthUtil;

/* JADX INFO: loaded from: classes.dex */
public abstract class m0 {
    public static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.equals(g.getCELanguageCode())) {
                return AuthUtil.AUTH_STYLE_INNER;
            }
            if (str.equals(g.getCJLanguageCode())) {
                return "1";
            }
            if (str.equals(g.getCKLanguageCode())) {
                return "2";
            }
            if (str.equals(g.getCFLanguageCode())) {
                return "3";
            }
            if (str.equals(g.getCSLanguageCode())) {
                return "4";
            }
            if (str.equals(g.getCVLanguageCode())) {
                return "5";
            }
            if (str.equals(g.getEHLanguageCode())) {
                return "6";
            }
            if (str.equals(g.getCILanguageCode())) {
                return "7";
            }
            if (str.equals(g.getCGLanguageCode())) {
                return "8";
            }
        }
        return "";
    }
}
