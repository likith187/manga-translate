package com.oplus.aiunit.auth;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.oplus.ocs.base.common.api.BaseClient;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class OcsClient extends BaseClient<IBinder> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OcsClient(Context context, Looper looper) {
        super(context, looper);
        r.e(context, "context");
        r.e(looper, "looper");
    }

    public String getClientName() {
        return "AI_CLIENT";
    }
}
