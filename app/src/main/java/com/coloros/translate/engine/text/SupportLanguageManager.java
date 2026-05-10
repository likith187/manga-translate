package com.coloros.translate.engine.text;

import android.util.ArrayMap;
import androidx.annotation.Keep;
import com.coloros.translate.engine.IRegisterListener;
import com.coloros.translate.engine.offline.a0;
import com.coloros.translate.utils.b0;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.m;
import com.coloros.translate.utils.u0;
import com.google.gson.reflect.TypeToken;
import com.oplus.aiunit.translation.TextRecognizeHelper;
import com.oplus.aiunit.translation.callback.ToolboxTranslateConfigCallback;
import com.oplus.aiunit.translation.request.ToolboxTranslateConfigRequest;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.z;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class SupportLanguageManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f5135b;
    public static final SupportLanguageManager INSTANCE = new SupportLanguageManager();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f5134a = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ConcurrentHashMap f5136c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Runnable f5137d = new Runnable() { // from class: com.coloros.translate.engine.text.c
        @Override // java.lang.Runnable
        public final void run() {
            SupportLanguageManager.j();
        }
    };

    @Keep
    public static final class SupportLanguageConfig {
        private Map<String, ? extends List<String>> asr;
        private final ArrayMap<String, List<String>> offlineText = new ArrayMap<>();
        private Map<String, ? extends List<String>> onlineText;
        private List<String> tts;

        public final Map<String, List<String>> getAsr() {
            return this.asr;
        }

        public final ArrayMap<String, List<String>> getOfflineText() {
            return this.offlineText;
        }

        public final Map<String, List<String>> getOnlineText() {
            return this.onlineText;
        }

        public final List<String> getTts() {
            return this.tts;
        }

        public final void setAsr(Map<String, ? extends List<String>> map) {
            this.asr = map;
        }

        public final void setOnlineText(Map<String, ? extends List<String>> map) {
            this.onlineText = map;
        }

        public final void setTts(List<String> list) {
            this.tts = list;
        }
    }

    public static final class a implements ToolboxTranslateConfigCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IRegisterListener f5138a;

        a(IRegisterListener iRegisterListener) {
            this.f5138a = iRegisterListener;
        }

        @Override // com.oplus.aiunit.translation.callback.ToolboxTranslateConfigCallback
        public void onError(int i10, String str) {
            Object objM59constructorimpl;
            IRegisterListener iRegisterListener = this.f5138a;
            try {
                r.a aVar = r.Companion;
                c0.f7098a.d("SupportLanguageManager", "getToolboxTranslateConfig: errorCode :" + i10 + " errorMsg: " + str);
                iRegisterListener.callback(i10, str);
                objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("SupportLanguageManager", "getToolboxTranslateConfig error:" + thM62exceptionOrNullimpl.getMessage());
            }
        }

        @Override // com.oplus.aiunit.translation.callback.ToolboxTranslateConfigCallback
        public void onSuccess(String result) {
            Object objM59constructorimpl;
            kotlin.jvm.internal.r.e(result, "result");
            IRegisterListener iRegisterListener = this.f5138a;
            try {
                r.a aVar = r.Companion;
                c0.f7098a.d("SupportLanguageManager", "getToolboxTranslateConfig onSuccess " + result.length());
                iRegisterListener.callback(0, result);
                objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("SupportLanguageManager", "getToolboxTranslateConfig error:" + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    private SupportLanguageManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h() {
        INSTANCE.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i() {
        Object objM59constructorimpl;
        h0 h0Var;
        c0.a aVar = c0.f7098a;
        ConcurrentHashMap concurrentHashMap = f5136c;
        aVar.d("SupportLanguageManager", "dispatchCallbackResult: " + concurrentHashMap.size());
        for (Integer num : concurrentHashMap.keySet()) {
            try {
                r.a aVar2 = r.Companion;
                IRegisterListener iRegisterListener = (IRegisterListener) f5136c.get(num);
                if (iRegisterListener != null) {
                    iRegisterListener.callback(102, f5134a);
                    h0Var = h0.INSTANCE;
                } else {
                    h0Var = null;
                }
                objM59constructorimpl = r.m59constructorimpl(h0Var);
            } catch (Throwable th) {
                r.a aVar3 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                ConcurrentHashMap concurrentHashMap2 = f5136c;
                concurrentHashMap2.remove(num);
                c0.f7098a.e("SupportLanguageManager", "dispatchCallbackResult error:" + thM62exceptionOrNullimpl + " size:" + concurrentHashMap2.size());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j() {
        c0.f7098a.q("SupportLanguageManager", "offline callback timeout ");
        if (f5135b) {
            f5135b = false;
        }
    }

    public final void g(IRegisterListener register) {
        kotlin.jvm.internal.r.e(register, "register");
        ConcurrentHashMap concurrentHashMap = f5136c;
        if (!concurrentHashMap.containsKey(Integer.valueOf(register.asBinder().hashCode()))) {
            c0.f7098a.d("SupportLanguageManager", "addSupportLanguageRegister new");
            concurrentHashMap.put(Integer.valueOf(register.asBinder().hashCode()), register);
        }
        c0.f7098a.d("SupportLanguageManager", "addSupportLanguageRegister size :" + concurrentHashMap.size() + " :" + f5134a);
        if (f5134a.length() > 0) {
            i();
        } else {
            u0.d("request_download_offline_info", new Runnable() { // from class: com.coloros.translate.engine.text.d
                @Override // java.lang.Runnable
                public final void run() {
                    SupportLanguageManager.h();
                }
            });
        }
    }

    public final void k(IRegisterListener register) {
        kotlin.jvm.internal.r.e(register, "register");
        ConcurrentHashMap concurrentHashMap = f5136c;
        if (!concurrentHashMap.containsKey(Integer.valueOf(register.asBinder().hashCode()))) {
            c0.f7098a.d("SupportLanguageManager", "removeSupportLanguageRegister contains: false");
            return;
        }
        c0.f7098a.d("SupportLanguageManager", "removeSupportLanguageRegister containsKey, original size:" + concurrentHashMap.size());
        concurrentHashMap.remove(Integer.valueOf(register.asBinder().hashCode()));
    }

    public final void l(IRegisterListener messenger) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(messenger, "messenger");
        ToolboxTranslateConfigRequest toolboxTranslateConfigRequest = new ToolboxTranslateConfigRequest();
        toolboxTranslateConfigRequest.setRequestId(UUID.randomUUID().toString());
        toolboxTranslateConfigRequest.setLanguage("zh");
        try {
            r.a aVar = r.Companion;
            TextRecognizeHelper.INSTANCE.getToolboxTranslateConfig(m.INSTANCE.a(), toolboxTranslateConfigRequest, new a(messenger));
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SupportLanguageManager", "getTranslationConfig onError:code" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void m() {
        c0.a aVar = c0.f7098a;
        aVar.d("SupportLanguageManager", "requestSupportLanguage isRequesting:" + f5135b);
        if (f5135b) {
            aVar.q("SupportLanguageManager", "requestSupportLanguage doing");
            return;
        }
        f5135b = true;
        final SupportLanguageConfig supportLanguageConfig = new SupportLanguageConfig();
        final z zVar = new z();
        final z zVar2 = new z();
        u0.e("request_download_offline_info", f5137d, 1000L);
        a2.b bVar = new a2.b() { // from class: com.coloros.translate.engine.text.SupportLanguageManager$requestSupportLanguage$resultCallback$1
            @Override // a2.b
            public void a(String asr, String text, String tts) {
                kotlin.jvm.internal.r.e(asr, "asr");
                kotlin.jvm.internal.r.e(text, "text");
                kotlin.jvm.internal.r.e(tts, "tts");
                c0.f7098a.d("SupportLanguageManager", "onOnlineLanguageConfigGet asr:" + asr.length());
                if (asr.length() == 0 || text.length() == 0 || tts.length() == 0) {
                    zVar.element = true;
                    return;
                }
                Type type = new TypeToken<Map<String, ? extends List<? extends String>>>() { // from class: com.coloros.translate.engine.text.SupportLanguageManager$requestSupportLanguage$resultCallback$1$onOnlineLanguageConfigGet$asrMap$1
                }.getType();
                kotlin.jvm.internal.r.d(type, "getType(...)");
                Map<String, ? extends List<String>> map = (Map) b0.a(asr, type);
                Type type2 = new TypeToken<Map<String, ? extends List<? extends String>>>() { // from class: com.coloros.translate.engine.text.SupportLanguageManager$requestSupportLanguage$resultCallback$1$onOnlineLanguageConfigGet$onlineTextMap$1
                }.getType();
                kotlin.jvm.internal.r.d(type2, "getType(...)");
                Map<String, ? extends List<String>> map2 = (Map) b0.a(text, type2);
                Type type3 = new TypeToken<List<? extends String>>() { // from class: com.coloros.translate.engine.text.SupportLanguageManager$requestSupportLanguage$resultCallback$1$onOnlineLanguageConfigGet$ttsList$1
                }.getType();
                kotlin.jvm.internal.r.d(type3, "getType(...)");
                List<String> list = (List) b0.a(tts, type3);
                supportLanguageConfig.setAsr(map);
                supportLanguageConfig.setOnlineText(map2);
                supportLanguageConfig.setTts(list);
                zVar.element = true;
                if (zVar2.element) {
                    SupportLanguageManager supportLanguageManager = SupportLanguageManager.INSTANCE;
                    SupportLanguageManager.f5134a = b0.b(supportLanguageConfig);
                    SupportLanguageManager.INSTANCE.i();
                    SupportLanguageManager.f5135b = false;
                    u0.f("request_download_offline_info", SupportLanguageManager.f5137d);
                }
            }

            @Override // a2.b
            public void b(Map map) {
                kotlin.jvm.internal.r.e(map, "map");
                c0.f7098a.d("SupportLanguageManager", "onOfflineLanguageConfigGetmap:" + map.size());
                if (map.isEmpty()) {
                    zVar2.element = true;
                    return;
                }
                supportLanguageConfig.getOfflineText().clear();
                supportLanguageConfig.getOfflineText().putAll((Map<? extends String, ? extends List<String>>) map);
                zVar2.element = true;
                if (zVar.element) {
                    SupportLanguageManager supportLanguageManager = SupportLanguageManager.INSTANCE;
                    SupportLanguageManager.f5134a = b0.b(supportLanguageConfig);
                    SupportLanguageManager.INSTANCE.i();
                    SupportLanguageManager.f5135b = false;
                    u0.f("request_download_offline_info", SupportLanguageManager.f5137d);
                }
            }
        };
        a0.INSTANCE.e(bVar);
        b.INSTANCE.d(bVar);
    }
}
