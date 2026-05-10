package com.coloros.translate.ui.cube;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Messenger;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class KeyMessengerService extends Service {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f6150c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f6151a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Messenger f6152b = new Messenger(new b(Looper.getMainLooper()));

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Can't wrap try/catch for region: R(12:4|57|5|(9:7|(0)(1:11)|55|17|21|(1:23)|24|SW:25|47)(1:15)|16|55|17|21|(0)|24|SW:25|47) */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0076, code lost:
        
            r1 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0077, code lost:
        
            r7 = n8.r.Companion;
            r1 = n8.r.m59constructorimpl(n8.s.a(r1));
         */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00ca  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00ec  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00fe  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0110  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0118  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void handleMessage(android.os.Message r15) throws android.os.RemoteException {
            /*
                Method dump skipped, instruction units count: 468
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.ui.cube.KeyMessengerService.b.handleMessage(android.os.Message):void");
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        c0.f7098a.d("KeyMessengerService", "onBind intent : " + intent);
        IBinder binder = this.f6152b.getBinder();
        r.d(binder, "getBinder(...)");
        return binder;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        c0.f7098a.d("KeyMessengerService", "onCreate");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        c0.f7098a.d("KeyMessengerService", "onStartCommand");
        return super.onStartCommand(intent, i10, i11);
    }
}
