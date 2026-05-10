package com.oplus.aiunit.realtime_asr.client;

import android.content.Context;
import kotlin.jvm.internal.s;
import w8.a;

/* JADX INFO: loaded from: classes2.dex */
public final class RealTimeASRClient$speechAsrClient$2 extends s implements a {
    public final /* synthetic */ Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealTimeASRClient$speechAsrClient$2(Context context) {
        super(0);
        this.$context = context;
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final SpeechAsrClient mo8invoke() {
        return new SpeechAsrClient(this.$context);
    }
}
