package com.coloros.translate.engine.offline;

import android.text.TextUtils;
import com.coloros.translate.utils.e1;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile e f5018e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5022d;

    private e() {
    }

    private void b(Set set) {
        if (set == null || set.size() == 0) {
            com.coloros.translate.utils.c0.j("DecompressTool", "deleteFiles pathSet is empty");
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!TextUtils.isEmpty(str)) {
                File file = new File(str);
                if (file.exists() && !file.delete()) {
                    com.coloros.translate.utils.c0.j("DecompressTool", "deleteFiles delete failed, path = " + str);
                }
            }
        }
    }

    public static e c() {
        if (f5018e == null) {
            synchronized (e.class) {
                try {
                    if (f5018e == null) {
                        f5018e = new e();
                    }
                } finally {
                }
            }
        }
        return f5018e;
    }

    private void d() {
        if (this.f5019a == null) {
            this.f5019a = g0.b().c();
            this.f5020b = this.f5019a + "md5.xml";
        }
        if (this.f5021c == null) {
            this.f5021c = g0.b().e();
            this.f5022d = this.f5021c + "md5.xml";
        }
    }

    private Boolean e(boolean z10, String str) {
        if (!(z10 ? e1.b(str, this.f5021c, this.f5022d, "model/") : e1.b(str, this.f5019a, this.f5020b, "model/"))) {
            com.coloros.translate.utils.c0.i("DecompressTool", "decompress unZipSauData failed DATA_ZIP_SDCARD_PATH = " + str);
            return Boolean.FALSE;
        }
        File file = new File(str);
        if (file.exists() && !file.delete()) {
            com.coloros.translate.utils.c0.i("DecompressTool", "decompress deleteZipFileResult failed DATA_ZIP_SDCARD_PATH = " + str);
        }
        return Boolean.TRUE;
    }

    public boolean a(String str, String str2, boolean z10) throws Throwable {
        d();
        if (!e(z10, str2).booleanValue()) {
            return false;
        }
        HashMap mapB = z10 ? com.coloros.translate.utils.k0.b(this.f5021c, this.f5022d) : com.coloros.translate.utils.k0.b(this.f5019a, this.f5020b);
        com.coloros.translate.utils.c0.i("DecompressTool", "decompress fileMd5Map = " + mapB);
        File file = new File(z10 ? this.f5022d : this.f5020b);
        if (file.exists() && !file.delete()) {
            com.coloros.translate.utils.c0.i("DecompressTool", "decompress deleteSauResXmlResult failed path = " + this.f5020b);
        }
        if (mapB == null || mapB.isEmpty()) {
            com.coloros.translate.utils.c0.i("DecompressTool", "decompress fileMd5Map is empty");
            return false;
        }
        HashMap mapA = com.coloros.translate.utils.h.a(mapB);
        com.coloros.translate.utils.c0.i("DecompressTool", "decompress checkResult = " + mapA);
        if (mapA == null || mapA.size() == 0) {
            com.coloros.translate.utils.c0.i("DecompressTool", "decompress checkResult is empty");
            b(mapB.keySet());
            return false;
        }
        Iterator it = mapA.values().iterator();
        while (it.hasNext()) {
            if (!((Boolean) it.next()).booleanValue()) {
                com.coloros.translate.utils.c0.j("DecompressTool", "decompress checkResult hasFailedItem");
                b(mapB.keySet());
                return false;
            }
        }
        return k0.e().a(str, mapB.keySet());
    }
}
