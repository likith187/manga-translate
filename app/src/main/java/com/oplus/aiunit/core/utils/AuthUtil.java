package com.oplus.aiunit.core.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class AuthUtil {
    private static final String AUTHENTICATE_PERMISSION_OPLUS = "com.oplus.permission.safe.AUTHENTICATE";
    private static final String AUTHENTICATE_PERMISSION_OPPO = "com.oppo.permission.safe.AUTHENTICATE";
    public static final String AUTH_STYLE_INNER = "0";
    private static final String COMPONENT_SAFE_PERMISSION_OPLUS = "oplus.permission.OPLUS_COMPONENT_SAFE";
    private static final String COMPONENT_SAFE_PERMISSION_OPPO = "oppo.permission.OPPO_COMPONENT_SAFE";
    public static final AuthUtil INSTANCE = new AuthUtil();
    public static final String META_KEY_AUTH_STYLE = "com.oplus.aiunit.auth_style";
    private static final String TAG = "AuthClient";
    private static String metaAuthStyle;

    private AuthUtil() {
    }

    public static final boolean checkCallingAuthenticatePermission(Context context) {
        r.e(context, "context");
        return context.checkCallingPermission(AUTHENTICATE_PERMISSION_OPPO) == 0 || context.checkCallingPermission(AUTHENTICATE_PERMISSION_OPLUS) == 0 || context.checkCallingPermission(COMPONENT_SAFE_PERMISSION_OPPO) == 0 || context.checkCallingPermission(COMPONENT_SAFE_PERMISSION_OPLUS) == 0;
    }

    public static final boolean checkSelfAuthenticatePermission(Context context) {
        r.e(context, "context");
        return context.checkSelfPermission(AUTHENTICATE_PERMISSION_OPPO) == 0 || context.checkSelfPermission(AUTHENTICATE_PERMISSION_OPLUS) == 0 || context.checkSelfPermission(COMPONENT_SAFE_PERMISSION_OPPO) == 0 || context.checkSelfPermission(COMPONENT_SAFE_PERMISSION_OPLUS) == 0;
    }

    public static final String getAuthStyle(Context context) throws PackageManager.NameNotFoundException {
        r.e(context, "context");
        String str = metaAuthStyle;
        if (str != null) {
            return str;
        }
        String metaData = AIUtil.getMetaData(context, META_KEY_AUTH_STYLE);
        metaAuthStyle = metaData;
        return metaData;
    }

    public static final boolean isInnerAuth(Context context) {
        r.e(context, "context");
        return r.a(getAuthStyle(context), AUTH_STYLE_INNER);
    }
}
