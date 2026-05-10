package x1;

import android.content.Context;
import android.os.Bundle;
import com.coloros.translate.engine.IRtasrEngine;
import com.coloros.translate.engine.IRtasrListener;
import com.coloros.translate.engine.info.AsrParams;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class z0 extends IRtasrEngine.Stub implements a2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f16267a;

    public z0(Context context, String str) {
        this.f16267a = new com.coloros.translate.engine.asr.voicetranslate.k(context.getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A() {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "stop");
        this.f16267a.stop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B() {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "stopAsr");
        this.f16267a.stopAsr();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C() {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "stopAudioFile");
        this.f16267a.stopAudioFile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D() {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "stopRecord");
        this.f16267a.stopRecord();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(String str) {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "unRegisterRtasrListener");
        this.f16267a.unRegisterRtasrListener(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "destroy");
        this.f16267a.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "destroyEngine");
        this.f16267a.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "pauseRecord");
        this.f16267a.pauseRecord();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(String str, IRtasrListener iRtasrListener) {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "registerRtasrListener");
        this.f16267a.registerRtasrListener(str, iRtasrListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "resumeRecod");
        this.f16267a.resumeRecord();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(Bundle bundle) {
        StringBuilder sb = new StringBuilder();
        sb.append("saveAudioFile, bundle nullable is ");
        sb.append(bundle == null);
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", sb.toString());
        this.f16267a.saveAudioFile(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(byte[] bArr) {
        this.f16267a.sendAudioBytes(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(AsrParams asrParams) {
        StringBuilder sb = new StringBuilder();
        sb.append("setConfig, asrParams = ");
        sb.append(asrParams == null ? AbstractJsonLexerKt.NULL : asrParams.toString());
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", sb.toString());
        this.f16267a.setConfig(asrParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(Bundle bundle) {
        StringBuilder sb = new StringBuilder();
        sb.append("startAsr, bundle nullable is ");
        sb.append(bundle == null);
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", sb.toString());
        this.f16267a.startAsr(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "startRecord");
        this.f16267a.startRecord();
    }

    @Override // a2.a
    public void a() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.u0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16255a.r();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void destroy() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.v0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16257a.q();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public Bundle invokeMethod(String str, String str2, Bundle bundle) {
        com.coloros.translate.utils.c0.i("ShortRtasrEngine", "invokeMethod, method = " + str + "; arg = " + str2);
        return this.f16267a.invokeMethod(str, str2, bundle);
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void pauseRecord() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.n0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16230a.s();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void registerRtasrListener(final String str, final IRtasrListener iRtasrListener) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.p0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16232a.t(str, iRtasrListener);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void resumeRecord() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.q0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16242a.u();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void saveAudioFile(final Bundle bundle) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.t0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16252a.v(bundle);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void sendAudioBytes(final byte[] bArr) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.y0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16264a.w(bArr);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void setConfig(final AsrParams asrParams) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.l0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16223a.x(asrParams);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void startAsr(final Bundle bundle) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.r0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16245a.y(bundle);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void startRecord() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.s0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16249a.z();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void stop() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.o0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16231a.A();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void stopAsr() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.x0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16262a.B();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void stopAudioFile() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.w0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16260a.C();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void stopRecord() {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.m0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16226a.D();
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void unRegisterRtasrListener(final String str) {
        com.coloros.translate.utils.t0.c("asr_request", new Runnable() { // from class: x1.k0
            @Override // java.lang.Runnable
            public final void run() {
                this.f16218a.E(str);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrEngine
    public void useBluetoothMic(boolean z10) {
        com.coloros.translate.utils.c0.m("ShortRtasrEngine", "useBluetoothMic");
        this.f16267a.useBluetoothMic(z10);
    }
}
