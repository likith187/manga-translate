package com.coloros.translate.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.coloros.translate.R;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final g INSTANCE = new g();

    private g() {
    }

    private static final void c(Context context, String str) {
        Object objM59constructorimpl;
        Intent intent = new Intent();
        intent.setPackage(str);
        if (kotlin.jvm.internal.r.a(str, "com.coloros.bootreg")) {
            intent.setAction("com.oplus.bootreg.activity.statementpage");
            intent.putExtra("statement_intent_flag", 2);
        } else if (kotlin.jvm.internal.r.a(str, "com.oplus.opusermanual")) {
            intent.setAction("android.oem.intent.action.OP_LEGAL");
            intent.putExtra("op_legal_notices_type", 3);
        }
        try {
            r.a aVar = n8.r.Companion;
            context.startActivity(intent);
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("BootRegUtil", "goToPrivacyPage error " + thM62exceptionOrNullimpl);
        }
    }

    public static final void d(Context context) {
        if (context != null && e(context, "com.coloros.bootreg") == 1) {
            e(context, "com.oplus.opusermanual");
        }
    }

    private static final int e(Context context, String str) {
        int iF = c.f(context, str);
        if (iF == 1) {
            c0.f7098a.q("BootRegUtil", "launchBootRegPrivacyWithCheckResult " + str + " not install");
        } else if (iF == 2) {
            g(context, str, R.string.enable_request_title, R.string.boot_wizard_disable_message_v2, null, 16, null);
        } else if (iF == 3) {
            c(context, str);
        }
        return iF;
    }

    public static final androidx.appcompat.app.c f(final Context context, final String packageName, int i10, int i11, final w8.a aVar) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(packageName, "packageName");
        COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(context);
        cOUIAlertDialogBuilder.setCancelable(false);
        String strB = c.b(packageName);
        cOUIAlertDialogBuilder.setTitle((CharSequence) context.getString(i10, strB));
        cOUIAlertDialogBuilder.setMessage((CharSequence) context.getString(i11, strB));
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.coloros.translate.utils.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i12) {
                g.h(packageName, context, dialogInterface, i12);
            }
        };
        DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: com.coloros.translate.utils.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i12) {
                g.i(aVar, dialogInterface, i12);
            }
        };
        cOUIAlertDialogBuilder.setPositiveButton((CharSequence) context.getString(R.string.open), onClickListener);
        cOUIAlertDialogBuilder.setNegativeButton((CharSequence) context.getString(R.string.cancel), onClickListener2);
        androidx.appcompat.app.c cVarShow = cOUIAlertDialogBuilder.show();
        kotlin.jvm.internal.r.d(cVarShow, "show(...)");
        return cVarShow;
    }

    public static /* synthetic */ androidx.appcompat.app.c g(Context context, String str, int i10, int i11, w8.a aVar, int i12, Object obj) {
        if ((i12 & 16) != 0) {
            aVar = null;
        }
        return f(context, str, i10, i11, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(String packageName, Context context, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.r.e(packageName, "$packageName");
        kotlin.jvm.internal.r.e(context, "$context");
        try {
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", packageName, null));
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e10) {
            c0.f7098a.f("BootRegUtil", "启动" + packageName + " 设置界面失败", e10);
        }
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(w8.a aVar, DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        if (aVar != null) {
            aVar.mo8invoke();
        }
    }
}
