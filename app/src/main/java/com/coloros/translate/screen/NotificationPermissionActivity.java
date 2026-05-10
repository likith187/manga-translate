package com.coloros.translate.screen;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatActivity;
import com.coloros.translate.screen.utils.e;
import com.coloros.translate.screen.widget.a0;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class NotificationPermissionActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f5482f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IntentFilter f5483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BroadcastReceiver f5485c = new BroadcastReceiver() { // from class: com.coloros.translate.screen.NotificationPermissionActivity$mReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            r.e(context, "context");
            r.e(intent, "intent");
            if (r.a("android.intent.action.CLOSE_SYSTEM_DIALOGS", intent.getAction())) {
                String stringExtra = intent.getStringExtra("reason");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                c0.f7098a.d("NotificationPermissionActivity", "handleHomeKeyAndRecentKey " + stringExtra + " mStarted=" + this.f5486a.f5484b);
                this.f5486a.h0();
            }
        }
    };

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void g0() {
        IntentFilter intentFilter = new IntentFilter();
        this.f5483a = intentFilter;
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        try {
            c0.f7098a.d("NotificationPermissionActivity", "do registerReceiver");
            if (Build.VERSION.SDK_INT > 33) {
                registerReceiver(this.f5485c, this.f5483a, 2);
            } else {
                registerReceiver(this.f5485c, this.f5483a);
            }
        } catch (Exception unused) {
            c0.f7098a.e("NotificationPermissionActivity", "registerReceiver error");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h0() {
        Object objM59constructorimpl;
        if (this.f5484b) {
            return;
        }
        this.f5484b = true;
        try {
            r.a aVar = n8.r.Companion;
            Intent intent = new Intent(this, (Class<?>) ScreenTranslationService.class);
            intent.setPackage(getPackageName());
            Bundle extras = getIntent().getExtras();
            if (extras != null) {
                intent.putExtras(extras);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(startService(intent));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("NotificationPermissionActivity", "error on start service: " + thM62exceptionOrNullimpl.getMessage());
        }
        finish();
    }

    private final void i0() {
        try {
            c0.f7098a.d("NotificationPermissionActivity", "do unregisterReceiver");
            unregisterReceiver(this.f5485c);
        } catch (Exception unused) {
            c0.f7098a.e("NotificationPermissionActivity", "unregisterReceiver error");
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        getWindow().setNavigationBarColor(0);
        getWindow().setStatusBarColor(0);
        getWindow().addFlags(Integer.MIN_VALUE);
        getWindow().getDecorView().setSystemUiVisibility(1024);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = 1;
        attributes.height = 1;
        super.onCreate(bundle);
        c0.a aVar = c0.f7098a;
        aVar.d("NotificationPermissionActivity", "onCreate");
        g0();
        e.d(this, "pref_request_notification", Boolean.TRUE);
        androidx.core.app.a.o(this, new String[]{"android.permission.POST_NOTIFICATIONS"}, 8);
        aVar.d("NotificationPermissionActivity", "requestPermissions 8");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        c0.f7098a.d("NotificationPermissionActivity", "onDestroy");
        a0.r(this);
        i0();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] permissions, int[] grantResults) {
        kotlin.jvm.internal.r.e(permissions, "permissions");
        kotlin.jvm.internal.r.e(grantResults, "grantResults");
        super.onRequestPermissionsResult(i10, permissions, grantResults);
        boolean z10 = !(grantResults.length == 0) && grantResults[0] == 0;
        c0.f7098a.d("NotificationPermissionActivity", "onRequestPermissionsResult= " + i10 + " granted= " + z10 + " mStarted= " + this.f5484b);
        h0();
    }
}
