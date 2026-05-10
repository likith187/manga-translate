package com.coloros.translate.base;

import android.bluetooth.BluetoothDevice;
import android.content.IntentFilter;
import android.os.Bundle;
import com.coloros.translate.R;
import com.coloros.translate.base.q;
import com.coloros.translate.ui.dialoguetranslation.DialogTranslationActivity;
import com.coloros.translate.ui.dialoguetranslation.FaceToFaceTranslateActivity;
import com.coloros.translate.ui.earphone.ConfigEarControl;
import com.coloros.translate.ui.simultaneous.SimultaneousMainActivity;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.w;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseEarPhoneActivity<T extends q> extends BasePrivateActivity<T> {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final a f4782z = new a(null);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private androidx.activity.result.b f4784u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f4786w;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final n8.j f4783t = n8.k.b(new c(this));

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final n8.j f4785v = n8.k.b(new b(this));

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final BaseEarPhoneActivity$headSetReceiver$1 f4787x = new BaseEarPhoneActivity$headSetReceiver$1(this);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final BaseEarPhoneActivity$earControlBroadCast$1 f4788y = new BaseEarPhoneActivity$earControlBroadCast$1(this);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {
        final /* synthetic */ BaseEarPhoneActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(BaseEarPhoneActivity<T> baseEarPhoneActivity) {
            super(0);
            this.this$0 = baseEarPhoneActivity;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Boolean mo8invoke() {
            BaseEarPhoneActivity<T> baseEarPhoneActivity = this.this$0;
            return Boolean.valueOf((baseEarPhoneActivity instanceof DialogTranslationActivity) || (baseEarPhoneActivity instanceof FaceToFaceTranslateActivity) || (baseEarPhoneActivity instanceof SimultaneousMainActivity));
        }
    }

    static final class c extends s implements w8.a {
        final /* synthetic */ BaseEarPhoneActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(BaseEarPhoneActivity<T> baseEarPhoneActivity) {
            super(0);
            this.this$0 = baseEarPhoneActivity;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Boolean mo8invoke() {
            return Boolean.valueOf(this.this$0.getClass().getAnnotation(ConfigEarControl.class) != null);
        }
    }

    private final boolean N0() {
        return ((Boolean) this.f4783t.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean O0() {
        return com.coloros.translate.utils.s.a(this);
    }

    private final boolean P0() {
        return ((Boolean) this.f4785v.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V0(boolean z10) {
        c0.f7098a.d("BaseEarPhoneActivity", "requestBluetoothPermission :" + z10);
    }

    private final void W0() {
        Object objM59constructorimpl;
        c0.f7098a.d("BaseEarPhoneActivity", "registerEarBroadcast");
        if (N0()) {
            try {
                r.a aVar = r.Companion;
                n0.a.b(getApplicationContext()).c(this.f4788y, new IntentFilter("action.oplus.translate.conversation.foreground"));
                objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("BaseEarPhoneActivity", "registerEarBroadcast error " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    private final void X0() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        intentFilter.addAction("android.media.AUDIO_BECOMING_NOISY");
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED");
        registerReceiver(this.f4787x, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y0() {
        if (this.f4786w || J0()) {
            return;
        }
        this.f4786w = true;
        w.h(R.string.air_phone_connect_tips, 0, 2, null);
    }

    private final void Z0() {
        Object objM59constructorimpl;
        c0.f7098a.d("BaseEarPhoneActivity", "unRegisterEarBroadcast");
        if (N0()) {
            try {
                r.a aVar = r.Companion;
                n0.a.b(getApplicationContext()).f(this.f4788y);
                objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("BaseEarPhoneActivity", "unRegisterEarBroadcast error " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    private final void a1() {
        Object objM59constructorimpl;
        try {
            r.a aVar = r.Companion;
            unregisterReceiver(this.f4787x);
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("BaseEarPhoneActivity", "unregisterHeadSetReceiver error " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void Q0() {
        if (r.e.b(this, "android.permission.BLUETOOTH_CONNECT") != 0) {
            c0.f7098a.d("BaseEarPhoneActivity", "launchBluetoothPermission" + this.f4784u);
            androidx.activity.result.b bVar = this.f4784u;
            if (bVar != null) {
                bVar.a("android.permission.BLUETOOTH_CONNECT");
            }
        }
    }

    public void R0(BluetoothDevice bluetoothDevice) {
        c0.f7098a.d("BaseEarPhoneActivity", "onBluetoothDevice:" + bluetoothDevice);
    }

    public void S0() {
        c0.f7098a.d("BaseEarPhoneActivity", "onEarConnect");
    }

    public void T0() {
        c0.f7098a.d("BaseEarPhoneActivity", "onEarConnectDisconnect");
    }

    public final void U0() {
        c0.f7098a.d("BaseEarPhoneActivity", "registerBluetoothPermission");
        if (r.e.b(this, "android.permission.BLUETOOTH_CONNECT") != 0) {
            androidx.activity.result.b bVarRegisterForActivityResult = this.f4784u;
            if (bVarRegisterForActivityResult == null) {
                bVarRegisterForActivityResult = registerForActivityResult(new d.c(), new androidx.activity.result.a() { // from class: com.coloros.translate.base.h
                    @Override // androidx.activity.result.a
                    public final void a(Object obj) {
                        BaseEarPhoneActivity.V0(((Boolean) obj).booleanValue());
                    }
                });
            }
            this.f4784u = bVarRegisterForActivityResult;
        }
    }

    public void b1() {
        c0.f7098a.d("BaseEarPhoneActivity", "updateEarControl");
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (P0()) {
            X0();
        }
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (P0()) {
            a1();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        W0();
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        Z0();
    }
}
