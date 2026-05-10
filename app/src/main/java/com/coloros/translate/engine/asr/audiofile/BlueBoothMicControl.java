package com.coloros.translate.engine.asr.audiofile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.m;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.j;
import n8.k;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class BlueBoothMicControl {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f4835f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile int f4836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f4837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f4838c = new d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final BlueBoothMicControl$scoReceiver$1 f4839d = new BroadcastReceiver() { // from class: com.coloros.translate.engine.asr.audiofile.BlueBoothMicControl$scoReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            r.e(intent, "intent");
            if (r.a(intent.getAction(), "android.media.SCO_AUDIO_STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -1);
                this.f4841a.f4836a = intExtra;
                c0.f7098a.i("BlueBoothMicControl", "onReceive sco_audio_state: " + intExtra + " needStartSco:" + this.f4841a.f4837b);
                if (1 == intExtra && this.f4841a.f4837b) {
                    this.f4841a.f(true);
                }
            }
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j f4840e = k.b(b.INSTANCE);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final AudioManager mo8invoke() {
            Object systemService = m.INSTANCE.a().getSystemService("audio");
            r.c(systemService, "null cannot be cast to non-null type android.media.AudioManager");
            return (AudioManager) systemService;
        }
    }

    private final AudioManager d() {
        return (AudioManager) this.f4840e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(boolean z10) {
        Object objM59constructorimpl;
        this.f4837b = z10;
        c0.f7098a.i("BlueBoothMicControl", "openBluetoothSco  open:" + this.f4837b);
        try {
            r.a aVar = n8.r.Companion;
            d().setBluetoothScoOn(z10);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("BlueBoothMicControl", "openBluetoothSco error");
        }
        if (this.f4837b) {
            this.f4838c.b();
        } else {
            this.f4838c.d();
        }
    }

    private final void g() {
        Object objM59constructorimpl;
        j();
        try {
            r.a aVar = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(m.INSTANCE.a().registerReceiver(this.f4839d, new IntentFilter("android.media.SCO_AUDIO_STATE_CHANGED")));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("BlueBoothMicControl", "registerBluetoothScoReceiver error");
        }
    }

    private final void j() {
        Object objM59constructorimpl;
        this.f4837b = false;
        try {
            r.a aVar = n8.r.Companion;
            m.INSTANCE.a().unregisterReceiver(this.f4839d);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("BlueBoothMicControl", "unRegisterBluetoothScoReceiver error");
        }
    }

    public final void e() {
        j();
        this.f4838c.d();
    }

    public final void h() {
        Object objM59constructorimpl;
        g();
        this.f4837b = true;
        c0.f7098a.i("BlueBoothMicControl", "startBluetoothSco scoState:" + this.f4836a + " needStartSco:" + this.f4837b);
        try {
            r.a aVar = n8.r.Companion;
            d().startBluetoothSco();
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("BlueBoothMicControl", "stopBluetoothSco error");
        }
        f(true);
    }

    public final void i() {
        Object objM59constructorimpl;
        c0.f7098a.i("BlueBoothMicControl", " stopBluetoothSco scoState:" + this.f4836a + " needStartSco:" + this.f4837b);
        if (this.f4837b) {
            this.f4837b = false;
            try {
                r.a aVar = n8.r.Companion;
                d().stopBluetoothSco();
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                c0.f7098a.e("BlueBoothMicControl", "stopBluetoothSco error");
            }
            f(false);
        }
    }
}
