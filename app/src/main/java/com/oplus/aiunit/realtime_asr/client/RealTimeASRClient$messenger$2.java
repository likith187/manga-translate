package com.oplus.aiunit.realtime_asr.client;

import com.oplus.aiunit.core.callback.IAIMessenger;
import kotlin.jvm.internal.s;
import w8.a;

/* JADX INFO: loaded from: classes2.dex */
public final class RealTimeASRClient$messenger$2 extends s implements a {
    public final /* synthetic */ RealTimeASRClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealTimeASRClient$messenger$2(RealTimeASRClient realTimeASRClient) {
        super(0);
        this.this$0 = realTimeASRClient;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.oplus.aiunit.realtime_asr.client.RealTimeASRClient$messenger$2$1] */
    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final AnonymousClass1 mo8invoke() {
        final RealTimeASRClient realTimeASRClient = this.this$0;
        return new IAIMessenger.Stub() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient$messenger$2.1
            /* JADX WARN: Removed duplicated region for block: B:84:0x01f8 A[PHI: r10
              0x01f8: PHI (r10v19 com.oplus.aiunit.realtime_asr.client.RealTimeASRClient$AudioTextCallback) = 
              (r10v17 com.oplus.aiunit.realtime_asr.client.RealTimeASRClient$AudioTextCallback)
              (r10v24 com.oplus.aiunit.realtime_asr.client.RealTimeASRClient$AudioTextCallback)
             binds: [B:83:0x01f6, B:76:0x01ce] A[DONT_GENERATE, DONT_INLINE]] */
            @Override // com.oplus.aiunit.core.callback.IAIMessenger
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public int send(com.oplus.aiunit.core.FramePackage r10) {
                /*
                    Method dump skipped, instruction units count: 540
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient$messenger$2.AnonymousClass1.send(com.oplus.aiunit.core.FramePackage):int");
            }
        };
    }
}
