package com.coloros.translate.screen.utils;

import android.content.ActivityNotFoundException;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.coloros.translate.screen.R$string;
import com.coloros.translate.utils.c0;
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;
import com.oplus.backup.sdk.common.utils.ApplicationFileInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    public static final j INSTANCE = new j();

    private j() {
    }

    public static final void c(final Context context, final String text) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(text, "text");
        if (text.length() == 0) {
            return;
        }
        t.i(new Runnable() { // from class: com.coloros.translate.screen.utils.h
            @Override // java.lang.Runnable
            public final void run() {
                j.d(context, text);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Context context, String text) {
        kotlin.jvm.internal.r.e(context, "$context");
        kotlin.jvm.internal.r.e(text, "$text");
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.nearme.note");
        arrayList.add("com.coloros.note");
        arrayList.add("com.onplues.note");
        arrayList.add("com.nearme.note");
        h(context, text, arrayList);
    }

    private static final String e(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        try {
        } catch (Exception unused) {
            PackageInfo packageInfo = packageManager.getPackageInfo("com.nearme.note", 0);
            if (packageInfo != null) {
                if (packageInfo.versionCode >= 500) {
                    return "com.nearme.note";
                }
            }
        }
        if (packageManager.getPackageInfo("com.coloros.note", 0) != null) {
            return "com.coloros.note";
        }
        return null;
    }

    private static final boolean f(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        try {
        } catch (PackageManager.NameNotFoundException unused) {
            PackageInfo packageInfo = packageManager.getPackageInfo("com.nearme.note", 0);
            if (packageInfo != null) {
                if (packageInfo.versionCode >= 500) {
                    return true;
                }
            }
        }
        return packageManager.getPackageInfo("com.coloros.note", 0) != null;
    }

    private static final void g(Context context, String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!f(context)) {
            u.d(i10, 0, 2, null);
            return;
        }
        Intent intent = new Intent("action.nearme.note.textnote");
        intent.setFlags(268435456);
        String strE = e(context);
        if (!TextUtils.isEmpty(strE)) {
            intent.setPackage(strE);
        }
        intent.putExtra("extra_ocr_result", str);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            u.d(i10, 0, 2, null);
            c0.f7098a.e("Utils", "saveNote no activity found to start!");
        }
    }

    private static final void h(Context context, String str, List list) {
        Object objM59constructorimpl;
        if (list.isEmpty()) {
            g(context, str, R$string.translate_no_note);
            return;
        }
        String str2 = (String) kotlin.collections.o.Q(list);
        h0 h0Var = h0.INSTANCE;
        String str3 = String.format("content://%s/text_note", Arrays.copyOf(new Object[]{str2}, 1));
        kotlin.jvm.internal.r.d(str3, "format(...)");
        Uri uri = Uri.parse(str3);
        ContentValues contentValues = new ContentValues();
        contentValues.put(ApplicationFileInfo.PACKAGE_NAME, context.getPackageName());
        contentValues.put(TranslationClient.PARAM_KEY_CONTENT, str);
        try {
            r.a aVar = n8.r.Companion;
            context.getContentResolver().insert(uri, contentValues);
            c0.f7098a.d("Utils", "save success, pkg=" + str2);
            t.g(new Runnable() { // from class: com.coloros.translate.screen.utils.i
                @Override // java.lang.Runnable
                public final void run() {
                    j.i();
                }
            });
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            list.remove(str2);
            h(context, str, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i() {
        u.d(R$string.translate_unified_saved_note, 0, 2, null);
    }
}
