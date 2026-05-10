package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import y2.m;
import y2.r;

/* JADX INFO: loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    static /* synthetic */ void a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i10 = intent.getExtras().getInt("attemptNumber");
        r.f(context);
        m.a aVarD = m.a().b(queryParameter).d(i3.a.b(iIntValue));
        if (queryParameter2 != null) {
            aVarD.c(Base64.decode(queryParameter2, 0));
        }
        r.c().e().g(aVarD.a(), i10, a.a());
    }
}
