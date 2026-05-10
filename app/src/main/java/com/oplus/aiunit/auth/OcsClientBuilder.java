package com.oplus.aiunit.auth;

import android.content.Context;
import android.os.Looper;
import com.oplus.ocs.base.common.api.Api;
import com.oplus.ocs.base.internal.ClientSettings;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class OcsClientBuilder extends Api.AbstractClientBuilder<Api.Client, Api.ApiOptions.NoOptions> {
    public Api.Client buildClient(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions) {
        r.e(context, "context");
        r.e(looper, "looper");
        r.e(clientSettings, "clientSettings");
        return new OcsClient(context, looper);
    }
}
