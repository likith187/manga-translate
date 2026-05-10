package com.coloros.translate;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.coloros.translate.EarPhoneTranslateService;
import com.coloros.translate.engine.IEarBinderCallback;
import com.coloros.translate.engine.IEarControlBtnCallback;
import com.coloros.translate.engine.IEarphoneTranslateBinder;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class EarPhoneTranslateService extends Service {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f4718h = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4719a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4720b = 1000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f4721c = new c();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b f4722f = new b();

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends IEarphoneTranslateBinder.Stub {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IEarBinderCallback f4723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final IBinder.DeathRecipient f4724b = new IBinder.DeathRecipient() { // from class: com.coloros.translate.a
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                EarPhoneTranslateService.b.b();
            }
        };

        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b() {
            c0.f7098a.i("EarPhoneTranslateService", "deathRecipient died");
        }

        @Override // com.coloros.translate.engine.IEarphoneTranslateBinder
        public Bundle changeMicState(Bundle bundle) {
            c0.f7098a.d("EarPhoneTranslateService", "changeMicState");
            EarPhoneTranslateService.this.f4719a = -1;
            EarPhoneTranslateService.this.f4720b = 1000;
            n0.a aVarB = n0.a.b(EarPhoneTranslateService.this.getApplication());
            Intent intent = new Intent("action.oplus.translate.conversation.foreground");
            EarPhoneTranslateService earPhoneTranslateService = EarPhoneTranslateService.this;
            Bundle bundle2 = new Bundle();
            bundle2.putBinder("earBinder", earPhoneTranslateService.f4721c);
            intent.putExtras(bundle2);
            aVarB.e(intent);
            Bundle bundle3 = new Bundle();
            EarPhoneTranslateService earPhoneTranslateService2 = EarPhoneTranslateService.this;
            m2.a aVar = m2.a.INSTANCE;
            bundle3.putInt(aVar.a(), earPhoneTranslateService2.f4719a);
            bundle3.putInt(aVar.b(), earPhoneTranslateService2.f4720b);
            return bundle3;
        }

        @Override // com.coloros.translate.engine.IEarphoneTranslateBinder
        public int getApiVersion() {
            return 1;
        }

        @Override // com.coloros.translate.engine.IEarphoneTranslateBinder
        public void registerCallBack(IEarBinderCallback iEarBinderCallback) {
            Object objM59constructorimpl;
            Object objM59constructorimpl2;
            IBinder iBinderAsBinder;
            if (r.a(this.f4723a, iEarBinderCallback)) {
                return;
            }
            c0.f7098a.d("EarPhoneTranslateService", "registerCallBack");
            h0 h0Var = null;
            try {
                r.a aVar = n8.r.Companion;
                IEarBinderCallback iEarBinderCallback2 = this.f4723a;
                objM59constructorimpl = n8.r.m59constructorimpl((iEarBinderCallback2 == null || (iBinderAsBinder = iEarBinderCallback2.asBinder()) == null) ? null : Boolean.valueOf(iBinderAsBinder.unlinkToDeath(this.f4724b, 0)));
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("EarPhoneTranslateService", "unlinkToDeath " + thM62exceptionOrNullimpl.getMessage());
            }
            this.f4723a = iEarBinderCallback;
            if (iEarBinderCallback != null) {
                try {
                    IBinder iBinderAsBinder2 = iEarBinderCallback.asBinder();
                    if (iBinderAsBinder2 != null) {
                        iBinderAsBinder2.linkToDeath(this.f4724b, 0);
                        h0Var = h0.INSTANCE;
                    }
                } catch (Throwable th2) {
                    r.a aVar3 = n8.r.Companion;
                    objM59constructorimpl2 = n8.r.m59constructorimpl(s.a(th2));
                }
            }
            objM59constructorimpl2 = n8.r.m59constructorimpl(h0Var);
            Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
            if (thM62exceptionOrNullimpl2 != null) {
                c0.f7098a.e("EarPhoneTranslateService", "linkToDeath " + thM62exceptionOrNullimpl2.getMessage());
            }
        }
    }

    public static final class c extends IEarControlBtnCallback.Stub {
        c() {
        }

        @Override // com.coloros.translate.engine.IEarControlBtnCallback
        public void callback(Bundle bundle) {
            kotlin.jvm.internal.r.e(bundle, "bundle");
            EarPhoneTranslateService earPhoneTranslateService = EarPhoneTranslateService.this;
            m2.a aVar = m2.a.INSTANCE;
            earPhoneTranslateService.f4719a = bundle.getInt(aVar.a(), -1);
            EarPhoneTranslateService.this.f4720b = bundle.getInt(aVar.b(), 1000);
            c0.f7098a.d("EarPhoneTranslateService", "earBtnCallback playBtnStatusResult:" + EarPhoneTranslateService.this.f4719a + " playBtnStatusResultCode:" + EarPhoneTranslateService.this.f4720b);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f4722f;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        c0.f7098a.d("EarPhoneTranslateService", "onCreate");
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
