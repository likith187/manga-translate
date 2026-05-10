package com.coloros.translate.engine.offline;

import android.content.Context;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.u0;
import com.oplus.aiunit.translation.TextRecognizeHelper;
import com.oplus.aiunit.translation.callback.OfflinePackageCallback;
import com.oplus.aiunit.translation.request.OfflinePackageRequest;
import com.oplus.backup.sdk.common.plugin.BRPluginConfig;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import n8.r;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f5024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f5025c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile i0 f5027e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static a2.b f5029g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f5030h;
    public static final e0 INSTANCE = new e0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ArrayMap f5023a = new ArrayMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n8.j f5026d = n8.k.b(b.INSTANCE);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Context f5028f = com.coloros.translate.utils.m.INSTANCE.a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Runnable f5031i = new Runnable() { // from class: com.coloros.translate.engine.offline.c0
        @Override // java.lang.Runnable
        public final void run() {
            e0.m();
        }
    };

    public static final class a implements OfflinePackageCallback {
        a() {
        }

        @Override // com.oplus.aiunit.translation.callback.OfflinePackageCallback
        public void onError(int i10, String str) {
            com.coloros.translate.utils.c0.f7098a.e("OfflinePackageConfigClient", "getOfflinePackageInfo: errorMsg:" + str);
            u0.f("request_download_offline_info", e0.f5031i);
            e0.f5024b = false;
        }

        @Override // com.oplus.aiunit.translation.callback.OfflinePackageCallback
        public void onSuccess(String response) {
            kotlin.jvm.internal.r.e(response, "response");
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("OfflinePackageConfigClient", "getOfflinePackageInfo: onSuccess: response:" + aVar.g(response));
            u0.f("request_download_offline_info", e0.f5031i);
            e0.INSTANCE.o(response);
            e0.f5024b = false;
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final d mo8invoke() {
            return d.f(e0.f5028f);
        }
    }

    private e0() {
    }

    private final void g() {
        i0 i0Var;
        if (f5027e != null && (i0Var = f5027e) != null) {
            i0Var.j();
        }
        a2.b bVar = f5029g;
        if (bVar != null) {
            if (bVar != null) {
                bVar.b(f5023a);
            }
            f5029g = null;
        }
    }

    private final void h() {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("OfflinePackageConfigClient", "doRequestOfflinePackageInfo:" + f5024b);
        if (f5024b) {
            return;
        }
        f5024b = true;
        final OfflinePackageRequest offlinePackageRequest = new OfflinePackageRequest();
        String string = UUID.randomUUID().toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        offlinePackageRequest.setRequestId(string);
        aVar.d("OfflinePackageConfigClient", "getOfflinePackageInfo start: requestId: " + offlinePackageRequest.getRequestId());
        u0.e("request_download_offline_info", f5031i, 1000L);
        u0.d("request_download_offline_info", new Runnable() { // from class: com.coloros.translate.engine.offline.d0
            @Override // java.lang.Runnable
            public final void run() {
                e0.i(offlinePackageRequest);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(OfflinePackageRequest request) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(request, "$request");
        try {
            r.a aVar = n8.r.Companion;
            TextRecognizeHelper.INSTANCE.getOfflinePackageInfo(com.coloros.translate.utils.m.INSTANCE.a(), request, new a());
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("OfflinePackageConfigClient", "TextRecognizeHelper getOfflinePackageInfo: errorMsg" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    private final d j() {
        Object value = f5026d.getValue();
        kotlin.jvm.internal.r.d(value, "getValue(...)");
        return (d) value;
    }

    private final boolean l() {
        return System.currentTimeMillis() - f5030h < 5184000000L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m() {
        com.coloros.translate.utils.c0.f7098a.q("OfflinePackageConfigClient", "offline callback timeout ");
        if (f5024b) {
            f5024b = false;
        }
    }

    private final Map n(List list) {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("OfflinePackageConfigClient", "parseOfflineLanguageMap list:" + list);
        ArrayMap arrayMap = new ArrayMap();
        if (list.isEmpty()) {
            aVar.q("OfflinePackageConfigClient", "parseOfflineLanguageMap list is empty!");
            return arrayMap;
        }
        ArrayList<n8.q> arrayList = new ArrayList();
        HashSet<String> hashSet = new HashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.length() == 4) {
                String strSubstring = str.substring(0, 2);
                kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
                String strSubstring2 = str.substring(2, 4);
                kotlin.jvm.internal.r.d(strSubstring2, "substring(...)");
                hashSet.add(strSubstring);
                hashSet.add(strSubstring2);
                arrayList.add(new n8.q(strSubstring, strSubstring2));
            }
        }
        for (String str2 : hashSet) {
            ArrayList arrayList2 = new ArrayList();
            for (n8.q qVar : arrayList) {
                if (kotlin.jvm.internal.r.a(str2, qVar.getFirst())) {
                    arrayList2.add(qVar.getSecond());
                } else if (kotlin.jvm.internal.r.a(str2, qVar.getSecond())) {
                    arrayList2.add(qVar.getFirst());
                }
            }
            arrayMap.put(str2, arrayList2);
        }
        com.coloros.translate.utils.c0.f7098a.d("OfflinePackageConfigClient", "parseOfflineLanguageMap:" + arrayMap);
        return arrayMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(String str) {
        r(str);
        if (j().t(str)) {
            f5025c = str;
            f5030h = System.currentTimeMillis();
            List listG = j().g();
            kotlin.jvm.internal.r.d(listG, "getLanguagePairList(...)");
            Map mapN = n(listG);
            ArrayMap arrayMap = f5023a;
            arrayMap.clear();
            arrayMap.putAll(mapN);
        }
        g();
        com.coloros.translate.utils.c0.f7098a.d("OfflinePackageConfigClient", "innerQueryDownload finish!");
    }

    private final void r(String str) {
        if (TextUtils.isEmpty(str)) {
            com.coloros.translate.utils.c0.f7098a.d("OfflinePackageConfigClient", "setServerNewVersion json is null");
            return;
        }
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("data");
            if (jSONArray != null) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(0);
                    if (jSONObject != null) {
                        int i10 = jSONObject.getInt(BRPluginConfig.VERSION);
                        com.coloros.translate.utils.c0.f7098a.d("OfflinePackageConfigClient", "setServerNewVersion:" + i10);
                    }
                } catch (JSONException unused) {
                    com.coloros.translate.utils.c0.f7098a.q("OfflinePackageConfigClient", "setServerNewVersion fail, json:" + str);
                }
            }
        } catch (JSONException unused2) {
            com.coloros.translate.utils.c0.f7098a.q("OfflinePackageConfigClient", "setServerNewVersion parseObject fail, json:" + str);
        }
    }

    public final void k(a2.b callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        String str = f5025c;
        aVar.d("OfflinePackageConfigClient", "getOfflineLanguageMapFromServer:mOfflineCache:" + (str != null ? Integer.valueOf(str.length()) : null));
        if (f5025c != null && l()) {
            callback.b(f5023a);
        } else {
            f5029g = callback;
            h();
        }
    }

    public final void p() {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        String str = f5025c;
        aVar.d("OfflinePackageConfigClient", "requestOfflineLanguageAndPackageInfo:mOfflineCache:" + (str != null ? Integer.valueOf(str.length()) : null));
        if (TextUtils.isEmpty(f5025c) || !l()) {
            h();
        } else {
            g();
        }
    }

    public final void q(i0 callback) {
        i0 i0Var;
        kotlin.jvm.internal.r.e(callback, "callback");
        f5027e = callback;
        if (f5027e == null || (i0Var = f5027e) == null) {
            return;
        }
        i0Var.a();
    }
}
