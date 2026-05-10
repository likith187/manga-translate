package com.coloros.translate.widget;

import android.app.Activity;
import android.app.AppOpsManager;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.Toast;
import com.coloros.translate.utils.c0;
import com.coloros.translate.widget.h;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f7233c = new b(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n8.j f7234d = n8.k.b(a.INSTANCE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f7235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f7236b;

    static final class a extends s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final k mo8invoke() {
            return new k();
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final k a() {
            return (k) k.f7234d.getValue();
        }

        private b() {
        }
    }

    public static final class c implements h.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f7238b;

        c(Context context) {
            this.f7238b = context;
        }

        @Override // com.coloros.translate.widget.h.b
        public void a(boolean z10) {
            if (z10) {
                k.this.i(this.f7238b);
            }
        }
    }

    private final Boolean c(Context context) {
        ApplicationInfo applicationInfo;
        Object objM59constructorimpl;
        Bundle bundle;
        Boolean bool = this.f7236b;
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
            c0.f7098a.e("ClipboardPermissionDialogManger", "canNavigateToAppPermissions security permission not found");
        }
        if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
            boolValueOf = Boolean.valueOf(bundle.getBoolean("navigateToAppPermissions", false));
        }
        this.f7236b = boolValueOf;
        c0.f7098a.d("ClipboardPermissionDialogManger", "mCanNavigateToAppPermissions  = " + boolValueOf);
        return this.f7236b;
    }

    private final void f() {
        h hVar = this.f7235a;
        if (hVar != null) {
            hVar.b();
        }
        this.f7235a = null;
    }

    private final void g(Context context) {
        Object objM59constructorimpl;
        try {
            r.a aVar = r.Companion;
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:com.coloros.translate"));
            intent.addFlags(268435456);
            r.a.j(context, intent, null);
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("ClipboardPermissionDialogManger", "jumpToPermissionDetailPage error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    private final void h(Context context) {
        Object objM59constructorimpl;
        Intent intent = new Intent("oplus.intent.action.PERMISSION_APP_DETAIL");
        Bundle bundle = new Bundle();
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        bundle.putStringArrayList("permissionList", arrayList);
        bundle.putString("packageName", "com.coloros.translate");
        intent.putExtras(bundle);
        intent.addFlags(272629760);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
            intent.addFlags(67108864);
        }
        try {
            r.a aVar = r.Companion;
            context.startActivity(intent);
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("ClipboardPermissionDialogManger", "jumpToPermissionManagementPage error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(Context context) {
        Object objM59constructorimpl;
        if (!kotlin.jvm.internal.r.a(c(context), Boolean.TRUE)) {
            g(context);
            return;
        }
        try {
            r.a aVar = r.Companion;
            h(context);
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("ClipboardPermissionDialogManger", "jumpToPermissionSetForOS14 permission error " + thM62exceptionOrNullimpl.getMessage());
            g(context);
        }
    }

    private final void j(Context context) {
        c0.f7098a.d("ClipboardPermissionDialogManger", "showPermissionDialog  showAudioPermissionDialog:" + this.f7235a);
        f();
        if (this.f7235a == null) {
            this.f7235a = new h(context, new c(context));
        }
        h hVar = this.f7235a;
        if (hVar != null) {
            hVar.c();
        }
    }

    public final void d(Context context, String text, int i10) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(text, "text");
        if (!e(context, "NoTextIntent", text) || i10 == 0) {
            return;
        }
        Toast.makeText(context, i10, 0).show();
    }

    public final boolean e(Context context, String label, String text) {
        Object objM59constructorimpl;
        ClipboardManager clipboardManager;
        boolean z10;
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(label, "label");
        kotlin.jvm.internal.r.e(text, "text");
        try {
            r.a aVar = r.Companion;
            Object systemService = context.getSystemService("clipboard");
            clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
            Object systemService2 = context.getSystemService("appops");
            AppOpsManager appOpsManager = systemService2 instanceof AppOpsManager ? (AppOpsManager) systemService2 : null;
            int iNoteOp = (appOpsManager == null || Build.VERSION.SDK_INT < 33) ? 2 : appOpsManager.noteOp("android:write_clipboard", context.getPackageManager().getPackageUid(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L)), context.getPackageName());
            z10 = iNoteOp == 0 || iNoteOp == 4;
            c0.f7098a.d("ClipboardPermissionDialogManger", "copyText mode:" + iNoteOp);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
        }
        if (z10) {
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(ClipData.newPlainText(label, text));
            }
            return true;
        }
        j(context);
        objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("ClipboardPermissionDialogManger", "copyText Failed, error message:" + thM62exceptionOrNullimpl.getLocalizedMessage());
        }
        return false;
    }

    public final void k() {
        f();
    }
}
