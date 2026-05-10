package com.coloros.translate.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.coloros.translate.engine.IEarControlBtnCallback;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.z0;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class BaseEarPhoneActivity$earControlBroadCast$1 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ BaseEarPhoneActivity f4789a;

    BaseEarPhoneActivity$earControlBroadCast$1(BaseEarPhoneActivity baseEarPhoneActivity) {
        this.f4789a = baseEarPhoneActivity;
    }

    public static final void b(BaseEarPhoneActivity this$0) {
        r.e(this$0, "this$0");
        this$0.b1();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Object objM59constructorimpl;
        IBinder binder;
        if (this.f4789a.isDestroyed() || this.f4789a.isFinishing()) {
            c0.f7098a.d("BaseEarPhoneActivity", "onReceive reject");
            return;
        }
        c0.f7098a.d("BaseEarPhoneActivity", "onReceive " + (intent != null ? intent.getAction() : null));
        final BaseEarPhoneActivity baseEarPhoneActivity = this.f4789a;
        try {
            r.a aVar = n8.r.Companion;
            if (kotlin.jvm.internal.r.a(intent != null ? intent.getAction() : null, "action.oplus.translate.conversation.foreground")) {
                Bundle extras = intent.getExtras();
                IEarControlBtnCallback iEarControlBtnCallbackAsInterface = (extras == null || (binder = extras.getBinder("earBinder")) == null) ? null : IEarControlBtnCallback.Stub.asInterface(binder);
                if (iEarControlBtnCallbackAsInterface != null) {
                    Bundle bundle = new Bundle();
                    m2.a aVar2 = m2.a.INSTANCE;
                    bundle.putInt(aVar2.a(), 0);
                    bundle.putInt(aVar2.b(), 0);
                    iEarControlBtnCallbackAsInterface.callback(bundle);
                }
                z0.h(0L, new Runnable() { // from class: com.coloros.translate.base.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseEarPhoneActivity$earControlBroadCast$1.b(baseEarPhoneActivity);
                    }
                }, 1, null);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("BaseEarPhoneActivity", "onReceive error " + thM62exceptionOrNullimpl.getMessage());
        }
    }
}
