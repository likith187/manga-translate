package x1;

import android.content.Context;
import android.os.Bundle;
import com.coloros.translate.engine.IRtasrEngine;
import com.coloros.translate.engine.IRtasrListener;
import com.coloros.translate.engine.info.AsrParams;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class g0 extends IRtasrEngine.Stub implements a2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o f16207a;

    public g0(Context context, String str) {
        this.f16207a = new com.coloros.translate.engine.asr.voicetranslate.k(context.getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A() {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "stop");
        this.f16207a.stop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B() {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "stopAsr");
        this.f16207a.stopAsr();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C() {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "stopAudioFile");
        this.f16207a.stopAudioFile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D() {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "stopRecord");
        this.f16207a.stopRecord();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(String str) {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "unRegisterRtasrListener, tag = " + str);
        this.f16207a.unRegisterRtasrListener(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "destroy");
        this.f16207a.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        com.coloros.translate.utils.c0.m("LongRtasrEngine", "destroyEngine inner");
        this.f16207a.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "pauseRecord");
        this.f16207a.pauseRecord();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(String str, IRtasrListener iRtasrListener) {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "registerRtasrListener");
        this.f16207a.registerRtasrListener(str, iRtasrListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "resumeRecod");
        this.f16207a.resumeRecord();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(Bundle bundle) {
        StringBuilder sb = new StringBuilder();
        sb.append("saveAudioFile, bundle nullable is ");
        sb.append(bundle == null);
        com.coloros.translate.utils.c0.i("LongRtasrEngine", sb.toString());
        this.f16207a.saveAudioFile(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(byte[] bArr) {
        this.f16207a.sendAudioBytes(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(AsrParams asrParams) {
        StringBuilder sb = new StringBuilder();
        sb.append("setConfig, asrParams = ");
        sb.append(asrParams == null ? AbstractJsonLexerKt.NULL : asrParams.toString());
        com.coloros.translate.utils.c0.i("LongRtasrEngine", sb.toString());
        this.f16207a.setConfig(asrParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(Bundle bundle) {
        StringBuilder sb = new StringBuilder();
        sb.append("startAsr, bundle nullable is ");
        sb.append(bundle == null);
        com.coloros.translate.utils.c0.i("LongRtasrEngine", sb.toString());
        this.f16207a.startAsr(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "startRecord");
        this.f16207a.startRecord();
    }

    @Override // a2.a
    public void a() {
        com.coloros.translate.utils.c0.m("LongRtasrEngine", "destroyEngine");
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f16256a.r();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void destroy() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f16254a.q();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public Bundle invokeMethod(String str, String str2, Bundle bundle) {
        com.coloros.translate.utils.c0.i("LongRtasrEngine", "invokeMethod, method = " + str + "; arg = " + str2);
        return this.f16207a.invokeMethod(str, str2, bundle);
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void pauseRecord() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f16261a.s();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void registerRtasrListener(final String str, final IRtasrListener iRtasrListener) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.f0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16202a.t(str, iRtasrListener);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void resumeRecord() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.d0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16197a.u();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void saveAudioFile(final Bundle bundle) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.b0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16192a.v(bundle);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void sendAudioBytes(final byte[] bArr) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.r
            @Override // java.lang.Runnable
            public final void run() {
                this.f16243a.w(bArr);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void setConfig(final AsrParams asrParams) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.t
            @Override // java.lang.Runnable
            public final void run() {
                this.f16250a.x(asrParams);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void startAsr(final Bundle bundle) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f16247a.y(bundle);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void startRecord() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16187a.z();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void stop() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f16263a.A();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void stopAsr() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.e0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16199a.B();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void stopAudioFile() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f16266a.C();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void stopRecord() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.c0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16194a.D();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void unRegisterRtasrListener(final String str) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f16258a.E(str);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void useBluetoothMic(boolean z10) {
        com.coloros.translate.utils.c0.m("LongRtasrEngine", "useBluetoothMic");
        this.f16207a.useBluetoothMic(z10);
    }
}
