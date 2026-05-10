package com.oplus.aiunit.auth;

import android.app.Application;
import android.content.Context;
import com.oplus.aiunit.core.data.ConfigKt;
import com.oplus.aiunit.core.protocol.AIProtocol;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.core.utils.AIUtil;
import com.oplus.aiunit.core.utils.AuthUtil;
import com.oplus.aiunit.toolkits.AISettings;
import com.oplus.ocs.base.common.ConnectionResult;
import com.oplus.ocs.base.common.api.OnConnectionFailedListener;
import com.oplus.ocs.base.common.api.OnConnectionSucceedListener;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class AuthClient {
    public static final Companion Companion = new Companion(null);
    private static final int MIN_VERSION_CODE_AIUNIT_SUPPORT_OCS = 1300006;
    private static final int OCS_MIN_VERSION_SUPPORTED = 3002001;
    private static final String OCS_PACKAGE_NAME_1 = "com.oplus.ocs";
    private static final String OCS_PACKAGE_NAME_2 = "com.coloros.ocs.opencapabilityservice";
    private static final String TAG = "AuthClient";
    private final Context context;
    private OcsApi ocsApi;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AuthClient(Context context) {
        r.e(context, "context");
        this.context = context;
    }

    private final boolean authInner(Context context) {
        return AuthUtil.checkSelfAuthenticatePermission(context);
    }

    /* JADX INFO: renamed from: authOcs-IoAF18A */
    private final Object m10authOcsIoAF18A(final AuthCallback authCallback) {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            OcsApi ocsApiInitOcs = initOcs();
            if (ocsApiInitOcs != null) {
                ocsApiInitOcs.addOnConnectionSucceedListener(new OnConnectionSucceedListener() { // from class: a6.a
                });
                ocsApiInitOcs.addOnConnectionFailedListener(new OnConnectionFailedListener() { // from class: a6.b
                });
            } else {
                ocsApiInitOcs = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(ocsApiInitOcs);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            AILog.e(TAG, "authOcs err. " + thM62exceptionOrNullimpl.getClass().getSimpleName() + " -> " + thM62exceptionOrNullimpl.getMessage());
            authCallback.onFail((((thM62exceptionOrNullimpl instanceof ReflectiveOperationException) || (thM62exceptionOrNullimpl instanceof LinkageError)) ? ErrorCode.KErrorClassNotFound : ErrorCode.kErrorAuthorizeFail).value());
        }
        return objM59constructorimpl;
    }

    private static final void authOcs_IoAF18A$lambda$5$lambda$4$lambda$2(AuthCallback callback) {
        kotlin.jvm.internal.r.e(callback, "$callback");
        AILog.i(TAG, "authOcs success.");
        callback.onSuccess();
    }

    private static final void authOcs_IoAF18A$lambda$5$lambda$4$lambda$3(AuthCallback callback, AuthClient this$0, ConnectionResult connectionResult) {
        kotlin.jvm.internal.r.e(callback, "$callback");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        AILog.e(TAG, "authOcs fail " + connectionResult.getErrorCode() + ". " + connectionResult.getErrorMessage());
        callback.onFail(connectionResult.getErrorCode());
        this$0.release();
    }

    private final OcsApi initOcs() {
        Context applicationContext = this.context;
        if (!(applicationContext instanceof Application)) {
            applicationContext = applicationContext.getApplicationContext();
        }
        if (this.ocsApi == null) {
            kotlin.jvm.internal.r.b(applicationContext);
            OcsApi ocsApi = new OcsApi(applicationContext, true, 203);
            this.ocsApi = ocsApi;
            ocsApi.release();
        }
        OcsApi ocsApi2 = this.ocsApi;
        if (ocsApi2 == null) {
            return null;
        }
        ocsApi2.initialize();
        return ocsApi2;
    }

    private final boolean isAIUnitVersionSupported() {
        return AIUtil.getVersionCode(this.context, ConfigKt.AIUNIT_PACKAGE_NAME) >= MIN_VERSION_CODE_AIUNIT_SUPPORT_OCS;
    }

    public static /* synthetic */ boolean isAuthSucceed$default(AuthClient authClient, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return authClient.isAuthSucceed(z10);
    }

    public static /* synthetic */ boolean isOcsAuthSucceed$default(AuthClient authClient, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return authClient.isOcsAuthSucceed(z10);
    }

    private final boolean isOcsVersionSupported() {
        return AIUtil.getVersionCode(this.context, OCS_PACKAGE_NAME_1) >= OCS_MIN_VERSION_SUPPORTED || AIUtil.getVersionCode(this.context, OCS_PACKAGE_NAME_2) >= OCS_MIN_VERSION_SUPPORTED;
    }

    public final void authenticate(AuthCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        if (!AIProtocol.isDeviceSupported(this.context)) {
            callback.onFail(ErrorCode.kErrorDeviceNotSupported.value());
            AILog.w(TAG, "authenticate device not supported!");
        } else if (isOcsAuthMode()) {
            m10authOcsIoAF18A(callback);
        } else if (authInner(this.context)) {
            callback.onSuccess();
        } else {
            callback.onFail(ErrorCode.kErrorAuthorizeFail.value());
        }
    }

    public final void authorize(AuthCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        authenticate(callback);
    }

    public final boolean checkSignPermission() {
        return AuthUtil.checkSelfAuthenticatePermission(this.context);
    }

    public final boolean isAuthSucceed() {
        return isAuthSucceed$default(this, false, 1, null);
    }

    public final boolean isOcsAuthMode() {
        return !AuthUtil.isInnerAuth(this.context);
    }

    public final boolean isOcsAuthSucceed() {
        return isOcsAuthSucceed$default(this, false, 1, null);
    }

    public final boolean isSupportOcs() {
        return isOcsVersionSupported() && isAIUnitVersionSupported();
    }

    public final void release() {
        OcsApi ocsApi = this.ocsApi;
        if (ocsApi != null) {
            ocsApi.release();
        }
        this.ocsApi = null;
    }

    public final boolean isAuthSucceed(boolean z10) {
        return isOcsAuthMode() ? isOcsAuthSucceed(z10) : checkSignPermission();
    }

    public final boolean isOcsAuthSucceed(boolean z10) {
        OcsApi ocsApi = this.ocsApi;
        if (!(ocsApi != null ? ocsApi.isAuthSucceed() : false)) {
            return false;
        }
        if (!z10 || !AIProtocol.isAISubSys(AIProtocol.getServiceProtocol(this.context))) {
            return true;
        }
        boolean zIsAuthSucceed = AISettings.isAuthSucceed(this.context);
        if (zIsAuthSucceed) {
            return zIsAuthSucceed;
        }
        release();
        return zIsAuthSucceed;
    }
}
