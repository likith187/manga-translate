package com.oplus.aiunit.translation.youdao.utils;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.Objects;
import okhttp3.b0;
import okhttp3.r;
import okhttp3.u;
import okhttp3.x;
import okhttp3.z;

/* JADX INFO: loaded from: classes2.dex */
public class HttpUtil {
    static final String TAG = "HttpUtil";
    private static final x httpClient = new x.a().a();

    private static void addBodyParam(z.a aVar, Map<String, String[]> map, String str) {
        if (map == null) {
            return;
        }
        r.a aVar2 = new r.a(StandardCharsets.UTF_8);
        for (String str2 : map.keySet()) {
            String[] strArr = map.get(str2);
            if (strArr != null) {
                for (String str3 : strArr) {
                    aVar2.a(str2, str3);
                }
            }
        }
        aVar.e(str, aVar2.b());
    }

    private static void addHeader(z.a aVar, Map<String, String[]> map) {
        if (map == null) {
            return;
        }
        for (String str : map.keySet()) {
            String[] strArr = map.get(str);
            if (strArr != null) {
                for (String str2 : strArr) {
                    aVar.a(str, str2);
                }
            }
        }
    }

    private static void addUrlParam(z.a aVar, String str, Map<String, String[]> map) {
        if (map == null) {
            return;
        }
        u.a aVarJ = u.l(str).j();
        for (String str2 : map.keySet()) {
            String[] strArr = map.get(str2);
            if (strArr != null) {
                for (String str3 : strArr) {
                    aVarJ.a(str2, str3);
                }
            }
        }
        aVar.h(aVarJ.b());
    }

    public static b0 doPost(String str, Map<String, String[]> map, Map<String, String[]> map2) throws IOException {
        z.a aVarG = new z.a().g(str);
        addHeader(aVarG, map);
        addBodyParam(aVarG, map2, "POST");
        return requestExec(aVarG.b());
    }

    private static b0 requestExec(z zVar) throws IOException {
        Objects.requireNonNull(zVar, "okHttp request is null");
        return httpClient.u(zVar).c();
    }
}
