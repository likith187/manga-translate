package com.coloros.translate.engine.offline;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class h0 {

    /* JADX INFO: renamed from: a */
    private static final String f5056a = Environment.getExternalStorageDirectory().getAbsolutePath();

    /* JADX INFO: renamed from: b */
    private static final String f5057b = ".data" + File.separatorChar;

    /* JADX INFO: renamed from: c */
    private static String f5058c;

    /* JADX INFO: renamed from: d */
    private static String f5059d;

    /* JADX INFO: renamed from: e */
    private static String f5060e;

    public static String a() {
        if (f5059d == null) {
            f5059d = g0.b().c() + "ziyan/model/common";
        }
        return f5059d;
    }

    public static String b() {
        if (f5058c == null) {
            f5058c = g0.b().c();
        }
        return f5058c;
    }

    private static String c(com.ai.slp.library.mt.c cVar, com.ai.slp.library.mt.c cVar2) {
        com.ai.slp.library.mt.c cVar3 = com.ai.slp.library.mt.c.CHINESE;
        com.ai.slp.library.mt.c cVar4 = com.ai.slp.library.mt.c.ENGLISH;
        if (g(cVar, cVar2, cVar3, cVar4)) {
            return g.getCELanguageCode();
        }
        if (g(cVar, cVar2, cVar3, com.ai.slp.library.mt.c.JAPANESE)) {
            return g.getCJLanguageCode();
        }
        if (g(cVar, cVar2, cVar3, com.ai.slp.library.mt.c.KOREAN)) {
            return g.getCKLanguageCode();
        }
        if (g(cVar, cVar2, cVar3, com.ai.slp.library.mt.c.ITALIAN)) {
            return g.getCILanguageCode();
        }
        if (g(cVar, cVar2, cVar3, com.ai.slp.library.mt.c.FRENCH)) {
            return g.getCFLanguageCode();
        }
        if (g(cVar, cVar2, cVar3, com.ai.slp.library.mt.c.GERMAN)) {
            return g.getCGLanguageCode();
        }
        com.ai.slp.library.mt.c cVar5 = com.ai.slp.library.mt.c.SPANISH;
        if (g(cVar, cVar2, cVar3, cVar5)) {
            return g.getCSLanguageCode();
        }
        com.ai.slp.library.mt.c cVar6 = com.ai.slp.library.mt.c.Vietnamese;
        if (g(cVar, cVar2, cVar3, cVar6)) {
            return g.getCVLanguageCode();
        }
        if (g(cVar, cVar2, cVar4, com.ai.slp.library.mt.c.HINDI)) {
            return g.getEHLanguageCode();
        }
        if (g(cVar, cVar2, cVar4, cVar6)) {
            return g.getEVLanguageCode();
        }
        if (g(cVar, cVar2, cVar4, com.ai.slp.library.mt.c.THAILAND)) {
            return g.getETLanguageCode();
        }
        if (g(cVar, cVar2, cVar4, cVar5)) {
            return g.getESLanguageCode();
        }
        if (g(cVar, cVar2, cVar4, com.ai.slp.library.mt.c.INDONESIA)) {
            return g.getEILanguageCode();
        }
        return null;
    }

    public static String d(Context context) {
        if (f5060e == null) {
            f5060e = com.coloros.translate.utils.y.g(context, f5057b).getAbsolutePath();
        }
        return f5060e;
    }

    private static boolean e(com.ai.slp.library.mt.c cVar, com.ai.slp.library.mt.c cVar2) {
        if (cVar == null || cVar2 == null) {
            return false;
        }
        String strC = c(cVar, cVar2);
        if (TextUtils.isEmpty(strC)) {
            return false;
        }
        return k0.e().h(strC);
    }

    public static boolean f(com.ai.slp.library.mt.c cVar, com.ai.slp.library.mt.c cVar2) {
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return e(cVar, cVar2);
    }

    private static boolean g(com.ai.slp.library.mt.c cVar, com.ai.slp.library.mt.c cVar2, com.ai.slp.library.mt.c cVar3, com.ai.slp.library.mt.c cVar4) {
        return (cVar == cVar3 && cVar2 == cVar4) || (cVar == cVar4 && cVar2 == cVar3);
    }
}
