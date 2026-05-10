package com.coloros.translate.permission;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import com.coloros.translate.utils.c0;
import com.coloros.translate.widget.d;
import com.coloros.translate.widget.e;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.j;
import n8.k;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f5407c = new b(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final j f5408d = k.b(C0070a.INSTANCE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f5409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.coloros.translate.widget.d f5410b;

    /* JADX INFO: renamed from: com.coloros.translate.permission.a$a, reason: collision with other inner class name */
    static final class C0070a extends s implements w8.a {
        public static final C0070a INSTANCE = new C0070a();

        C0070a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final a mo8invoke() {
            return new a();
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            return (a) a.f5408d.getValue();
        }

        private b() {
        }
    }

    public static final class c implements d.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f5412b;

        c(Context context) {
            this.f5412b = context;
        }

        @Override // com.coloros.translate.widget.d.a
        public void a(boolean z10) {
            if (z10) {
                a.this.k(this.f5412b);
            }
        }
    }

    public static final class d implements d.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f5414b;

        d(Context context) {
            this.f5414b = context;
        }

        @Override // com.coloros.translate.widget.d.a
        public void a(boolean z10) {
            if (z10) {
                a.this.k(this.f5414b);
            }
        }
    }

    private final Boolean c(Context context) {
        ApplicationInfo applicationInfo;
        Object objM59constructorimpl;
        Bundle bundle;
        Boolean bool = this.f5409a;
        if (bool != null) {
            return bool;
        }
        Boolean boolValueOf = null;
        try {
            r.a aVar = r.Companion;
            applicationInfo = context.getPackageManager().getApplicationInfo("com.oplus.securitypermission", 128);
        } catch (Throwable th) {
            th = th;
            applicationInfo = null;
        }
        try {
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th2) {
            th = th2;
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
        }
        if (r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("RecordPermissionDialogManger", "canNavigateToAppPermissions security permission not found");
        }
        if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
            boolValueOf = Boolean.valueOf(bundle.getBoolean("navigateToAppPermissions", false));
        }
        this.f5409a = boolValueOf;
        c0.f7098a.d("RecordPermissionDialogManger", "mCanNavigateToAppPermissions  = " + boolValueOf);
        return this.f5409a;
    }

    private final void i(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:com.coloros.translate"));
        intent.addFlags(268435456);
        r.a.j(context, intent, null);
    }

    private final void j(Context context) {
        Intent intent = new Intent("oplus.intent.action.PERMISSION_APP_DETAIL");
        Bundle bundle = new Bundle();
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("android.permission.RECORD_AUDIO");
        bundle.putStringArrayList("permissionList", arrayList);
        bundle.putString("packageName", "com.coloros.translate");
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(Context context) {
        Object objM59constructorimpl;
        if (!kotlin.jvm.internal.r.a(c(context), Boolean.TRUE)) {
            i(context);
            return;
        }
        try {
            r.a aVar = r.Companion;
            j(context);
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
        }
        if (r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("RecordPermissionDialogManger", "jumpToPermissionSetForOS14 permission error or undeclared in safecenter AndroidManifest.xml");
            i(context);
        }
    }

    private final void l(Context context) {
        c0.f7098a.d("RecordPermissionDialogManger", "showRecordPermissionExplainDialog  showAudioPermissionDialog:" + this.f5410b);
        com.coloros.translate.widget.d dVar = this.f5410b;
        if (dVar == null || !dVar.d()) {
            if (this.f5410b == null) {
                this.f5410b = new com.coloros.translate.widget.d(context, new c(context), null, 4, null);
            }
            com.coloros.translate.widget.d dVar2 = this.f5410b;
            if (dVar2 != null) {
                dVar2.e();
            }
        }
    }

    private final void m(Context context) {
        c0.f7098a.d("RecordPermissionDialogManger", "showRecordPermissionExplainDialogTextTranslation  showAudioPermissionDialog:" + this.f5410b);
        com.coloros.translate.widget.d dVar = this.f5410b;
        if (dVar == null || !dVar.d()) {
            if (this.f5410b == null) {
                this.f5410b = new com.coloros.translate.widget.d(context, new d(context), e.NEED_DISMISS_DIALOG);
            }
            com.coloros.translate.widget.d dVar2 = this.f5410b;
            if (dVar2 != null) {
                dVar2.e();
            }
        }
    }

    public final boolean d(Activity activity) {
        kotlin.jvm.internal.r.e(activity, "activity");
        c0.f7098a.d("RecordPermissionDialogManger", "checkAndShowRecordPermissionDialog");
        if (r.a.a(activity.getApplicationContext(), "android.permission.RECORD_AUDIO") == 0) {
            return false;
        }
        activity.requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, 1);
        return true;
    }

    public final boolean e(Activity activity) {
        kotlin.jvm.internal.r.e(activity, "activity");
        c0.f7098a.d("RecordPermissionDialogManger", "checkAndShowRecordPermissionDialogTextTranslation");
        if (r.a.a(activity.getApplicationContext(), "android.permission.RECORD_AUDIO") == 0) {
            return false;
        }
        activity.requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, 2);
        return true;
    }

    public final void f(Context context, Intent intent) {
        kotlin.jvm.internal.r.e(context, "context");
        Boolean boolValueOf = intent != null ? Boolean.valueOf(intent.getBooleanExtra("permission_granted", false)) : null;
        kotlin.jvm.internal.r.b(boolValueOf);
        if (boolValueOf.booleanValue()) {
            return;
        }
        l(context);
    }

    public final void g(Context context, Intent intent) {
        kotlin.jvm.internal.r.e(context, "context");
        Boolean boolValueOf = intent != null ? Boolean.valueOf(intent.getBooleanExtra("permission_granted", false)) : null;
        kotlin.jvm.internal.r.b(boolValueOf);
        if (boolValueOf.booleanValue()) {
            return;
        }
        m(context);
    }

    public final void h() {
        com.coloros.translate.widget.d dVar = this.f5410b;
        if (dVar != null) {
            dVar.c();
        }
        this.f5410b = null;
    }
}
