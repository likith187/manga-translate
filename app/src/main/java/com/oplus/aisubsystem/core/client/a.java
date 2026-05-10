package com.oplus.aisubsystem.core.client;

import android.net.Uri;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.ParamPackage;
import com.oplus.aiunit.core.callback.IAIMessenger;
import com.oplus.aiunit.core.callback.IInferenceCallback;
import com.oplus.aiunit.core.callback.IProcessCallback;
import com.oplus.aiunit.core.data.ParamsKt;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.j;
import n8.k;
import n8.r;
import n8.s;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final C0123a Companion = new C0123a(null);
    public static final String PARAM_KEY_APP_FOREGROUND = "ai::key::app_foreground";
    public static final String PARAM_KEY_CLIENT_INFERENCE_CALLBACK = "package::client_inference_callback";
    public static final String PARAM_KEY_IMAGES_URI = "package::images_uri";
    public static final String PARAM_KEY_JSON_RESULT = "package::json_result";
    public static final String PARAM_KEY_JSON_SOURCE = "package::json_source";
    public static final String PARAM_KEY_PROCESS_CALLBACK_NAME = "callback::";
    public static final String PARAM_KEY_REQUEST_ID = "package::request_id";
    public static final String PARAM_KEY_RUNNING_ID = "package::running_id";
    public static final String PARAM_KEY_RUNNING_MAXIMUM_MEMORY = "package::running_maximum_memory";
    public static final String PARAM_KEY_RUNNING_TYPE = "package::running_type";
    public static final String PARAM_KEY_SURVIVAL_LIFECYCLE = "package::survival_lifecycle";
    public static final String PARAM_KEY_TEXTS_URI = "package::texts_uri";
    public static final String PARAM_KEY_TIMEOUT_TIME = "package::timeout_time";
    public static final String PARAM_KEY_USER_CLICK = "ai::key::user_click";
    private static final String TAG = "AiRequest";
    private final j framePackage$delegate = k.b(c.INSTANCE);

    /* JADX INFO: renamed from: com.oplus.aisubsystem.core.client.a$a, reason: collision with other inner class name */
    public static final class C0123a {
        private C0123a() {
        }

        public final a a(l block) {
            r.e(block, "block");
            b bVar = new b();
            block.invoke(bVar);
            return bVar.buildRequest(a.class);
        }

        public /* synthetic */ C0123a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static class b {
        private final ParamPackage paramPackage;

        public b() {
            ParamPackage paramPackage = new ParamPackage();
            paramPackage.setParam(a.PARAM_KEY_REQUEST_ID, UUID.randomUUID().toString());
            this.paramPackage = paramPackage;
        }

        public final b addProcessCallback(IProcessCallback callback) {
            Object objM59constructorimpl;
            r.e(callback, "callback");
            try {
                r.a aVar = n8.r.Companion;
                this.paramPackage.setParam(a.PARAM_KEY_PROCESS_CALLBACK_NAME + callback.name(), callback);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                z5.c.c(a.TAG, "setProcessCallback", thM62exceptionOrNullimpl);
            }
            return this;
        }

        public final <T extends a> T buildRequest(Class<T> clazz) {
            Object objM59constructorimpl;
            kotlin.jvm.internal.r.e(clazz, "clazz");
            try {
                r.a aVar = n8.r.Companion;
                Constructor<T> declaredConstructor = clazz.getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                T tNewInstance = declaredConstructor.newInstance(null);
                tNewInstance.getFramePackage().mergeParam(this.paramPackage);
                objM59constructorimpl = n8.r.m59constructorimpl(tNewInstance);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                z5.c.c(a.TAG, "Error creating instance of ".concat(clazz.getName()), thM62exceptionOrNullimpl);
            }
            s.b(objM59constructorimpl);
            kotlin.jvm.internal.r.d(objM59constructorimpl, "getOrThrow(...)");
            return (T) objM59constructorimpl;
        }

        public final ParamPackage getParamPackage() {
            return this.paramPackage;
        }

        public final b setAiSettings(AiSettings aiSettings) {
            kotlin.jvm.internal.r.e(aiSettings, "aiSettings");
            Integer runningType = aiSettings.getRunningType();
            if (runningType != null) {
                this.paramPackage.setParam(a.PARAM_KEY_RUNNING_TYPE, Integer.valueOf(runningType.intValue()));
            }
            Integer runningId = aiSettings.getRunningId();
            if (runningId != null) {
                this.paramPackage.setParam(a.PARAM_KEY_RUNNING_ID, Integer.valueOf(runningId.intValue()));
            }
            Long survivalLifecycle = aiSettings.getSurvivalLifecycle();
            if (survivalLifecycle != null) {
                this.paramPackage.setParam(a.PARAM_KEY_SURVIVAL_LIFECYCLE, Long.valueOf(survivalLifecycle.longValue()));
            }
            Long runningMaximumMemory = aiSettings.getRunningMaximumMemory();
            if (runningMaximumMemory != null) {
                this.paramPackage.setParam(a.PARAM_KEY_RUNNING_MAXIMUM_MEMORY, Long.valueOf(runningMaximumMemory.longValue()));
            }
            Boolean userClick = aiSettings.getUserClick();
            if (userClick != null) {
                this.paramPackage.setParam(a.PARAM_KEY_USER_CLICK, userClick);
            }
            Boolean appForeground = aiSettings.getAppForeground();
            if (appForeground != null) {
                this.paramPackage.setParam(a.PARAM_KEY_APP_FOREGROUND, appForeground);
            }
            return this;
        }

        public final b setApiLevel(int i10) {
            this.paramPackage.setParam(ParamsKt.PARAM_KEY_API_LEVEL, Integer.valueOf(i10));
            return this;
        }

        public final b setClientMessenger(IAIMessenger messenger) {
            Object objM59constructorimpl;
            kotlin.jvm.internal.r.e(messenger, "messenger");
            try {
                r.a aVar = n8.r.Companion;
                this.paramPackage.setParam(ParamsKt.PARAM_KEY_CLIENT_MESSENGER, messenger);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                z5.c.c(a.TAG, "setClientCallback", thM62exceptionOrNullimpl);
            }
            return this;
        }

        public final b setImagesUri(Map<String, ? extends Uri> images) {
            h0 h0Var;
            kotlin.jvm.internal.r.e(images, "images");
            HashMap map = new HashMap();
            for (Map.Entry<String, ? extends Uri> entry : images.entrySet()) {
                String key = entry.getKey();
                String string = entry.getValue().toString();
                kotlin.jvm.internal.r.d(string, "toString(...)");
                map.put(key, string);
            }
            String strA = z5.a.a(map);
            if (strA != null) {
                this.paramPackage.setParam(a.PARAM_KEY_IMAGES_URI, strA);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            if (h0Var == null) {
                z5.c.b(a.TAG, "setImagesUri failed");
            }
            return this;
        }

        public final b setInferenceCallback(IInferenceCallback callback) {
            Object objM59constructorimpl;
            kotlin.jvm.internal.r.e(callback, "callback");
            try {
                r.a aVar = n8.r.Companion;
                this.paramPackage.setParam(a.PARAM_KEY_CLIENT_INFERENCE_CALLBACK, callback);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                z5.c.c(a.TAG, "setInferenceCallback", thM62exceptionOrNullimpl);
            }
            return this;
        }

        public final b setJsonResult(String jsonResult) {
            kotlin.jvm.internal.r.e(jsonResult, "jsonResult");
            this.paramPackage.setParam("package::json_result", jsonResult);
            return this;
        }

        public final b setJsonSource(String jsonSource) {
            kotlin.jvm.internal.r.e(jsonSource, "jsonSource");
            this.paramPackage.setParam("package::json_source", jsonSource);
            return this;
        }

        public final b setOapApi(String oapApi) {
            kotlin.jvm.internal.r.e(oapApi, "oapApi");
            this.paramPackage.setParam("package::unit_name", oapApi);
            return this;
        }

        public final b setOapId(int i10) {
            this.paramPackage.setParam("package::detector_type", Integer.valueOf(i10));
            return this;
        }

        public final b setPackageName(String packageName) {
            kotlin.jvm.internal.r.e(packageName, "packageName");
            this.paramPackage.setParam(ParamsKt.PARAM_KEY_PACKAGE_NAME, packageName);
            return this;
        }

        public final b setPackageVersion(int i10) {
            this.paramPackage.setParam(ParamsKt.PARAM_KEY_PACKAGE_VERSION, Integer.valueOf(i10));
            return this;
        }

        public final b setRequestId(String requestId) {
            kotlin.jvm.internal.r.e(requestId, "requestId");
            this.paramPackage.setParam(a.PARAM_KEY_REQUEST_ID, requestId);
            return this;
        }

        public final b setSdkVersion(int i10) {
            this.paramPackage.setParam(ParamsKt.PARAM_KEY_SDK_VERSION, Integer.valueOf(i10));
            return this;
        }

        public final b setSdkVersionName(String sdkVersionName) {
            kotlin.jvm.internal.r.e(sdkVersionName, "sdkVersionName");
            this.paramPackage.setParam(ParamsKt.PARAM_KEY_SDK_VERSION_NAME, sdkVersionName);
            return this;
        }

        public final b setTextsUri(List<? extends Uri> texts) {
            h0 h0Var;
            kotlin.jvm.internal.r.e(texts, "texts");
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = texts.iterator();
            while (it.hasNext()) {
                String string = ((Uri) it.next()).toString();
                kotlin.jvm.internal.r.d(string, "toString(...)");
                arrayList.add(string);
            }
            String strA = z5.a.a(arrayList);
            if (strA != null) {
                this.paramPackage.setParam(a.PARAM_KEY_TEXTS_URI, strA);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            if (h0Var == null) {
                z5.c.b(a.TAG, "setTextsUri failed");
            }
            return this;
        }

        public final b setTimeout(long j10) {
            this.paramPackage.setParam(a.PARAM_KEY_TIMEOUT_TIME, Long.valueOf(j10));
            return this;
        }
    }

    public static final class c extends kotlin.jvm.internal.s implements w8.a {
        public static final c INSTANCE = new c();

        public c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final FramePackage mo8invoke() {
            return new FramePackage();
        }
    }

    public static final a build(l lVar) {
        return Companion.a(lVar);
    }

    public final FramePackage getFramePackage() {
        return (FramePackage) this.framePackage$delegate.getValue();
    }
}
