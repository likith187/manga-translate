package com.oplus.epona;

import com.oplus.os.OplusBuild;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {
    public static boolean a() {
        try {
            return OplusBuild.getOplusOSVERSION() >= 22;
        } catch (Throwable unused) {
            return false;
        }
    }
}
