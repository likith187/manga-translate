package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a */
    public static final int f7731a = d.f7734a;

    /* JADX INFO: renamed from: b */
    private static final b f7732b = new b();

    b() {
    }

    public static b e() {
        return f7732b;
    }

    public Intent a(Context context, int i10, String str) {
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                return null;
            }
            Uri uriFromParts = Uri.fromParts("package", "com.google.android.gms", null);
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(uriFromParts);
            return intent;
        }
        if (context != null && r3.f.c(context)) {
            Intent intent2 = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
            intent2.setPackage("com.google.android.wearable.app");
            return intent2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f7731a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(s3.c.a(context).c(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        String string = sb.toString();
        Intent intent3 = new Intent("android.intent.action.VIEW");
        Uri.Builder builderAppendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
        if (!TextUtils.isEmpty(string)) {
            builderAppendQueryParameter.appendQueryParameter("pcampaignid", string);
        }
        intent3.setData(builderAppendQueryParameter.build());
        intent3.setPackage("com.android.vending");
        intent3.addFlags(524288);
        return intent3;
    }

    public PendingIntent b(Context context, int i10, int i11) {
        return c(context, i10, i11, null);
    }

    public PendingIntent c(Context context, int i10, int i11, String str) {
        Intent intentA = a(context, i10, str);
        if (intentA == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i11, intentA, com.google.android.gms.internal.common.d.f8078a | 134217728);
    }

    public String d(int i10) {
        return d.a(i10);
    }

    public int f(Context context) {
        return g(context, f7731a);
    }

    public int g(Context context, int i10) {
        int iD = d.d(context, i10);
        if (d.e(context, iD)) {
            return 18;
        }
        return iD;
    }

    public boolean h(Context context, String str) {
        return d.h(context, str);
    }

    public boolean i(int i10) {
        return d.g(i10);
    }
}
