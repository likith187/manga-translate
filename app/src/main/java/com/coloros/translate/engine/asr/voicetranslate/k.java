package com.coloros.translate.engine.asr.voicetranslate;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.coloros.translate.engine.asr.audiofile.BlueBoothMicControl;
import com.coloros.translate.engine.info.AsrParams;
import com.coloros.translate.engine.info.AsrResult;
import com.coloros.translate.engine.info.AsrTranslateResult;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.v0;
import java.io.File;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.q;
import n8.r;
import x1.i0;
import x1.n;
import x1.p;
import z1.a;

/* JADX INFO: loaded from: classes.dex */
public final class k extends g implements i0, a.b, p {

    /* JADX INFO: renamed from: v */
    public static final a f4903v = new a(null);

    /* JADX INFO: renamed from: h */
    private final String f4904h;

    /* JADX INFO: renamed from: i */
    private String f4905i;

    /* JADX INFO: renamed from: j */
    private boolean f4906j;

    /* JADX INFO: renamed from: k */
    private y1.b f4907k;

    /* JADX INFO: renamed from: l */
    private z1.a f4908l;

    /* JADX INFO: renamed from: m */
    private z1.c f4909m;

    /* JADX INFO: renamed from: n */
    private final n8.j f4910n;

    /* JADX INFO: renamed from: o */
    private BlueBoothMicControl f4911o;

    /* JADX INFO: renamed from: p */
    private boolean f4912p;

    /* JADX INFO: renamed from: q */
    private boolean f4913q;

    /* JADX INFO: renamed from: r */
    private v0 f4914r;

    /* JADX INFO: renamed from: s */
    private boolean f4915s;

    /* JADX INFO: renamed from: t */
    private boolean f4916t;

