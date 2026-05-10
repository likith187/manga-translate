package com.coloros.translate.screen.translate.engine.remote;

import android.os.RemoteException;
import com.coloros.translate.engine.ITtsEngine;
import com.coloros.translate.engine.ITtsListener;
import com.coloros.translate.engine.info.TtsParams;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class TtsEngineHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ITtsEngine f5667a;

    public static abstract class TtsListener extends ITtsListener.Stub {
    }

    static final class a extends s implements w8.a {
        final /* synthetic */ String $text;
        final /* synthetic */ TtsListener $ttsListener;
        final /* synthetic */ TtsParams $ttsParams;
        final /* synthetic */ TtsEngineHandler this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(TtsParams ttsParams, TtsEngineHandler ttsEngineHandler, String str, TtsListener ttsListener) {
            super(0);
            this.$ttsParams = ttsParams;
            this.this$0 = ttsEngineHandler;
            this.$text = str;
            this.$ttsListener = ttsListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return h0.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void invoke() throws android.os.RemoteException {
            /*
                r10 = this;
                com.coloros.translate.engine.info.TtsParams r0 = r10.$ttsParams
                r1 = 1
                if (r0 == 0) goto L19
                java.lang.String r0 = r0.c()
                if (r0 == 0) goto L19
                boolean r0 = kotlin.text.r.Y(r0)
                r0 = r0 ^ r1
                if (r0 != r1) goto L19
                com.coloros.translate.engine.info.TtsParams r0 = r10.$ttsParams
                java.lang.String r0 = r0.c()
                goto L4f
            L19:
                com.coloros.translate.engine.info.TtsParams r0 = r10.$ttsParams
                r2 = 0
                if (r0 == 0) goto L23
                java.lang.String r0 = r0.b()
                goto L24
            L23:
                r0 = r2
            L24:
                java.lang.String r3 = "zh"
                boolean r0 = kotlin.jvm.internal.r.a(r0, r3)
                if (r0 != 0) goto L40
                com.coloros.translate.engine.info.TtsParams r0 = r10.$ttsParams
                if (r0 == 0) goto L34
                java.lang.String r2 = r0.b()
            L34:
                java.lang.String r0 = "en"
                boolean r0 = kotlin.jvm.internal.r.a(r2, r0)
                if (r0 == 0) goto L3d
                goto L40
            L3d:
                java.lang.String r0 = "female"
                goto L4f
            L40:
                com.coloros.translate.utils.l0$a r2 = com.coloros.translate.utils.l0.f7130a
                r6 = 4
                r7 = 0
                java.lang.String r3 = "broadcast_timbre"
                java.lang.String r4 = "female"
                r5 = 0
                java.lang.Object r0 = com.coloros.translate.utils.l0.a.g(r2, r3, r4, r5, r6, r7)
                java.lang.String r0 = (java.lang.String) r0
            L4f:
                android.os.Bundle r2 = new android.os.Bundle
                r2.<init>()
                java.util.ArrayList r3 = com.coloros.translate.utils.l.a()
                com.coloros.translate.utils.l0$a r4 = com.coloros.translate.utils.l0.f7130a
                java.lang.Integer r6 = java.lang.Integer.valueOf(r1)
                r8 = 4
                r9 = 0
                java.lang.String r5 = "tts_speed"
                r7 = 0
                java.lang.Object r1 = com.coloros.translate.utils.l0.a.g(r4, r5, r6, r7, r8, r9)
                java.lang.Number r1 = (java.lang.Number) r1
                int r1 = r1.intValue()
                java.lang.Object r1 = r3.get(r1)
                java.lang.String r1 = (java.lang.String) r1
                java.lang.String r3 = "speedGrade"
                r2.putString(r3, r1)
                java.lang.String r1 = "tts_voice"
                r2.putString(r1, r0)
                com.coloros.translate.screen.translate.engine.remote.TtsEngineHandler r0 = r10.this$0
                com.coloros.translate.engine.ITtsEngine r0 = com.coloros.translate.screen.translate.engine.remote.TtsEngineHandler.a(r0)
                if (r0 == 0) goto L8e
                java.lang.String r1 = r10.$text
                com.coloros.translate.engine.info.TtsParams r3 = r10.$ttsParams
                com.coloros.translate.screen.translate.engine.remote.TtsEngineHandler$TtsListener r10 = r10.$ttsListener
                r0.playTextWithExtra(r1, r3, r2, r10)
            L8e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.translate.engine.remote.TtsEngineHandler.a.invoke():void");
        }
    }

    static final class b extends s implements w8.a {
        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            ITtsEngine iTtsEngine = TtsEngineHandler.this.f5667a;
            if (iTtsEngine != null) {
                iTtsEngine.stopPlay();
            }
        }
    }

    public void b() {
    }

    public void c(String text, TtsParams ttsParams, TtsListener ttsListener) {
        r.e(text, "text");
        com.coloros.translate.screen.utils.s.b(new a(ttsParams, this, text, ttsListener));
    }

    public void d(ITtsEngine iTtsEngine) {
        this.f5667a = iTtsEngine;
    }

    public void e() {
        com.coloros.translate.screen.utils.s.b(new b());
    }
}
