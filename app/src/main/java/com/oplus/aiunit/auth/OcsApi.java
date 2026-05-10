package com.oplus.aiunit.auth;

import android.content.Context;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.ocs.base.common.AuthResult;
import com.oplus.ocs.base.common.CapabilityInfo;
import com.oplus.ocs.base.common.api.Api;
import com.oplus.ocs.base.common.api.OplusApi;
import com.oplus.ocs.base.internal.ClientSettings;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class OcsApi extends OplusApi<Api.ApiOptions.NoOptions, OcsApi> {
    private static final String TAG = "OcsApi";
    private final int versionCode;
    public static final Companion Companion = new Companion(null);
    private static final Api<Api.ApiOptions.NoOptions> API = new Api<>("OcsClient.API", new OcsClientBuilder(), new Api.ClientKey());

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OcsApi(Context context, boolean z10, int i10) {
        super(context, API, (Api.ApiOptions) null, new ClientSettings(context.getPackageName(), i10, new ArrayList()), z10);
        r.e(context, "context");
        this.versionCode = i10;
    }

    private final String toAIStr(AuthResult authResult) {
        return "AuthResult(" + authResult.getPackageName() + ", " + authResult.getPid() + ", " + authResult.getErrrorCode() + ", " + authResult.getPermitBits() + ')';
    }

    public void checkAuthResult(CapabilityInfo capabilityInfo) {
        AuthResult authResult = capabilityInfo != null ? capabilityInfo.getAuthResult() : null;
        boolean z10 = authResult != null && authResult.getErrrorCode() == 1001;
        StringBuilder sb = new StringBuilder("checkAuthResult ");
        sb.append(authResult != null ? toAIStr(authResult) : null);
        sb.append(". ");
        sb.append(z10);
        AILog.d(TAG, sb.toString());
    }

    public int getVersion() {
        return this.versionCode;
    }

    public boolean hasFeature(String str) {
        return true;
    }

    public void init() {
        AILog.d(TAG, "init");
    }

    public final void initialize() {
        addThis2Cache();
    }

    public final boolean isAuthSucceed() {
        AuthResult authResult = getAuthResult();
        return authResult != null && authResult.getErrrorCode() == 1001;
    }

    public final void release() {
        releaseClientKey();
    }
}
