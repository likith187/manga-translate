package com.coloros.translate.engine.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.IBinder;
import com.coloros.translate.engine.IOfflineTranslateEngine;
import com.coloros.translate.engine.ITranslateServiceBinder;
import com.coloros.translate.utils.FreezeUtil;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.q0;

/* JADX INFO: loaded from: classes.dex */
public class TranslateService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.coloros.translate.engine.service.a f5120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f5121b;

    class a extends ITranslateServiceBinder.Stub {
        a() {
        }

        @Override // com.coloros.translate.engine.ITranslateServiceBinder
        public IOfflineTranslateEngine generateOfflineTranslateEngine(String str) {
            c0.o("TranslateService", "generateTranslateEngine " + str);
            String strD = TranslateService.d(TranslateService.this.f5121b, Binder.getCallingUid());
            if ("com.coloros.ocrscanner".equals(strD)) {
                return TranslateService.this.f5120a.k(TranslateService.this.f5121b, str);
            }
            c0.o("TranslateService", "invalid package:" + strD);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized String d(Context context, int i10) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        String[] packagesForUid = packageManager.getPackagesForUid(i10);
        if (packagesForUid != null && packagesForUid.length != 0) {
            return packagesForUid[0];
        }
        return null;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        c0.o("TranslateService", "onBind");
        q0.b(this, "1");
        FreezeUtil.b(this);
        return new a();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        c0.o("TranslateService", "onCreate");
        this.f5121b = this;
        this.f5120a = new com.coloros.translate.engine.service.a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        c0.i("TranslateService", "onDestroy");
        FreezeUtil.c(this);
        q0.b(this, "3");
        this.f5120a.g();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        q0.b(this, "2");
        return super.onUnbind(intent);
    }
}
