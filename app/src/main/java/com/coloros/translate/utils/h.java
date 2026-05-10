package com.coloros.translate.utils;

import android.text.TextUtils;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.utils.AuthUtil;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {
    public static HashMap a(HashMap map) throws Throwable {
        c0.i("CheckUnzipedFilesMd5Utils", "checkUnzipedFilesMd5");
        if (map == null || map.size() == 0) {
            c0.o("CheckUnzipedFilesMd5Utils", "checkUnzipedFilesMd5 fileList is empty");
            return null;
        }
        HashMap map2 = new HashMap();
        c0.i("CheckUnzipedFilesMd5Utils", "checkUnzipedFilesMd5 filesMap.size() = " + map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry == null) {
                c0.o("CheckUnzipedFilesMd5Utils", "checkUnzipedFilesMd5 entry is null");
            } else {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                c0.i("CheckUnzipedFilesMd5Utils", "checkUnzipedFilesMd5 filePath = " + str + ", fileMd5 = " + str2);
                if (TextUtils.isEmpty(str)) {
                    c0.o("CheckUnzipedFilesMd5Utils", "checkUnzipedFilesMd5 filePath is empty, return");
                } else if (TextUtils.isEmpty(str2)) {
                    c0.o("CheckUnzipedFilesMd5Utils", "checkUnzipedFilesMd5 fileMd5 is empty, return");
                    map2.put(str, Boolean.FALSE);
                } else {
                    String strC = c(new File(str));
                    c0.i("CheckUnzipedFilesMd5Utils", "checkUnzipedFilesMd5 filePath = " + str + ", calcMd5 = " + strC);
                    if (str2.equals(strC)) {
                        map2.put(str, Boolean.TRUE);
                    } else {
                        c0.j("CheckUnzipedFilesMd5Utils", "checkUnzipedFilesMd5 check md5 not equal !!! filePath = " + str + ", fileMd5 = " + str2 + ", calcMd5 = " + strC);
                        map2.put(str, Boolean.FALSE);
                    }
                }
            }
        }
        return map2;
    }

    private static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer("");
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int i11 = bArr[i10];
            if (i11 < 0) {
                i11 += COUIToolTips.ALIGN_TOP;
            }
            if (i11 < 16) {
                stringBuffer.append(AuthUtil.AUTH_STYLE_INNER);
            }
            stringBuffer.append(Integer.toHexString(i11));
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String c(java.io.File r9) throws java.lang.Throwable {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "getMD5, file = "
            r0.append(r1)
            r0.append(r9)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "CheckUnzipedFilesMd5Utils"
            com.coloros.translate.utils.c0.i(r2, r0)
            r0 = 0
            if (r9 != 0) goto L1f
            java.lang.String r9 = "getMD5, file is null"
            com.coloros.translate.utils.c0.i(r2, r9)
            return r0
        L1f:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.io.IOException -> L52 java.security.NoSuchAlgorithmException -> L55
            r3.<init>(r9)     // Catch: java.io.IOException -> L52 java.security.NoSuchAlgorithmException -> L55
            java.lang.String r4 = "MD5"
            java.security.MessageDigest r4 = java.security.MessageDigest.getInstance(r4)     // Catch: java.lang.Throwable -> L47
            r5 = 4096(0x1000, float:5.74E-42)
            byte[] r6 = new byte[r5]     // Catch: java.lang.Throwable -> L3d
            r7 = 0
            int r8 = r3.read(r6, r7, r5)     // Catch: java.lang.Throwable -> L3d
        L33:
            if (r8 <= 0) goto L3f
            r4.update(r6, r7, r8)     // Catch: java.lang.Throwable -> L3d
            int r8 = r3.read(r6, r7, r5)     // Catch: java.lang.Throwable -> L3d
            goto L33
        L3d:
            r5 = move-exception
            goto L49
        L3f:
            r3.close()     // Catch: java.io.IOException -> L43 java.security.NoSuchAlgorithmException -> L45
            goto L81
        L43:
            r3 = move-exception
            goto L58
        L45:
            r3 = move-exception
            goto L6d
        L47:
            r5 = move-exception
            r4 = r0
        L49:
            r3.close()     // Catch: java.lang.Throwable -> L4d
            goto L51
        L4d:
            r3 = move-exception
            r5.addSuppressed(r3)     // Catch: java.io.IOException -> L43 java.security.NoSuchAlgorithmException -> L45
        L51:
            throw r5     // Catch: java.io.IOException -> L43 java.security.NoSuchAlgorithmException -> L45
        L52:
            r3 = move-exception
            r4 = r0
            goto L58
        L55:
            r3 = move-exception
            r4 = r0
            goto L6d
        L58:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "getMD5, IOException = "
            r5.append(r6)
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            com.coloros.translate.utils.c0.i(r2, r3)
            goto L81
        L6d:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "getMD5, NoSuchAlgorithmException = "
            r5.append(r6)
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            com.coloros.translate.utils.c0.i(r2, r3)
        L81:
            if (r4 == 0) goto La6
            byte[] r0 = r4.digest()
            java.lang.String r0 = b(r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r1)
            r3.append(r9)
            java.lang.String r9 = ", md5 = "
            r3.append(r9)
            r3.append(r0)
            java.lang.String r9 = r3.toString()
            com.coloros.translate.utils.c0.i(r2, r9)
            return r0
        La6:
            java.lang.String r9 = "getMD5, messageDigest is null, return null"
            com.coloros.translate.utils.c0.j(r2, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.utils.h.c(java.io.File):java.lang.String");
    }
}
