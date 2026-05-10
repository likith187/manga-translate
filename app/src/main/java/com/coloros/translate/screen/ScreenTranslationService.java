package com.coloros.translate.screen;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.OplusWhiteListManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import com.coloros.translate.screen.receiver.ScreenTranslationReceiver;
import com.coloros.translate.screen.translate.download.a;
import com.coloros.translate.screen.translate.engine.language.e;
import com.coloros.translate.screen.translate.engine.language.j;
import com.coloros.translate.screen.translate.engine.translate.TranslateManager;
import com.coloros.translate.screen.utils.f;
import com.coloros.translate.screen.utils.k;
import com.coloros.translate.screen.utils.t;
import com.coloros.translate.screen.utils.u;
import com.coloros.translate.screen.utils.v;
import com.coloros.translate.screen.utils.w;
import com.coloros.translate.screen.widget.ScreenTranslationTranslationView;
import com.coloros.translate.screen.widget.a0;
import com.coloros.translate.utils.c0;
import com.oplus.app.OplusAppEnterInfo;
import com.oplus.app.OplusAppExitInfo;
import com.oplus.app.OplusAppSwitchConfig;
import com.oplus.app.OplusAppSwitchManager;
import com.oplus.backup.sdk.common.host.BREngineConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class ScreenTranslationService extends Service implements e {

    /* JADX INFO: renamed from: m */
    private static AtomicBoolean f5489m = new AtomicBoolean(false);

    /* JADX INFO: renamed from: n */
    private static AtomicBoolean f5490n = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c */
    private AppSwitchObserver f5493c;

    /* JADX INFO: renamed from: f */
    private OplusWhiteListManager f5494f;

    /* JADX INFO: renamed from: h */
    private String f5495h;

    /* JADX INFO: renamed from: j */
    private com.coloros.translate.screen.translate.download.a f5497j;

    /* JADX INFO: renamed from: k */
    private Handler f5498k;

    /* JADX INFO: renamed from: a */
    private final Handler f5491a = new Handler();

    /* JADX INFO: renamed from: b */
    private ScreenTranslationTranslationView f5492b = null;

    /* JADX INFO: renamed from: i */
    private boolean f5496i = false;

    /* JADX INFO: renamed from: l */
    private AtomicBoolean f5499l = new AtomicBoolean(false);

    private static class AppSwitchObserver implements OplusAppSwitchManager.OnAppSwitchObserver {
        private final HashSet<String> mNotSupportTagList;

        public AppSwitchObserver() {
            HashSet<String> hashSet = new HashSet<>();
            this.mNotSupportTagList = hashSet;
            hashSet.add("com.tencent.av.ui.VideoInviteActivity");
            hashSet.add("com.tencent.av.ui.AVActivity");
            hashSet.add("com.tencent.mm.plugin.voip.ui.VideoActivity");
            hashSet.add("com.android.incallui.OppoInCallActivity");
        }

        public void onActivityEnter(OplusAppEnterInfo oplusAppEnterInfo) {
            String str = oplusAppEnterInfo.targetName;
            c0.i("ScreenTranslationService", "onActivityEnter targetName is: " + str);
            if (this.mNotSupportTagList.contains(str)) {
                ScreenTranslationService.f5489m.set(true);
            }
        }

        public void onActivityExit(OplusAppExitInfo oplusAppExitInfo) {
            String str = oplusAppExitInfo.targetName;
            c0.i("ScreenTranslationService", "onActivityExit targetName is: " + str);
            if (this.mNotSupportTagList.contains(str)) {
                ScreenTranslationService.f5489m.set(false);
            }
        }

        public void onAppEnter(OplusAppEnterInfo oplusAppEnterInfo) {
            String str = oplusAppEnterInfo.targetName;
            c0.i("ScreenTranslationService", "onAppEnter app is: " + str);
            if ("com.android.permissioncontroller".equalsIgnoreCase(str)) {
                ScreenTranslationService.f5489m.set(true);
            }
            if ("com.oplus.screenshot".equalsIgnoreCase(str)) {
                ScreenTranslationService.f5490n.set(true);
            }
        }

        public void onAppExit(OplusAppExitInfo oplusAppExitInfo) {
            String str = oplusAppExitInfo.targetName;
            c0.i("ScreenTranslationService", "onAppExit app is: " + str);
            if ("com.android.permissioncontroller".equalsIgnoreCase(str)) {
                ScreenTranslationService.f5489m.set(false);
            }
            if ("com.oplus.screenshot".equalsIgnoreCase(str)) {
                ScreenTranslationService.f5490n.set(false);
            }
        }
    }

    class a implements a.c {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Intent f5500a;

        a(Intent intent) {
            this.f5500a = intent;
        }

        public /* synthetic */ void d(Intent intent) {
            ScreenTranslationService.this.k(intent);
        }

        @Override // com.coloros.translate.screen.translate.download.a.c
        public void a(String str) {
            if (ScreenTranslationService.this.f5498k == null) {
                c0.o("ScreenTranslationService", "downloadFail: service is die, ignore" + str);
                return;
            }
            c0.m("ScreenTranslationService", "downloadFail errorMessage:" + str);
            if (str.equals("download_aiunit_scene_data_is_null") || str.equals("download_aiunit_not_support")) {
                u.b(R$string.plugin_down_fail);
            }
            ScreenTranslationService.this.stopSelf();
        }

        @Override // com.coloros.translate.screen.translate.download.a.c
        public void b() {
            if (ScreenTranslationService.this.f5498k == null) {
                c0.o("ScreenTranslationService", "downloadSuccess: service is die, ignore");
                return;
            }
            Handler handler = ScreenTranslationService.this.f5498k;
            final Intent intent = this.f5500a;
            handler.post(new Runnable() { // from class: com.coloros.translate.screen.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5516a.d(intent);
                }
            });
        }
    }

    private void i(int i10) {
        c0.i("ScreenTranslationService", "createTranslationView()");
        r();
        if (TextUtils.equals(l2.a.d(), "com.coloros.colordirectservice")) {
            i10 = 1;
        }
        ScreenTranslationTranslationView screenTranslationTranslationView = new ScreenTranslationTranslationView(this);
        this.f5492b = screenTranslationTranslationView;
        screenTranslationTranslationView.w0(i10, false);
        q();
    }

    public void k(Intent intent) {
        if (k.f(this)) {
            c0.i("ScreenTranslationService", "current is normal");
            if (!v.c(this) && getResources().getConfiguration().orientation == 2) {
                u.b(R$string.landscape_not_support);
                c0.i("ScreenTranslationService", "onCreate, landscape status, stop self");
                this.f5491a.postDelayed(new Runnable() { // from class: com.coloros.translate.screen.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5502a.stopSelf();
                    }
                }, 1500L);
                return;
            }
        } else {
            c0.i("ScreenTranslationService", "current is not small screen");
        }
        if (intent == null) {
            c0.j("ScreenTranslationService", "Intent is null");
            return;
        }
        this.f5496i = true;
        l(intent);
        try {
            String stringExtra = intent.getStringExtra("extra_from_package");
            HashMap map = new HashMap();
            map.put("source_appname", stringExtra);
            String str = "";
            if ("com.coloros.colordirectservice".equals(stringExtra)) {
                str = "recog_screen";
            } else if ("com.coloros.gallery3d".equals(stringExtra)) {
                str = "photo";
            } else if ("com.coloros.smartsidebar".equals(stringExtra)) {
                str = "sidebar";
            }
            map.put(BREngineConfig.SOURCE, str);
            f.a(this, "event_screen_enter", map, w.e());
        } catch (Exception e10) {
            c0.k("ScreenTranslationService", "getIntent exception: " + e10.getMessage(), e10);
        }
    }

    private void l(Intent intent) {
        if (com.coloros.translate.screen.utils.c.a(this)) {
            a0.f(this, intent);
            stopSelf();
            return;
        }
        j.b bVar = j.f5577i;
        bVar.a().B();
        bVar.a().H(this);
        l2.a.h(intent);
        int iE = l2.a.e();
        t.i(new Runnable() { // from class: com.coloros.translate.screen.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f5514a.o();
            }
        });
        i(iE);
    }

    public static boolean m() {
        return f5489m.get();
    }

    public static boolean n() {
        return f5490n.get();
    }

    public /* synthetic */ void o() {
        com.coloros.translate.screen.translate.business.b.INSTANCE.d(this);
    }

    public /* synthetic */ void p() {
        ScreenTranslationTranslationView screenTranslationTranslationView = this.f5492b;
        if (screenTranslationTranslationView != null) {
            screenTranslationTranslationView.L0();
        }
    }

    private void q() {
        this.f5493c = new AppSwitchObserver();
        OplusAppSwitchConfig oplusAppSwitchConfig = new OplusAppSwitchConfig();
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.permissioncontroller");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("com.tencent.av.ui.VideoInviteActivity");
        arrayList2.add("com.tencent.av.ui.AVActivity");
        arrayList2.add("com.tencent.mm.plugin.voip.ui.VideoActivity");
        arrayList2.add("com.android.incallui.OppoInCallActivity");
        oplusAppSwitchConfig.addAppConfig(2, arrayList);
        oplusAppSwitchConfig.addAppConfig(1, arrayList2);
        OplusAppSwitchManager.getInstance().registerAppSwitchObserver(this, this.f5493c, oplusAppSwitchConfig);
    }

    private void r() {
        c0.i("ScreenTranslationService", "registerProcessProtect()");
        if (this.f5494f == null) {
            this.f5494f = new OplusWhiteListManager(this);
        }
        this.f5494f.addStageProtectInfo("com.coloros.ocrscanner", 7200000L);
    }

    private void s() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(new NotificationChannel("Screen_Channel_id", getString(R$string.screen_translation_name), 0));
            Intent intent = new Intent(this, (Class<?>) ScreenTranslationReceiver.class);
            intent.setAction("com.coloros.translate.screen.exit");
            Notification notificationBuild = new Notification.Builder(this, "Screen_Channel_id").setContentTitle(getString(R$string.screen_trans_is_running)).setContentText(getString(R$string.screen_trans_notification_desc)).setSmallIcon(com.coloros.translate.base.R$drawable.ic_app_launcher).addAction(com.coloros.translate.base.R$drawable.ic_app_launcher, getString(R$string.screen_trans_notification_exit), PendingIntent.getBroadcast(this, 100, intent, 67108864)).setChannelId("Screen_Channel_id").build();
            try {
                if (Build.VERSION.SDK_INT > 33) {
                    startForeground(2001, notificationBuild, 2);
                } else {
                    startForeground(2001, notificationBuild);
                }
            } catch (Exception e10) {
                c0.j("ScreenTranslationService", "startForeground " + e10.getMessage());
            }
        }
    }

    @Override // com.coloros.translate.screen.translate.engine.language.e
    public void a() {
        t.g(new Runnable() { // from class: com.coloros.translate.screen.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f5515a.p();
            }
        });
    }

    @Override // com.coloros.translate.screen.translate.engine.language.e
    public void b() {
        c0.i("ScreenTranslationService", "onLanguageSwitched");
        ScreenTranslationTranslationView screenTranslationTranslationView = this.f5492b;
        if (screenTranslationTranslationView != null) {
            screenTranslationTranslationView.z0();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = super.getResources();
        if (resources.getConfiguration().fontScale != 1.0f) {
            Configuration configuration = resources.getConfiguration();
            configuration.fontScale = 1.0f;
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        }
        return resources;
    }

    public void j() {
        this.f5499l.set(true);
        ScreenTranslationTranslationView screenTranslationTranslationView = this.f5492b;
        if (screenTranslationTranslationView != null) {
            screenTranslationTranslationView.x0();
            this.f5492b = null;
        }
        stopSelf();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Locale locale;
        super.onConfigurationChanged(configuration);
        c0.i("ScreenTranslationService", "onConfigurationChanged()");
        if (configuration != null && (locale = configuration.locale) != null) {
            String language = locale.getLanguage();
            c0.i("ScreenTranslationService", "mPreLanguage = " + this.f5495h + ", newLanguage = " + language);
            if (!language.isEmpty() && !language.equals(this.f5495h)) {
                s();
                this.f5495h = language;
            }
        }
        ScreenTranslationTranslationView screenTranslationTranslationView = this.f5492b;
        if (screenTranslationTranslationView == null || configuration == null) {
            return;
        }
        screenTranslationTranslationView.v0(configuration);
    }

    @Override // android.app.Service
    public void onCreate() {
        c0.i("ScreenTranslationService", "screen translation service create");
        super.onCreate();
        this.f5498k = new Handler(Looper.getMainLooper());
        this.f5497j = new com.coloros.translate.screen.translate.download.a(getApplicationContext());
        n6.a.a(this);
        this.f5495h = getResources().getConfiguration().locale.getLanguage();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        c0.i("ScreenTranslationService", "screen translation service destroy");
        Handler handler = this.f5498k;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f5498k = null;
        }
        TranslateManager.Companion.getINSTANCE().destroy();
        j.f5577i.a().I();
        this.f5496i = false;
        t();
        u();
        ScreenTranslationTranslationView screenTranslationTranslationView = this.f5492b;
        if (screenTranslationTranslationView != null) {
            screenTranslationTranslationView.x0();
        }
        l2.a.g();
        f5489m.set(false);
        f5490n.set(false);
        this.f5499l.set(false);
        stopForeground(true);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        c0.i("ScreenTranslationService", "onStartCommand():" + this.f5496i + ",isPendingDestroy:" + this.f5499l.get());
        if (!this.f5499l.get() && intent != null) {
            if (intent.hasExtra("extra_exit")) {
                j();
                return 2;
            }
            s();
            if (l2.a.f(intent)) {
                String stringExtra = intent.getStringExtra("extra_from_package");
                if (!this.f5496i || l2.a.b(stringExtra)) {
                    c0.i("ScreenTranslationService", "auto_exit:exit,this call is from the caller!: " + stringExtra + ",mHasInit:" + this.f5496i);
                    j();
                }
            } else if (a0.o()) {
                a0.h(this, intent);
                stopSelf();
            } else {
                if (this.f5496i) {
                    int intExtra = intent.getIntExtra("type", -1);
                    ScreenTranslationTranslationView screenTranslationTranslationView = this.f5492b;
                    if (screenTranslationTranslationView != null) {
                        screenTranslationTranslationView.g0(intExtra);
                    }
                    c0.i("ScreenTranslationService", "service has init ,return:" + intExtra);
                    return 2;
                }
                this.f5497j.l("ai_omni");
                this.f5497j.m(new a(intent));
                if (this.f5497j.e("ai_omni")) {
                    k(intent);
                } else {
                    this.f5497j.d("ai_omni");
                }
            }
        }
        return 2;
    }

    public void t() {
        c0.i("ScreenTranslationService", "unRegisterProcessProtect()");
        OplusWhiteListManager oplusWhiteListManager = this.f5494f;
        if (oplusWhiteListManager != null) {
            oplusWhiteListManager.removeStageProtectInfo("com.coloros.ocrscanner");
        }
    }

    public void u() {
        if (this.f5493c != null) {
            OplusAppSwitchManager.getInstance().unregisterAppSwitchObserver(this, this.f5493c);
        }
    }
}
