package com.coloros.translate.base;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.coloros.translate.base.BaseEarPhoneActivity$headSetReceiver$1;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.z0;
import com.coui.appcompat.scrollbar.COUIScrollBar;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class BaseEarPhoneActivity$headSetReceiver$1 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ BaseEarPhoneActivity f4790a;

    static final class a extends s implements w8.a {
        final /* synthetic */ BaseEarPhoneActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(BaseEarPhoneActivity<T> baseEarPhoneActivity) {
            super(0);
            this.this$0 = baseEarPhoneActivity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(BaseEarPhoneActivity this$0) {
            r.e(this$0, "this$0");
            this$0.T0();
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            if (com.coloros.translate.utils.s.c(this.this$0)) {
                return;
            }
            c0.f7098a.i("BaseEarPhoneActivity", "headset disconnect real");
            final BaseEarPhoneActivity<T> baseEarPhoneActivity = this.this$0;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.base.m
                @Override // java.lang.Runnable
                public final void run() {
                    BaseEarPhoneActivity$headSetReceiver$1.a.invoke$lambda$0(baseEarPhoneActivity);
                }
            }, 1, null);
        }
    }

    static final class b extends s implements w8.a {
        final /* synthetic */ BaseEarPhoneActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(BaseEarPhoneActivity<T> baseEarPhoneActivity) {
            super(0);
            this.this$0 = baseEarPhoneActivity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(BaseEarPhoneActivity this$0) {
            r.e(this$0, "this$0");
            this$0.S0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$1(BaseEarPhoneActivity this$0) {
            r.e(this$0, "this$0");
            this$0.T0();
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            if (!this.this$0.O0()) {
                final BaseEarPhoneActivity<T> baseEarPhoneActivity = this.this$0;
                z0.h(0L, new Runnable() { // from class: com.coloros.translate.base.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseEarPhoneActivity$headSetReceiver$1.b.invoke$lambda$1(baseEarPhoneActivity);
                    }
                }, 1, null);
            } else {
                this.this$0.Y0();
                final BaseEarPhoneActivity<T> baseEarPhoneActivity2 = this.this$0;
                z0.h(0L, new Runnable() { // from class: com.coloros.translate.base.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseEarPhoneActivity$headSetReceiver$1.b.invoke$lambda$0(baseEarPhoneActivity2);
                    }
                }, 1, null);
            }
        }
    }

    static final class c extends s implements w8.a {
        final /* synthetic */ BaseEarPhoneActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(BaseEarPhoneActivity<T> baseEarPhoneActivity) {
            super(0);
            this.this$0 = baseEarPhoneActivity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(BaseEarPhoneActivity this$0) {
            r.e(this$0, "this$0");
            this$0.T0();
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            if (com.coloros.translate.utils.s.a(this.this$0)) {
                return;
            }
            final BaseEarPhoneActivity<T> baseEarPhoneActivity = this.this$0;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.base.p
                @Override // java.lang.Runnable
                public final void run() {
                    BaseEarPhoneActivity$headSetReceiver$1.c.invoke$lambda$0(baseEarPhoneActivity);
                }
            }, 1, null);
        }
    }

    BaseEarPhoneActivity$headSetReceiver$1(BaseEarPhoneActivity baseEarPhoneActivity) {
        this.f4790a = baseEarPhoneActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(BaseEarPhoneActivity this$0, BluetoothDevice bluetoothDevice) {
        r.e(this$0, "this$0");
        this$0.R0(bluetoothDevice);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(BaseEarPhoneActivity this$0) {
        r.e(this$0, "this$0");
        this$0.S0();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        r.e(context, "context");
        r.e(intent, "intent");
        c0.a aVar = c0.f7098a;
        aVar.i("BaseEarPhoneActivity", "headSetReceiver " + intent.getAction());
        if (r.a(intent.getAction(), "android.media.AUDIO_BECOMING_NOISY")) {
            aVar.i("BaseEarPhoneActivity", "headset disconnect");
            z0.c(COUIScrollBar.SCROLLER_FADE_TIMEOUT, new a(this.f4790a));
            return;
        }
        if (r.a(intent.getAction(), "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED")) {
            aVar.i("BaseEarPhoneActivity", "headset blue state");
            z0.c(COUIScrollBar.SCROLLER_FADE_TIMEOUT, new b(this.f4790a));
            return;
        }
        if (r.a(intent.getAction(), "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED")) {
            aVar.i("BaseEarPhoneActivity", "headset blue device");
            if (Build.VERSION.SDK_INT >= 33) {
                final BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE", BluetoothDevice.class);
                aVar.i("BaseEarPhoneActivity", "headset blue device:" + bluetoothDevice);
                final BaseEarPhoneActivity baseEarPhoneActivity = this.f4790a;
                z0.h(0L, new Runnable() { // from class: com.coloros.translate.base.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseEarPhoneActivity$headSetReceiver$1.c(baseEarPhoneActivity, bluetoothDevice);
                    }
                }, 1, null);
                return;
            }
            return;
        }
        if (r.a(intent.getAction(), "android.intent.action.HEADSET_PLUG")) {
            int intExtra = intent.getIntExtra("state", 0);
            aVar.i("BaseEarPhoneActivity", "line headset  state:" + intExtra);
            boolean z10 = intExtra != 0;
            aVar.i("BaseEarPhoneActivity", "headReceiver onReceive " + z10 + " " + intent.getStringExtra("name") + " " + (intent.getIntExtra("microphone", 0) != 0));
            if (!z10) {
                z0.d(0L, new c(this.f4790a), 1, null);
                return;
            }
            this.f4790a.Y0();
            final BaseEarPhoneActivity baseEarPhoneActivity2 = this.f4790a;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.base.l
                @Override // java.lang.Runnable
                public final void run() {
                    BaseEarPhoneActivity$headSetReceiver$1.d(baseEarPhoneActivity2);
                }
            }, 1, null);
        }
    }
}
