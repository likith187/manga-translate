package com.coloros.translate.utils;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class e1 {
    private static File a(String str, boolean z10) {
        File file = new File(str);
        if (z10) {
            if (file.mkdirs()) {
                return file;
            }
            c0.o("UnzipSauDataUtils", "buildFile " + str + " mkdirs failed!");
            return file;
        }
        if (file.getParentFile() == null || file.getParentFile().exists()) {
            return file;
        }
        if (!file.getParentFile().mkdirs()) {
            c0.o("UnzipSauDataUtils", file.getParentFile().getName() + " mkdirs failed!");
        }
        return new File(file.getAbsolutePath());
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0215 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0233 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0254 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x026e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x028c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:173:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean b(java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 711
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.utils.e1.b(java.lang.String, java.lang.String, java.lang.String, java.lang.String):boolean");
    }
}
