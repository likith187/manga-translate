package com.coloros.translate.ui.dialoguetranslation;

import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import androidx.core.view.a1;
import androidx.fragment.app.Fragment;
import com.coloros.translate.R;
import com.coloros.translate.base.BaseEarPhoneActivity;
import com.coloros.translate.ui.earphone.ConfigAudioChange;
import com.coloros.translate.ui.earphone.ConfigEarControl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
@ConfigAudioChange
@ConfigEarControl
public final class FaceToFaceTranslateActivity extends BaseEarPhoneActivity<com.coloros.translate.base.q> {
    public static final a B = new a(null);
    private z0 A;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.coloros.translate.base.BasePrivateActivity
    public void F0(Intent intent) {
        super.F0(intent);
        com.coloros.translate.observer.e.INSTANCE.l(n0());
        Q0();
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity
    public void R0(BluetoothDevice bluetoothDevice) {
        Object objM59constructorimpl;
        n8.h0 h0Var;
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateActivity", "onBluetoothDevice");
        try {
            r.a aVar = n8.r.Companion;
            z0 z0Var = this.A;
            if (z0Var != null) {
                z0Var.P(bluetoothDevice);
                h0Var = n8.h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("FaceToFaceTranslateActivity", "onBluetoothDevice error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity
    public void b1() {
        Object objM59constructorimpl;
        n8.h0 h0Var;
        super.b1();
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateActivity", "updateEarControl");
        try {
            r.a aVar = n8.r.Companion;
            z0 z0Var = this.A;
            if (z0Var != null) {
                z0Var.R();
                h0Var = n8.h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("FaceToFaceTranslateActivity", "updateEarControl error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, android.app.Activity
    public void finish() {
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateActivity", "finish");
        setResult(101, getIntent());
        super.finish();
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return com.coloros.translate.base.q.class;
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.activity_face_to_face_translate_layout;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateActivity", "onBackPressed");
        setResult(101, getIntent());
        super.onBackPressed();
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity, com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        U0();
        super.onCreate(bundle);
        setRequestedOrientation(-1);
        Fragment fragmentG0 = getSupportFragmentManager().g0(R.id.fragment_container_view);
        if ((fragmentG0 instanceof z0 ? (z0) fragmentG0 : null) == null) {
            z0 z0Var = new z0();
            getSupportFragmentManager().n().c(R.id.fragment_container_view, z0Var, null).h();
            this.A = z0Var;
        }
        androidx.core.view.y0.a(getWindow(), getWindow().getDecorView()).a(a1.m.f());
        Window window = getWindow();
        kotlin.jvm.internal.r.d(window, "getWindow(...)");
        com.coloros.translate.utils.f0.b(window);
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity, com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.coloros.translate.utils.n.INSTANCE.O(q0());
        com.coloros.translate.observer.e.INSTANCE.n(n0());
    }

    @Override // com.coloros.translate.base.BaseActivity
    public void u0() {
        z0 z0Var = this.A;
        if (z0Var != null) {
            z0Var.O();
        }
    }

    @Override // com.coloros.translate.base.BaseActivity
    public void x0() {
        super.x0();
        z0 z0Var = this.A;
        if (z0Var != null) {
            z0Var.S();
        }
    }
}
