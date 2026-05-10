package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;

/* JADX INFO: loaded from: classes.dex */
public final class z0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Uri f7931f = new Uri.Builder().scheme(TranslationClient.PARAM_KEY_CONTENT).authority("com.google.android.gms.chimera").build();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ComponentName f7934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f7935d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f7936e;

    public z0(String str, String str2, int i10, boolean z10) {
        k.e(str);
        this.f7932a = str;
        k.e(str2);
        this.f7933b = str2;
        this.f7934c = null;
        this.f7935d = 4225;
        this.f7936e = z10;
    }

    public final ComponentName a() {
        return this.f7934c;
    }

    public final Intent b(Context context) {
        Bundle bundleCall;
        if (this.f7932a == null) {
            return new Intent().setComponent(this.f7934c);
        }
        if (this.f7936e) {
            Bundle bundle = new Bundle();
            bundle.putString("serviceActionBundleKey", this.f7932a);
            try {
                bundleCall = context.getContentResolver().call(f7931f, "serviceIntentCall", (String) null, bundle);
            } catch (IllegalArgumentException e10) {
                Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e10.toString()));
                bundleCall = null;
            }
            intent = bundleCall != null ? (Intent) bundleCall.getParcelable("serviceResponseIntentKey") : null;
            if (intent == null) {
                Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(this.f7932a)));
            }
        }
        return intent == null ? new Intent(this.f7932a).setPackage(this.f7933b) : intent;
    }

    public final String c() {
        return this.f7933b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z0)) {
            return false;
        }
        z0 z0Var = (z0) obj;
        return j.a(this.f7932a, z0Var.f7932a) && j.a(this.f7933b, z0Var.f7933b) && j.a(this.f7934c, z0Var.f7934c) && this.f7936e == z0Var.f7936e;
    }

    public final int hashCode() {
        return j.b(this.f7932a, this.f7933b, this.f7934c, 4225, Boolean.valueOf(this.f7936e));
    }

    public final String toString() {
        String str = this.f7932a;
        if (str != null) {
            return str;
        }
        k.g(this.f7934c);
        return this.f7934c.flattenToString();
    }
}
