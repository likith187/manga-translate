package com.oplus.aiunit.core.protocol;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import com.oplus.aiunit.core.data.AIConfig;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.backup.sdk.common.utils.Constants;
import com.oplus.providers.AppSettings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.r;

/* JADX INFO: loaded from: classes.dex */
public final class AIProtocolObserver extends ContentObserver {
    public static final Companion Companion = new Companion(null);
    private static final String SETTINGS_PROTOCOL_KEY = "ai::settings::global::protocol::";
    private final String TAG;
    private final Context context;
    private final String detectName;
    private final Handler handler;
    private final AIObserver observer;
    private final CopyOnWriteArrayList<AIObserver> observers;
    private Bundle subscribed;

    public static final class Companion {
        private Companion() {
        }

        private final String addShell(String str) {
            return "[" + str + "].T" + System.currentTimeMillis();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getProtocolSettingsKey(String str) {
            return AIProtocolObserver.SETTINGS_PROTOCOL_KEY + str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String removeShell(String str) {
            int i10;
            Object obj;
            String str2;
            String str3;
            boolean z10;
            String str4;
            List listU0 = r.u0(str, new String[]{"]"}, false, 0, 6, null);
            if (listU0.isEmpty()) {
                i10 = 4;
                obj = null;
                str2 = "[";
                str3 = "";
                z10 = false;
                str4 = str;
            } else {
                str4 = (String) listU0.get(0);
                i10 = 4;
                obj = null;
                str2 = "[";
                str3 = "";
                z10 = false;
            }
            return r.N0(r.B(r.B(str4, str2, str3, z10, i10, obj), "]", "", false, 4, null)).toString();
        }

        public final List<AIConfig> decode(String detectName, String str) {
            kotlin.jvm.internal.r.e(detectName, "detectName");
            kotlin.jvm.internal.r.e(str, "str");
            if (str.length() == 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = r.u0(str, new String[]{Constants.DataMigration.SPLIT_TAG}, false, 0, 6, null).iterator();
            while (it.hasNext()) {
                List listU0 = r.u0(r.B((String) it.next(), Constants.DataMigration.SPLIT_TAG, "", false, 4, null), new String[]{"-"}, false, 0, 6, null);
                AIConfig aIConfig = new AIConfig(detectName, 0, 0L);
                if (!listU0.isEmpty()) {
                    Integer numM = r.m(r.N0((String) listU0.get(0)).toString());
                    aIConfig.setUnitId(numM != null ? numM.intValue() : 0);
                }
                if (listU0.size() > 1) {
                    Long lO = r.o(r.N0((String) listU0.get(1)).toString());
                    aIConfig.setUnitVersion(lO != null ? lO.longValue() : 0L);
                }
                if (listU0.size() > 2) {
                    Integer numM2 = r.m(r.N0((String) listU0.get(2)).toString());
                    aIConfig.setMinSdk(numM2 != null ? numM2.intValue() : 0);
                }
                if (listU0.size() > 3) {
                    Integer numM3 = r.m(r.N0((String) listU0.get(3)).toString());
                    aIConfig.setMinApi(numM3 != null ? numM3.intValue() : 0);
                    arrayList.add(aIConfig);
                }
            }
            return arrayList;
        }

        public final String encode(List<AIConfig> configList) {
            kotlin.jvm.internal.r.e(configList, "configList");
            int size = configList.size();
            String str = "";
            if (size == 0) {
                return "";
            }
            int i10 = 0;
            for (Object obj : configList) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    o.q();
                }
                AIConfig aIConfig = (AIConfig) obj;
                str = (((str + aIConfig.getUnitId() + '-') + aIConfig.getUnitVersion() + '-') + aIConfig.getMinSdk() + '-') + aIConfig.getMinApi();
                if (i10 < size - 1) {
                    str = str + ';';
                }
                i10 = i11;
            }
            return str;
        }

        public final void update$aiunit_sdk_toolkits_release(Context context, String detectName, List<AIConfig> configList, boolean z10) {
            String strRemoveShell;
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(detectName, "detectName");
            kotlin.jvm.internal.r.e(configList, "configList");
            String protocolSettingsKey = getProtocolSettingsKey(detectName);
            String string = AppSettings.Global.getString(context.getContentResolver(), protocolSettingsKey);
            if (string == null || string.length() == 0) {
                strRemoveShell = "";
            } else {
                kotlin.jvm.internal.r.b(string);
                strRemoveShell = removeShell(string);
            }
            String strEncode = encode(configList);
            if (!kotlin.jvm.internal.r.a(strRemoveShell, strEncode) || z10) {
                AppSettings.Global.putString(context.getContentResolver(), protocolSettingsKey, addShell(strEncode));
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AIProtocolObserver(Context context, String detectName, AIObserver observer, Handler handler) {
        super(handler);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(detectName, "detectName");
        kotlin.jvm.internal.r.e(observer, "observer");
        kotlin.jvm.internal.r.e(handler, "handler");
        this.context = context;
        this.detectName = detectName;
        this.observer = observer;
        this.handler = handler;
        this.TAG = "AIContentObserver(" + detectName + ')';
        this.observers = new CopyOnWriteArrayList<>();
    }

    public static final List<AIConfig> decode(String str, String str2) {
        return Companion.decode(str, str2);
    }

    public static final String encode(List<AIConfig> list) {
        return Companion.encode(list);
    }

    private static final String getProtocolSettingsKey(String str) {
        return Companion.getProtocolSettingsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unregister$lambda$1(AIProtocolObserver this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Iterator<T> it = this$0.observers.iterator();
        while (it.hasNext()) {
            ((AIObserver) it.next()).onSubscribeResult(0);
        }
    }

    public final void add(AIObserver o10) {
        kotlin.jvm.internal.r.e(o10, "o");
        if (this.observers.contains(o10)) {
            return;
        }
        this.observers.add(o10);
    }

    public final Context getContext() {
        return this.context;
    }

    public final String getDetectName() {
        return this.detectName;
    }

    public final Handler getHandler() {
        return this.handler;
    }

    public final AIObserver getObserver() {
        return this.observer;
    }

    public final void newSubscribe(Bundle s10) {
        kotlin.jvm.internal.r.e(s10, "s");
        this.subscribed = s10;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        AILog.d(this.TAG, "onChange " + z10);
    }

    public final boolean register(AIObserver o10) {
        kotlin.jvm.internal.r.e(o10, "o");
        try {
            this.context.getContentResolver().registerContentObserver(AppSettings.Global.getUriFor(Companion.getProtocolSettingsKey(this.detectName)), false, this);
            add(o10);
            return true;
        } catch (Throwable th) {
            AILog.e(this.TAG, "register observe err. " + th.getMessage());
            return false;
        }
    }

    public final boolean subscribeEquals(Bundle body) {
        kotlin.jvm.internal.r.e(body, "body");
        Bundle bundle = this.subscribed;
        if (bundle != null) {
            for (String str : body.keySet()) {
                if (bundle.containsKey(str) && kotlin.jvm.internal.r.a(bundle.get(str), body.get(str))) {
                }
            }
            return true;
        }
        return false;
    }

    public final void unregister() {
        try {
            this.handler.post(new Runnable() { // from class: com.oplus.aiunit.core.protocol.e
                @Override // java.lang.Runnable
                public final void run() {
                    AIProtocolObserver.unregister$lambda$1(this.f10866a);
                }
            });
            this.observers.clear();
            this.subscribed = null;
            this.context.getContentResolver().unregisterContentObserver(this);
        } catch (Throwable th) {
            AILog.e(this.TAG, "unregister err. " + th.getMessage());
        }
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10, Uri uri) {
        ContentResolver contentResolver = this.context.getContentResolver();
        Companion companion = Companion;
        String string = AppSettings.Global.getString(contentResolver, companion.getProtocolSettingsKey(this.detectName));
        AILog.d(this.TAG, "onChange " + z10 + ". " + string);
        if (string == null || string.length() == 0) {
            return;
        }
        String str = this.detectName;
        kotlin.jvm.internal.r.b(string);
        List<AIConfig> listDecode = companion.decode(str, companion.removeShell(string));
        if (listDecode != null) {
            this.observer.onProtocolChange(this.detectName, listDecode);
        }
    }
}