    /* JADX INFO: renamed from: u */
    private com.coloros.translate.engine.asr.audiofile.e f4917u;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {
        final /* synthetic */ Bundle $params;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Bundle bundle) {
            super(0);
            this.$params = bundle;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            k.this.A(this.$params);
        }
    }

    static final class c extends s implements w8.a {
        final /* synthetic */ Bundle $params;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Bundle bundle) {
            super(0);
            this.$params = bundle;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            k.this.z(this.$params);
        }
    }

    static final class d extends s implements w8.a {
        public static final d INSTANCE = new d();

        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final z1.g mo8invoke() {
            return new z1.g();
        }
    }

    public k(Context context) {
        super(context);
        this.f4904h = "VoiceTranslateAsrWithRecorderWrapper:" + this;
        this.f4910n = n8.k.b(d.INSTANCE);
        this.f4911o = new BlueBoothMicControl();
        C();
        this.f4913q = true;
        this.f4914r = new v0("asrSaveFile");
    }

    public final void A(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        String string = bundle.getString("asr_param_file_type", "mp3");
        String string2 = bundle.getString("asr_param_file_path", null);
        if (string2 == null) {
            Context mContext = this.f16186c;
            r.d(mContext, "mContext");
            string2 = l.d(mContext);
        }
        String string3 = bundle.getString("asr_param_file_name", this.f4905i + ".mp3");
        String string4 = bundle.getString("asr_param_share_audio_package_name", null);
        c0.f7098a.d(this.f4904h, "initAudioFileHelper, audioType = " + string);
        r.b(string);
        com.coloros.translate.engine.asr.audiofile.e eVarA = com.coloros.translate.engine.asr.audiofile.a.a(string);
        if (eVarA == null) {
            n nVarM = m();
            if (nVarM != null) {
                com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.ASR_ENCODE_EXCEPTION;
                nVarM.onResultStatus(3, kVar.getCode(), kVar.getMessage());
            }
        } else {
            eVarA.a(v(string));
            File fileB = eVarA.b(string2, string3);
            if (fileB != null && string4 != null && string4.length() != 0) {
                Context mContext2 = this.f16186c;
                r.d(mContext2, "mContext");
                r.b(string4);
                l.e(mContext2, fileB, string4);
            }
        }
        this.f4917u = eVarA;
    }

    private final void B() {
        c0.f7098a.d(this.f4904h, "preloadStart isPreloadMode:" + this.f4913q);
        this.f4912p = true;
        if (this.f4913q) {
            z1.c cVar = this.f4909m;
            if (cVar != null) {
                cVar.i();
            }
            c();
        }
    }

    private final void C() {
        c0.f7098a.d(this.f4904h, "prepareAsrClientBeforeInit:" + this.f4907k);
        if (this.f4907k == null) {
            Context mContext = this.f16186c;
            r.d(mContext, "mContext");
            y1.b bVarA = y1.a.a(mContext, 2, true);
            if (bVarA == null) {
                n nVarM = m();
                if (nVarM != null) {
                    com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.ASR_NOT_SUPPORT;
                    nVarM.m(2, kVar.getCode(), kVar.getMessage());
                }
            } else {
                com.coloros.translate.engine.asr.voicetranslate.c cVar = bVarA instanceof com.coloros.translate.engine.asr.voicetranslate.c ? (com.coloros.translate.engine.asr.voicetranslate.c) bVarA : null;
                if (cVar != null) {
                    cVar.B(this);
                }
            }
            this.f4907k = bVarA;
        }
    }

    private final void D() {
        c0.f7098a.d(this.f4904h, "releaseRecorder");
        z1.a aVar = this.f4908l;
        if (aVar != null) {
            aVar.c();
        }
        this.f4908l = null;
        z1.c cVar = this.f4909m;
        if (cVar != null) {
            cVar.l();
        }
        this.f4909m = null;
    }

    public static final void E(k this$0, byte[] data) {
        r.e(this$0, "this$0");
        r.e(data, "$data");
        com.coloros.translate.engine.asr.audiofile.e eVar = this$0.f4917u;
        if (eVar != null) {
            eVar.e(data, null);
        }
    }

    private final void F() {
        if (this.f4908l == null) {
            c0.f7098a.d(this.f4904h, "startAudioRecorder init manager");
            z1.a aVar = new z1.a(this);
            this.f4908l = aVar;
            z1.a.f(aVar, "mic", -1, null, 4, null);
            return;
        }
        c0.f7098a.d(this.f4904h, "startAudioRecorder, recorder = " + this.f4909m);
        z1.c cVar = this.f4909m;
        if (cVar != null) {
            cVar.n();
        }
        c();
    }

    private final boolean t() {
        AsrParams asrParams = this.f16185b;
        if ((asrParams != null ? asrParams.a() : null) == null) {
            c0.f7098a.e(this.f4904h, "checkBasicParam, before startRecord, you must setConfig and asrParam");
            n nVarM = m();
            if (nVarM != null) {
                nVarM.m(-1, com.coloros.translate.utils.k.ASR_ERROR_OTHER.getCode(), "asr param cannot be null");
            }
            return false;
        }
        this.f4905i = this.f16185b.a().getString("asr_param_call_id", UUID.randomUUID().toString());
        this.f4913q = this.f16185b.a().getBoolean("isPreload", false);
        String str = this.f4905i;
        if (str != null && str.length() != 0) {
            return true;
        }
        c0.f7098a.e(this.f4904h, "checkBasicParam, before startRecord, you must set callId");
        n nVarM2 = m();
        if (nVarM2 != null) {
            nVarM2.m(-1, com.coloros.translate.utils.k.ASR_ERROR_OTHER.getCode(), "callId cannot be null");
        }
        return false;
    }

    private final boolean u(int i10) {
        boolean z10 = i10 == com.coloros.translate.utils.k.ASR_NET_CONNECT.getCode() || i10 == com.coloros.translate.utils.k.ASR_ERROR_DECRYPT_ACK.getCode();
        boolean z11 = i10 == com.coloros.translate.utils.k.ASR_PARAM_INVALID.getCode() || i10 == com.coloros.translate.utils.k.ASR_TASK_NET_ERROR.getCode();
        if (z10 || z11) {
            c0.f7098a.d(this.f4904h, "filterClearScienceMsgErrorCode code:" + i10);
        }
        return z10 || z11;
    }

    private final Bundle v(String str) {
        if (!r.a(str, "mp3")) {
            return null;
        }
        Bundle bundle = new Bundle();
        z1.c cVar = this.f4909m;
        bundle.putInt("param_buffer_size", cVar != null ? cVar.f16593b : 0);
        z1.c cVar2 = this.f4909m;
        bundle.putInt("param_sample_rate", cVar2 != null ? cVar2.e() : 0);
        z1.c cVar3 = this.f4909m;
        bundle.putInt("param_channel_count", cVar3 != null ? cVar3.c() : 0);
        return bundle;
    }

    private final z1.g w() {
        return (z1.g) this.f4910n.getValue();
    }

    private final Bundle x(Bundle bundle) {
        c0.a aVar = c0.f7098a;
        aVar.d(this.f4904h, "asr_grant_permission");
        if (bundle == null) {
            aVar.d(this.f4904h, "asr_grant_permission extras == null");
            return null;
        }
        com.coloros.translate.engine.asr.audiofile.e eVar = this.f4917u;
        File fileC = eVar != null ? eVar.c(null, null) : null;
        String string = bundle.getString("asr_param_share_audio_package_name", "");
        if (string == null || string.length() == 0) {
            aVar.d(this.f4904h, "asr_grant_permission packageName null");
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("shareResult", false);
            return bundle2;
        }
        if (fileC == null) {
            String string2 = bundle.getString("asr_param_file_path", null);
            if (string2 == null) {
                Context mContext = this.f16186c;
                r.d(mContext, "mContext");
                string2 = l.d(mContext);
            }
            String string3 = bundle.getString("asr_param_call_id", this.f4905i);
            fileC = new File(string2, bundle.getString("asr_param_file_name", (string3 != null ? string3 : "") + ".mp3"));
            aVar.d(this.f4904h, "asr_grant_permission shareFile2");
        }
        Context mContext2 = this.f16186c;
        r.d(mContext2, "mContext");
        r.b(string);
        Uri uriE = l.e(mContext2, fileC, string);
        aVar.d(this.f4904h, "asr_grant_permission uriResult:" + (uriE == null));
        Bundle bundle3 = new Bundle();
        if (uriE != null) {
            bundle3.putString("shareResultFile", uriE.toString());
        }
        bundle3.putBoolean("shareResult", uriE != null);
        return bundle3;
    }

    private final boolean y() {
        return this.f4909m != null || this.f4913q;
    }

    public final void z(Bundle bundle) {
        c0.f7098a.d(this.f4904h, "initAsrClientIfNecessary:" + this.f4907k);
        C();
        y1.b bVar = this.f4907k;
        com.coloros.translate.engine.asr.voicetranslate.c cVar = bVar instanceof com.coloros.translate.engine.asr.voicetranslate.c ? (com.coloros.translate.engine.asr.voicetranslate.c) bVar : null;
        if (cVar != null) {
            cVar.B(this);
        }
        y1.b bVar2 = this.f4907k;
        com.coloros.translate.engine.asr.voicetranslate.c cVar2 = bVar2 instanceof com.coloros.translate.engine.asr.voicetranslate.c ? (com.coloros.translate.engine.asr.voicetranslate.c) bVar2 : null;
        if (cVar2 != null) {
            cVar2.C(this.f4913q);
        }
        y1.b bVar3 = this.f4907k;
        if (bVar3 != null) {
            String str = this.f4905i;
            if (str == null) {
                str = "";
            }
            bVar3.a(str, bundle);
        }
        n();
    }

    @Override // x1.p
    public void a(final byte[] data, long j10) {
        r.e(data, "data");
        if (this.f4915s) {
            this.f4914r.c(new Runnable() { // from class: com.coloros.translate.engine.asr.voicetranslate.j
                @Override // java.lang.Runnable
                public final void run() {
                    k.E(this.f4901a, data);
                }
            });
        }
    }

    @Override // x1.i0
    public void b() {
        c0.f7098a.i(this.f4904h, "onPost");
        n nVarM = m();
        if (nVarM != null) {
            nVarM.onStop();
        }
    }

    @Override // x1.i0
    public void c() {
        c0.f7098a.i(this.f4904h, "onPre");
        n nVarM = m();
        if (nVarM != null) {
            nVarM.onStart();
        }
    }

    @Override // x1.p
    public void d() {
        c0.f7098a.d(this.f4904h, "onReceiveResult needAsr:" + this.f4906j);
        if (this.f4906j) {
            n();
        } else {
            k();
        }
    }

    @Override // x1.o
    public void destroy() {
        this.f4911o.e();
        k();
        c0.f7098a.i(this.f4904h, "stop audioRecorder:" + this.f4909m);
        stopAudioFile();
        D();
        y1.b bVar = this.f4907k;
        if (bVar != null) {
            bVar.destroy();
        }
        this.f4914r.f();
        this.f4907k = null;
        com.coloros.translate.engine.asr.audiofile.e eVar = this.f4917u;
        if (eVar != null) {
            eVar.destroy();
        }
        this.f4917u = null;
        p();
    }

    @Override // z1.a.b
    public void e(z1.c cVar) {
        if (cVar == null) {
            c0.f7098a.e(this.f4904h, "onAudioRecorderCreated null");
            n nVarM = m();
            if (nVarM != null) {
                com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.ASR_CREATE_RECORDER_ERROR;
                nVarM.m(1, kVar.getCode(), kVar.getMessage());
                return;
            }
            return;
        }
        if (this.f4909m == null) {
            cVar.o(this);
            cVar.j();
            cVar.p();
            w().b(cVar.f16593b);
            this.f4909m = cVar;
        }
    }

    @Override // x1.p
    public void f(int i10, int i11, String str) {
        if (!u(i11)) {
            k();
        }
        n nVarM = m();
        if (nVarM != null) {
            nVarM.m(i10, i11, str);
        }
    }

    @Override // x1.i0
    public void g(byte[] data, byte[] bArr) {
        y1.b bVar;
        r.e(data, "data");
        q qVarA = w().a(data, bArr, this.f4912p);
        if (!this.f4906j || (bVar = this.f4907k) == null) {
            return;
        }
        bVar.b((byte[]) qVarA.getFirst(), (byte[]) qVarA.getSecond());
    }

    @Override // x1.o
    public Bundle invokeMethod(String str, String str2, Bundle bundle) {
        try {
            r.a aVar = n8.r.Companion;
            if (kotlin.jvm.internal.r.a(str, "grantPermission")) {
                return x(bundle);
            }
            if (!kotlin.jvm.internal.r.a(str, "clear_translation_cache_file")) {
                y1.b bVar = this.f4907k;
                if (bVar != null) {
                    return bVar.invokeMethod(str, str2, bundle);
                }
                return null;
            }
            c0.f7098a.d(this.f4904h, "invokeMethod = " + str + ", delete file");
            String string = bundle != null ? bundle.getString("asr_param_call_id", null) : null;
            if (string == null) {
                Context mContext = this.f16186c;
                kotlin.jvm.internal.r.d(mContext, "mContext");
                l.c(mContext, this.f4905i);
                return null;
            }
            Context mContext2 = this.f16186c;
            kotlin.jvm.internal.r.d(mContext2, "mContext");
            l.b(mContext2, string);
            return null;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e(this.f4904h, "invokeMethod = " + str + ", error: " + thM62exceptionOrNullimpl);
            }
            return null;
        }
    }

    @Override // com.coloros.translate.engine.asr.voicetranslate.g
    public void o() {
        super.o();
        stopAsr();
        destroy();
    }

    @Override // x1.p
    public void onRecordTime(long j10) {
        n nVarM;
        if (!this.f4915s || (nVarM = m()) == null) {
            return;
        }
        nVarM.onRecordTime(j10);
    }

    @Override // x1.p
    public void onRtasrResult(AsrResult asrResult) {
        kotlin.jvm.internal.r.e(asrResult, "asrResult");
        n();
        n nVarM = m();
        if (nVarM != null) {
            nVarM.onRtasrResult(asrResult);
        }
    }

    @Override // x1.p
    public void onTranslateResult(AsrTranslateResult asrTranslateResult) {
        kotlin.jvm.internal.r.e(asrTranslateResult, "asrTranslateResult");
        n();
        n nVarM = m();
        if (nVarM != null) {
            nVarM.onTranslateResult(asrTranslateResult);
        }
    }

    @Override // x1.i0
    public void onVoiceVolume(double d10) {
        n nVarM = m();
        if (nVarM != null) {
            nVarM.onVoiceVolume(d10);
        }
    }

    @Override // com.coloros.translate.engine.asr.voicetranslate.g, x1.o
    public void pauseRecord() {
        z1.c cVar;
        c0.f7098a.i(this.f4904h, "pauseRecord audioRecorder:" + this.f4909m);
        if (this.f4913q && (cVar = this.f4909m) != null) {
            cVar.i();
        }
        this.f4912p = true;
        super.pauseRecord();
        if (this.f4912p && this.f4913q) {
            b();
        }
    }

    @Override // com.coloros.translate.engine.asr.voicetranslate.g, x1.o
    public void resumeRecord() {
        c0.f7098a.i(this.f4904h, "resumeRecord audioRecorder:" + this.f4909m);
        if (this.f4913q) {
            F();
        }
        this.f4912p = false;
        super.resumeRecord();
    }

    @Override // x1.o
    public void saveAudioFile(Bundle bundle) {
        this.f4916t = bundle != null ? bundle.getBoolean("isNeedSaveAudioDataBeforeAsr", true) : true;
        this.f4915s = true;
        b bVar = new b(bundle);
        if (y()) {
            bVar.mo8invoke();
            return;
        }
        z1.a aVar = this.f4908l;
        if (aVar != null) {
            aVar.a("saveFile-", bVar);
        }
    }

    @Override // x1.o
    public void startAsr(Bundle bundle) {
        this.f4906j = true;
        c cVar = new c(bundle);
        if (y()) {
            cVar.mo8invoke();
            return;
        }
        z1.a aVar = this.f4908l;
        if (aVar != null) {
            aVar.a("asr", cVar);
        }
    }

    @Override // x1.a, x1.o
    public void startRecord() {
        c0.a aVar = c0.f7098a;
        aVar.i(this.f4904h, "startRecord audioRecorder:" + this.f4909m);
        if (!com.coloros.translate.utils.i.a(this.f16186c)) {
            k();
            n nVarM = m();
            if (nVarM != null) {
                com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.NO_NETWORK;
                nVarM.m(-1, kVar.getCode(), kVar.getMessage());
            }
            aVar.i(this.f4904h, "startRecord no net");
            return;
        }
        t();
        super.startRecord();
        if (this.f16185b == null) {
            aVar.e(this.f4904h, "before startRecord, you must setConfig");
            return;
        }
        aVar.i(this.f4904h, "startRecord audioRecorder:" + this.f4909m + " isPreloadMode:" + this.f4913q);
        if (this.f4913q) {
            B();
        } else {
            F();
        }
        Bundle bundleA = this.f16185b.a();
        bundleA.putString("asr_param_language_from", this.f16185b.b());
        bundleA.putString("asr_param_language_to", this.f16185b.c());
        startAsr(bundleA);
        this.f4912p = false;
    }

    @Override // x1.o
    public void stop() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            k();
            c0.f7098a.i(this.f4904h, "stop audioRecorder:" + this.f4909m);
            stopAsr();
            D();
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e(this.f4904h, "stop:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    @Override // x1.o
    public void stopAsr() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            this.f4911o.i();
            this.f4906j = false;
            z1.a aVar2 = this.f4908l;
            if (aVar2 != null) {
                aVar2.g("asr");
            }
            y1.b bVar = this.f4907k;
            if (bVar != null) {
                bVar.stop();
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e(this.f4904h, "stopAsr:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    @Override // x1.o
    public void stopAudioFile() {
        this.f4915s = false;
        this.f4916t = false;
        z1.a aVar = this.f4908l;
        if (aVar != null) {
            aVar.g("saveFile-");
        }
        com.coloros.translate.engine.asr.audiofile.e eVar = this.f4917u;
        if (eVar != null) {
            eVar.d();
        }
    }

    @Override // x1.o
    public void useBluetoothMic(boolean z10) {
        c0.f7098a.d(this.f4904h, "useBluetoothMic = " + z10);
        if (z10) {
            this.f4911o.h();
        } else {
            this.f4911o.i();
        }
    }
}
