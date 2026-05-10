package com.coloros.translate.ui.simultaneous.main;

import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemClock;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.engine.info.AsrParams;
import com.coloros.translate.engine.info.AsrResult;
import com.coloros.translate.engine.info.AsrTranslateResult;
import com.coloros.translate.engine.info.TtsParams;
import com.coloros.translate.repository.local.SimultaneousHistory;
import com.coloros.translate.repository.local.SimultaneousSentence;
import com.coloros.translate.repository.remote.RtasrEngineHandler;
import com.coloros.translate.repository.remote.TtsEngineHandler;
import com.coloros.translate.repository.remote.a;
import com.coloros.translate.repository.remote.c;
import com.coloros.translate.ui.simultaneous.main.m;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.n;
import com.coloros.translate.utils.z0;
import com.oplus.aiunit.speech.asr.slot.ASRInputSlot;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class m extends com.coloros.translate.base.q {
    public static final a W = new a(null);
    private static boolean X;
    private static boolean Y;
    private String A;
    private boolean B;
    private final androidx.lifecycle.a0 C;
    private int D;
    private boolean E;
    private boolean F;
    private final androidx.lifecycle.a0 G;
    private volatile boolean H;
    private LinkedBlockingQueue I;
    private AtomicBoolean J;
    private boolean K;
    private final n8.j L;
    private final n8.j M;
    private final RtasrEngineHandler.RtasrListener N;
    private final n8.j O;
    private volatile int P;
    private final Runnable Q;
    private final Handler R;
    private boolean S;
    private final i T;
    private final n8.j U;
    private volatile boolean V;

    /* JADX INFO: renamed from: g */
    private boolean f6721g;

    /* JADX INFO: renamed from: h */
    private volatile boolean f6722h;

    /* JADX INFO: renamed from: i */
    private volatile boolean f6723i;

    /* JADX INFO: renamed from: j */
    private volatile boolean f6724j;

    /* JADX INFO: renamed from: k */
    private volatile long f6725k;

    /* JADX INFO: renamed from: l */
    private boolean f6726l;

    /* JADX INFO: renamed from: m */
    private final androidx.lifecycle.a0 f6727m;

    /* JADX INFO: renamed from: n */
    private final androidx.lifecycle.a0 f6728n;

    /* JADX INFO: renamed from: o */
    private final androidx.lifecycle.a0 f6729o;

    /* JADX INFO: renamed from: p */
    private final androidx.lifecycle.a0 f6730p;

    /* JADX INFO: renamed from: q */
    private final androidx.lifecycle.a0 f6731q;

    /* JADX INFO: renamed from: r */
    private final androidx.lifecycle.a0 f6732r;

    /* JADX INFO: renamed from: s */
    private androidx.lifecycle.a0 f6733s;

    /* JADX INFO: renamed from: t */
    private androidx.lifecycle.a0 f6734t;

    /* JADX INFO: renamed from: u */
    private int f6735u;

    /* JADX INFO: renamed from: v */
    private volatile boolean f6736v;

    /* JADX INFO: renamed from: w */
    private String f6737w;

    /* JADX INFO: renamed from: x */
    private String f6738x;

    /* JADX INFO: renamed from: y */
    private String f6739y;

    /* JADX INFO: renamed from: z */
    private String f6740z;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(boolean z10) {
            m.X = z10;
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final AsrParams mo8invoke() {
            return new AsrParams(3600000, "", "", 2, "", "", null, 64, null);
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final RtasrEngineHandler mo8invoke() {
            return com.coloros.translate.repository.d.f5439a.e().u();
        }
    }

    public static final class d extends RtasrEngineHandler.RtasrListener {

        /* JADX INFO: renamed from: a */
        private n.a f6741a = new n.a();

        static final class a extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ m this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(m mVar) {
                super(0);
                this.this$0 = mVar;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return h0.INSTANCE;
            }

            public final void invoke() {
                if (this.this$0.R()) {
                    com.coloros.translate.utils.w.h(R.string.no_sound_detected3, 0, 2, null);
                    this.this$0.L0();
                }
            }
        }

        static final class b extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ m this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(m mVar) {
                super(0);
                this.this$0 = mVar;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return h0.INSTANCE;
            }

            public final void invoke() {
                this.this$0.T().k(Boolean.TRUE);
            }
        }

        static final class c extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ m this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(m mVar) {
                super(0);
                this.this$0 = mVar;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return h0.INSTANCE;
            }

            public final void invoke() {
                if (this.this$0.R()) {
                    this.this$0.L0();
                }
            }
        }

        d() {
        }

        public static final void c(AsrResult asrResult, m this$0) {
            String str;
            String str2;
            boolean z10;
            String str3;
            String str4;
            kotlin.jvm.internal.r.e(asrResult, "$asrResult");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            if (aVar.l()) {
                aVar.d("SimultaneousMainViewModel", "onRtasrResult " + aVar.g(asrResult.d()) + " ");
            }
            if (asrResult.d().length() > 0) {
                this$0.R.removeCallbacks(this$0.Q);
                String string = asrResult.a().getString(ASRInputSlot.KEY_FILE_RECORDID, null);
                if (string != null && string.length() != 0 && !kotlin.jvm.internal.r.a(string, this$0.f6739y)) {
                    aVar.i("SimultaneousMainViewModel", "onRtasrResult reject no same id");
                    return;
                }
                long jB = asrResult.b() + this$0.W();
                if (!this$0.R()) {
                    aVar.i("SimultaneousMainViewModel", "onRtasrResult asr stop reject");
                    if (string == null) {
                        str3 = this$0.f6739y;
                    } else {
                        kotlin.jvm.internal.r.b(string);
                        str3 = string;
                    }
                    n8.q qVarJ = this$0.J(jB, str3, false);
                    if (qVarJ != null) {
                        o2.a aVar2 = (o2.a) qVarJ.getFirst();
                        aVar2.q(asrResult.d());
                        if (string == null) {
                            str4 = this$0.f6739y;
                        } else {
                            kotlin.jvm.internal.r.b(string);
                            str4 = string;
                        }
                        aVar2.w(str4);
                        if (string != null && string.length() != 0) {
                            aVar2.x(r11.getInt("startOffset", 0));
                            aVar2.o(r11.getInt("endOffset", 0));
                            aVar.d("SimultaneousMainViewModel", "onRtasrResult pageOffSet:" + aVar2.e());
                        }
                        boolean zF0 = this$0.f0();
                        aVar2.r(!zF0);
                        aVar2.n(asrResult.c() == 2);
                        this$0.t0(aVar2, !zF0, ((Boolean) qVarJ.getSecond()).booleanValue());
                        return;
                    }
                    return;
                }
                if (string == null) {
                    str = this$0.f6739y;
                } else {
                    kotlin.jvm.internal.r.b(string);
                    str = string;
                }
                n8.q qVarK = m.K(this$0, jB, str, false, 4, null);
                if (qVarK != null) {
                    o2.a aVar3 = (o2.a) qVarK.getFirst();
                    if (kotlin.jvm.internal.r.a(aVar3.b(), asrResult.d()) && asrResult.c() != 2) {
                        aVar.d("SimultaneousMainViewModel", "onRtasrResult asr same reject");
                        return;
                    }
                    aVar3.q(asrResult.d());
                    if (string == null) {
                        str2 = this$0.f6739y;
                    } else {
                        kotlin.jvm.internal.r.b(string);
                        str2 = string;
                    }
                    aVar3.w(str2);
                    if (string == null || string.length() == 0) {
                        z10 = false;
                    } else {
                        z10 = false;
                        aVar3.x(r11.getInt("startOffset", 0));
                        aVar3.o(r11.getInt("endOffset", 0));
                        aVar.d("SimultaneousMainViewModel", "AsrGoing onRtasrResult pageOffSet:" + aVar3.e());
                    }
                    boolean zF02 = this$0.f0();
                    aVar3.r(!zF02);
                    aVar3.n(asrResult.c() == 2 ? true : z10);
                    this$0.t0(aVar3, !zF02, ((Boolean) qVarK.getSecond()).booleanValue());
                    if (aVar3.i()) {
                        this$0.b0().i(aVar3);
                    }
                    this$0.m0().k(Boolean.TRUE);
                }
            }
        }

        public static final void d(AsrTranslateResult asrTranslateResult, m this$0) {
            kotlin.jvm.internal.r.e(asrTranslateResult, "$asrTranslateResult");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            if (aVar.l()) {
                aVar.d("SimultaneousMainViewModel", "onTranslateResult " + aVar.g(asrTranslateResult.c()));
            }
            if (asrTranslateResult.c().length() == 0) {
                aVar.i("SimultaneousMainViewModel", "onTranslateResult reject empty");
                return;
            }
            String string = asrTranslateResult.a().getString(ASRInputSlot.KEY_FILE_RECORDID, null);
            if (string == null) {
                string = this$0.f6739y;
            } else {
                kotlin.jvm.internal.r.b(string);
            }
            this$0.B = asrTranslateResult.a().getBoolean("translate_is_safe", true);
            if (!kotlin.jvm.internal.r.a(string, this$0.f6739y)) {
                aVar.i("SimultaneousMainViewModel", "onTranslateResult reject no same id");
                return;
            }
            aVar.d("SimultaneousMainViewModel", "isResultSafe : " + this$0.B);
            com.coloros.translate.utils.n.INSTANCE.V(this$0.f6739y, "simultaneous", this$0.B ^ true);
            long jB = (long) (asrTranslateResult.b() + this$0.W());
            if (!this$0.R()) {
                aVar.i("SimultaneousMainViewModel", "onTranslateResult asr stop reject");
                n8.q qVarJ = this$0.J(jB, this$0.f6739y, false);
                if (qVarJ != null) {
                    o2.a aVar2 = (o2.a) qVarJ.getFirst();
                    aVar2.z(asrTranslateResult.c());
                    aVar2.v(asrTranslateResult.d() == 2);
                    aVar2.A(asrTranslateResult.d() == 2);
                    if (aVar2.l()) {
                        this$0.N().k(Long.valueOf(aVar2.d()));
                        aVar.d("SimultaneousMainViewModel", "翻译结束 : " + aVar2.d());
                        this$0.b0().g(aVar2);
                    }
                    this$0.t0(aVar2, !aVar2.j(), ((Boolean) qVarJ.getSecond()).booleanValue());
                    return;
                }
                return;
            }
            n8.q qVarK = m.K(this$0, jB, this$0.f6739y, false, 4, null);
            if (qVarK != null) {
                o2.a aVar3 = (o2.a) qVarK.getFirst();
                aVar3.z(asrTranslateResult.c());
                aVar3.v(asrTranslateResult.d() == 2);
                aVar3.A(asrTranslateResult.d() == 2);
                if (aVar3.l()) {
                    this$0.N().k(Long.valueOf(aVar3.d()));
                    aVar.d("SimultaneousMainViewModel", "翻译结束 : " + aVar3.d());
                    this$0.b0().g(aVar3);
                }
                this$0.t0(aVar3, !aVar3.j(), ((Boolean) qVarK.getSecond()).booleanValue());
            }
            if (!com.coloros.translate.utils.q.a() && asrTranslateResult.d() == 2 && kotlin.jvm.internal.r.a(this$0.m0().e(), Boolean.TRUE)) {
                aVar.d("SimultaneousMainViewModel", "playTts isPlayTtsEnable" + this$0.j0() + "  isPlayTts" + this$0.i0());
                g0.c(this$0.I, asrTranslateResult.c());
                m.r0(this$0, false, 1, null);
            }
        }

        @Override // com.coloros.translate.repository.remote.RtasrEngineHandler.RtasrListener, com.coloros.translate.engine.IRtasrListener
        public void onRecordTime(long j10) {
            m.this.C0(j10);
            if (m.this.k0()) {
                m.this.a0().k(Integer.valueOf((int) ((j10 * 40.0f) / 1000)));
            }
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onRtasrResult(final AsrResult asrResult) {
            kotlin.jvm.internal.r.e(asrResult, "asrResult");
            final m mVar = m.this;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.ui.simultaneous.main.o
                @Override // java.lang.Runnable
                public final void run() {
                    m.d.c(asrResult, mVar);
                }
            }, 1, null);
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onStart() {
            this.f6741a.d(SystemClock.elapsedRealtime());
            m.this.B = true;
        }

        @Override // com.coloros.translate.repository.remote.RtasrEngineHandler.RtasrListener, com.coloros.translate.engine.IRtasrListener
        public void onStatus(int i10, String str) {
            com.coloros.translate.utils.c0.f7098a.i("SimultaneousMainViewModel", "code " + i10 + " msg " + str);
            m.this.B0(false);
            com.coloros.translate.utils.n.INSTANCE.a0(i10);
            m.this.A0(i10);
            com.coloros.translate.repository.c.a(i10, str, new a(m.this), new b(m.this), new c(m.this));
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onStop() {
            this.f6741a.c(SystemClock.elapsedRealtime());
            m.this.R.removeCallbacks(m.this.Q);
            com.coloros.translate.utils.n.INSTANCE.P("3", this.f6741a);
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onTranslateResult(final AsrTranslateResult asrTranslateResult) {
            kotlin.jvm.internal.r.e(asrTranslateResult, "asrTranslateResult");
            final m mVar = m.this;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.ui.simultaneous.main.n
                @Override // java.lang.Runnable
                public final void run() {
                    m.d.d(asrTranslateResult, mVar);
                }
            }, 1, null);
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onVoiceVolume(double d10) {
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        public static final e INSTANCE = new e();

        e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TtsEngineHandler mo8invoke() {
            return com.coloros.translate.repository.d.f5439a.e().x();
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.a {
        f() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            m.this.P = ((Number) l0.a.g(l0.f7130a, "simultaneous_name_index", 1, null, 4, null)).intValue();
        }
    }

    public static final class g extends TtsEngineHandler.TtsListener {
        g() {
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStart() {
            m.this.V = false;
            m.this.h(true);
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "tts onStart");
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStatus(int i10, String str) {
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "tts code:" + i10 + " msg:" + str);
            com.coloros.translate.utils.n.INSTANCE.k0(i10);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStop() {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("SimultaneousMainViewModel", "tts onStop");
            m.this.V = false;
            if (!m.this.I.isEmpty()) {
                m.this.q0(true);
                return;
            }
            aVar.d("SimultaneousMainViewModel", "tts onStop empty");
            m.this.V = true;
            if (m.this.c0()) {
                return;
            }
            aVar.d("SimultaneousMainViewModel", "tts onStop muteMusic false");
            m.this.h(false);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onTtsResult(byte[] bArr) {
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ List<SimultaneousSentence> $list;
        final /* synthetic */ SimultaneousHistory $siHistory;
        final /* synthetic */ m this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(SimultaneousHistory simultaneousHistory, List<SimultaneousSentence> list, m mVar) {
            super(0);
            this.$siHistory = simultaneousHistory;
            this.$list = list;
            this.this$0 = mVar;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            Integer num;
            i2.f.b(this.$siHistory);
            List<SimultaneousSentence> list = this.$list;
            if (list != null) {
                i2.f.a(list);
            }
            com.coloros.translate.utils.n nVar = com.coloros.translate.utils.n.INSTANCE;
            List<SimultaneousSentence> list2 = this.$list;
            int iIntValue = 0;
            int size = list2 != null ? list2.size() : 0;
            if (this.this$0.k0() && (num = (Integer) this.this$0.a0().e()) != null) {
                iIntValue = num.intValue();
            }
            nVar.c0(size, iIntValue);
            this.this$0.P++;
            this.this$0.Q0();
        }
    }

    public static final class i implements c.b {
        i() {
        }

        @Override // com.coloros.translate.repository.remote.c.b
        public void a() {
            com.coloros.translate.utils.c0.f7098a.q("SimultaneousMainViewModel", "onServiceDied");
            m.this.V = true;
            RtasrEngineHandler.RtasrListener rtasrListener = m.this.N;
            com.coloros.translate.repository.b bVar = com.coloros.translate.repository.b.TRANSLATION_SERVICE_DIED;
            rtasrListener.onStatus(bVar.getCode(), bVar.getMessage());
        }

        @Override // com.coloros.translate.repository.remote.c.b
        public void b() {
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.a {

        public static final class a implements w8.p {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ m f6745a;

            a(m mVar) {
                this.f6745a = mVar;
            }

            public void a(boolean z10, o2.a asrTranslateResult) {
                kotlin.jvm.internal.r.e(asrTranslateResult, "asrTranslateResult");
                this.f6745a.t0(asrTranslateResult, false, false);
                if (!com.coloros.translate.utils.q.a() && this.f6745a.R() && asrTranslateResult.l() && kotlin.jvm.internal.r.a(this.f6745a.m0().e(), Boolean.TRUE)) {
                    com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "playTts invoke isPlayTtsEnable" + this.f6745a.j0() + "  isPlayTts" + this.f6745a.i0());
                    g0.c(this.f6745a.I, asrTranslateResult.h());
                    m.r0(this.f6745a, false, 1, null);
                }
            }

            @Override // w8.p
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                a(((Boolean) obj).booleanValue(), (o2.a) obj2);
                return h0.INSTANCE;
            }
        }

        j() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final com.coloros.translate.ui.simultaneous.utils.f mo8invoke() {
            com.coloros.translate.ui.simultaneous.utils.f fVar = new com.coloros.translate.ui.simultaneous.utils.f();
            fVar.j(new a(m.this));
            return fVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(Application application) {
        super(application);
        kotlin.jvm.internal.r.e(application, "application");
        this.f6724j = true;
        Boolean bool = Boolean.FALSE;
        this.f6727m = new androidx.lifecycle.a0(bool);
        this.f6728n = new androidx.lifecycle.a0(kotlin.collections.o.t0(kotlin.collections.o.h()));
        this.f6729o = new androidx.lifecycle.a0(0);
        this.f6730p = new androidx.lifecycle.a0(0);
        this.f6731q = new androidx.lifecycle.a0(bool);
        this.f6732r = new androidx.lifecycle.a0(bool);
        this.f6733s = new androidx.lifecycle.a0(bool);
        this.f6734t = new androidx.lifecycle.a0(bool);
        this.f6737w = "";
        this.f6738x = "";
        this.f6739y = UUID.randomUUID().toString() + "-sensitive";
        this.f6740z = "";
        this.A = "";
        this.B = true;
        this.C = new androidx.lifecycle.a0(0);
        this.F = true;
        this.G = new androidx.lifecycle.a0(-1L);
        this.I = new LinkedBlockingQueue();
        this.J = new AtomicBoolean(false);
        this.L = n8.k.b(b.INSTANCE);
        this.M = n8.k.b(new j());
        this.N = new d();
        this.O = n8.k.b(c.INSTANCE);
        this.P = 1;
        this.Q = new Runnable() { // from class: com.coloros.translate.ui.simultaneous.main.l
            @Override // java.lang.Runnable
            public final void run() {
                m.P0();
            }
        };
        this.R = new Handler(Looper.getMainLooper());
        this.T = new i();
        this.U = n8.k.b(e.INSTANCE);
        this.V = true;
    }

    private final void E(String str, String str2) {
        boolean zA = com.coloros.translate.repository.local.a.INSTANCE.a(str + str2);
        RtasrEngineHandler rtasrEngineHandlerY = Y();
        AsrParams asrParamsU = U();
        asrParamsU.e(str);
        asrParamsU.f(str2);
        asrParamsU.a().putString("asr_param_call_id", this.f6739y);
        asrParamsU.a().putBoolean("asr_param_translate_switch", true);
        asrParamsU.a().putLong("OffsetMsgId", this.f6725k);
        asrParamsU.a().putInt("sceneId", 0);
        asrParamsU.a().putBoolean("enableLlm", zA);
        asrParamsU.a().putString("appVersion", "16.0.26");
        rtasrEngineHandlerY.o(asrParamsU);
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "changeLanguageConfig fl:" + str + " tl:" + str2 + " llm:" + zA);
    }

    private final void F(String str) {
        Object objM59constructorimpl;
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "clearCacheFile");
        try {
            r.a aVar = n8.r.Companion;
            RtasrEngineHandler rtasrEngineHandlerY = Y();
            Bundle bundle = new Bundle();
            bundle.putString("asr_param_call_id", str);
            h0 h0Var = h0.INSTANCE;
            objM59constructorimpl = n8.r.m59constructorimpl(rtasrEngineHandlerY.i("clear_translation_cache_file", "", bundle));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousMainViewModel", "clearCacheFile error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    static /* synthetic */ void G(m mVar, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        mVar.F(str);
    }

    private final boolean I() {
        o2.a aVar;
        c0.a aVar2 = com.coloros.translate.utils.c0.f7098a;
        aVar2.d("SimultaneousMainViewModel", "fillPlaceValidData");
        List list = (List) this.f6728n.e();
        boolean z10 = false;
        if (list != null && (aVar = (o2.a) kotlin.collections.o.d0(list)) != null) {
            if (aVar.d() == 0) {
                aVar2.d("SimultaneousMainViewModel", "fillPlaceValidData exist");
                return false;
            }
            if (aVar.h().length() > 0 && !aVar.k()) {
                aVar.v(true);
                if (!com.coloros.translate.utils.q.a()) {
                    g0.c(this.I, aVar.h());
                    r0(this, false, 1, null);
                }
                z10 = true;
            }
            if (aVar.h().length() == 0 && !aVar.i()) {
                b0().i(aVar);
            }
            this.f6727m.k(Boolean.TRUE);
        }
        return z10;
    }

    public static /* synthetic */ n8.q K(m mVar, long j10, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        return mVar.J(j10, str, z10);
    }

    public static /* synthetic */ void K0(m mVar, boolean z10, int i10, Object obj) throws RemoteException {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        mVar.J0(z10);
    }

    private final int L(o2.a aVar) {
        List list = (List) this.f6728n.e();
        if (list == null) {
            return -1;
        }
        int size = list.size();
        do {
            size--;
            if (-1 >= size) {
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "findIndex index:-1");
                return -1;
            }
        } while (list.get(size) != aVar);
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "findIndex index:" + size);
        return size;
    }

    private final void N0() {
        com.coloros.translate.repository.d.f5439a.e().H(this.T);
        n();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "unRegisterListener");
        Y().t("SimultaneousMainViewModel");
    }

    private final String O() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            c0.a aVar2 = com.coloros.translate.utils.c0.f7098a;
            aVar2.d("SimultaneousMainViewModel", "getCurrentRecordFile");
            com.coloros.translate.repository.d.f5439a.e().u();
            RtasrEngineHandler rtasrEngineHandlerY = Y();
            Bundle bundle = new Bundle();
            bundle.putString("asr_param_share_audio_package_name", TranslationApplication.f4754b.a().getPackageName());
            bundle.putString("asr_param_call_id", this.f6739y);
            h0 h0Var = h0.INSTANCE;
            Bundle bundleI = rtasrEngineHandlerY.i("grantPermission", "", bundle);
            if (bundleI == null) {
                bundleI = null;
            } else if (bundleI.getBoolean("shareResult", false)) {
                String string = bundleI.getString("shareResultFile", null);
                aVar2.d("SimultaneousMainViewModel", "getCurrentRecordFile fn:" + string);
                return string;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(bundleI);
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousMainViewModel", "getCurrentRecordFile error:" + thM62exceptionOrNullimpl.getMessage());
        }
        return null;
    }

    public static final void P0() {
        com.coloros.translate.utils.w.h(R.string.sound_too_small, 0, 2, null);
    }

    public final void Q0() {
        l0.a.l(l0.f7130a, "simultaneous_name_index", Integer.valueOf(this.P), false, null, 12, null);
    }

    private final AsrParams U() {
        return (AsrParams) this.L.getValue();
    }

    private final RtasrEngineHandler Y() {
        return (RtasrEngineHandler) this.O.getValue();
    }

    private final TtsEngineHandler Z() {
        return (TtsEngineHandler) this.U.getValue();
    }

    public final com.coloros.translate.ui.simultaneous.utils.f b0() {
        return (com.coloros.translate.ui.simultaneous.utils.f) this.M.getValue();
    }

    public final boolean f0() {
        boolean z10 = kotlin.jvm.internal.r.a(U().b(), this.f6740z) && kotlin.jvm.internal.r.a(U().c(), this.A);
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "isLanguageChange :" + z10);
        return z10;
    }

    public static /* synthetic */ boolean r0(m mVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return mVar.q0(z10);
    }

    private final void s0() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "realStop");
        Y().r();
        this.f6736v = false;
    }

    private final void u0() {
        Object objM59constructorimpl;
        com.coloros.translate.repository.d.f5439a.e().D(this.T);
        l();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "registerListener");
        try {
            r.a aVar = n8.r.Companion;
            Y().l("SimultaneousMainViewModel", this.N);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousMainViewModel", "registerListener error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    private final void x0(String str, String str2) {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "saveOriginLanguage fl:" + str + " tl:" + str2);
        this.f6740z = str;
        this.A = str2;
    }

    public final void A0(int i10) {
        this.D = i10;
    }

    public final void B0(boolean z10) {
        this.S = z10;
    }

    public final void C0(long j10) {
        this.f6725k = j10;
    }

    public final void D() {
        o2.a aVar;
        List list = (List) this.f6728n.e();
        if (list == null || (aVar = (o2.a) kotlin.collections.o.d0(list)) == null) {
            return;
        }
        if (aVar.d() == 0) {
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "addLastTranslate exist");
        } else {
            if (aVar.h().length() != 0 || aVar.i()) {
                return;
            }
            b0().i(aVar);
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "addLastTranslate exist");
        }
    }

    public final void D0(boolean z10) {
        this.F = z10;
    }

    public final void E0(boolean z10) {
        this.H = z10;
    }

    public final void F0(boolean z10) {
        this.f6726l = z10;
    }

    public final void G0(boolean z10) {
        Y = z10;
        this.f6722h = z10;
    }

    public final void H() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "destroyAsr");
        N0();
        Y().h();
        this.f6732r.k(Boolean.TRUE);
        this.f6736v = false;
        this.R.removeCallbacks(this.Q);
    }

    public final void H0(boolean z10) {
        this.f6721g = z10;
    }

    public final void I0(boolean z10) {
        this.f6724j = z10;
    }

    public final n8.q J(long j10, String rId, boolean z10) {
        kotlin.jvm.internal.r.e(rId, "rId");
        Object objE = this.f6728n.e();
        kotlin.jvm.internal.r.b(objE);
        List list = (List) objE;
        int size = list.size();
        while (true) {
            size--;
            if (-1 >= size) {
                if (!z10) {
                    return null;
                }
                o2.a aVar = new o2.a(0L, 0L, 0L, null, null, null, null, null, 0L, 0L, false, false, false, false, false, 0, 0, 131071, null);
                aVar.u(j10);
                aVar.w(rId);
                aVar.p(U().b());
                aVar.y(U().c());
                Object objE2 = this.f6728n.e();
                kotlin.jvm.internal.r.b(objE2);
                ((List) objE2).add(aVar);
                c0.a aVar2 = com.coloros.translate.utils.c0.f7098a;
                Object objE3 = this.f6728n.e();
                kotlin.jvm.internal.r.b(objE3);
                aVar2.d("SimultaneousMainViewModel", "findConversationById add item:" + (((List) objE3).size() - 1) + "  msgId=" + aVar.d());
                return n8.w.a(aVar, Boolean.TRUE);
            }
            o2.a aVar3 = (o2.a) list.get(size);
            if (aVar3.d() == j10 && kotlin.jvm.internal.r.a(aVar3.f(), rId)) {
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "findConversationById update:" + aVar3.d());
                return n8.w.a(aVar3, Boolean.FALSE);
            }
        }
    }

    public final void J0(boolean z10) throws RemoteException {
        Object objM59constructorimpl;
        com.coloros.translate.repository.d.f5439a.e().s();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "startAsr isAsRunning:" + this.f6736v + " isRecordFile:" + this.f6726l + " isInitAsrFile:" + this.S + " force:" + z10);
        if (!this.f6736v || z10) {
            this.V = true;
            x0(this.f6737w, this.f6738x);
            E(this.f6737w, this.f6738x);
            u0();
            Y().m();
            Y().q();
            com.coloros.translate.utils.n.INSTANCE.b0(this.f6737w, this.f6738x);
            if (this.f6726l && !this.S) {
                try {
                    r.a aVar = n8.r.Companion;
                    Y().n();
                    this.S = true;
                    objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar2 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    com.coloros.translate.utils.c0.f7098a.e("SimultaneousMainViewModel", "startAsr error:" + thM62exceptionOrNullimpl.getMessage());
                }
            }
            this.R.removeCallbacks(this.Q);
            this.R.postDelayed(this.Q, 10000L);
            this.f6736v = true;
            this.f6732r.k(Boolean.FALSE);
            h(true);
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "asr onStart");
            this.J.set(false);
        }
    }

    public final void L0() {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("SimultaneousMainViewModel", "stopAsr isAsrRuning " + this.f6736v);
        if (this.f6736v) {
            this.R.removeCallbacks(this.Q);
            Y().k();
            s0();
            this.f6736v = false;
            this.f6732r.k(Boolean.TRUE);
            boolean zI = I();
            aVar.d("SimultaneousMainViewModel", "asr onStop:" + zI);
            if (!zI) {
                zI = Z().c();
                aVar.d("SimultaneousMainViewModel", "asr onStop tts isPlaying:" + zI);
            }
            h(zI);
        }
    }

    public final boolean M() {
        return this.f6723i;
    }

    public final void M0() {
        this.I.clear();
        this.V = true;
        Z().g();
    }

    public final androidx.lifecycle.a0 N() {
        return this.G;
    }

    public final void O0(String fromLanguageCode, String toLanguageCode) throws RemoteException {
        kotlin.jvm.internal.r.e(fromLanguageCode, "fromLanguageCode");
        kotlin.jvm.internal.r.e(toLanguageCode, "toLanguageCode");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("SimultaneousMainViewModel", "updateLanguage fl:" + fromLanguageCode + " tl:" + toLanguageCode);
        this.f6737w = fromLanguageCode;
        this.f6738x = toLanguageCode;
        this.S = false;
        if (kotlin.jvm.internal.r.a(this.f6740z, fromLanguageCode) && kotlin.jvm.internal.r.a(this.A, toLanguageCode)) {
            aVar.q("SimultaneousMainViewModel", "updateLanguage language same reject");
        } else if (this.f6736v) {
            aVar.q("SimultaneousMainViewModel", "updateLanguage startAsr");
            J0(true);
        }
    }

    public final boolean P() {
        return this.K;
    }

    public final androidx.lifecycle.a0 Q() {
        return this.f6730p;
    }

    public final boolean R() {
        return this.f6736v;
    }

    public final androidx.lifecycle.a0 S() {
        return this.f6729o;
    }

    public final androidx.lifecycle.a0 T() {
        return this.f6731q;
    }

    public final androidx.lifecycle.a0 V() {
        return this.f6728n;
    }

    public final int W() {
        return this.f6735u;
    }

    public final androidx.lifecycle.a0 X() {
        return this.f6732r;
    }

    public final androidx.lifecycle.a0 a0() {
        return this.C;
    }

    public final boolean c0() {
        return this.f6736v;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x008e  */
    @Override // com.coloros.translate.base.q, androidx.lifecycle.s0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void d() {
        /*
            r10 = this;
            super.d()
            com.coloros.translate.utils.c0$a r0 = com.coloros.translate.utils.c0.f7098a
            boolean r1 = r10.f6721g
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "onCleared before isSaveFinish: "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            java.lang.String r2 = "SimultaneousMainViewModel"
            r0.i(r2, r1)
            boolean r0 = r10.f6721g
            r1 = 1
            r3 = 0
            if (r0 != 0) goto La8
            androidx.lifecycle.a0 r0 = r10.f6728n
            java.lang.Object r0 = r0.e()
            java.util.List r0 = (java.util.List) r0
            r4 = 0
            if (r0 == 0) goto L51
            boolean r5 = r0.isEmpty()
            if (r5 == 0) goto L35
            goto L51
        L35:
            java.util.Iterator r0 = r0.iterator()
        L39:
            boolean r5 = r0.hasNext()
            if (r5 == 0) goto L51
            java.lang.Object r5 = r0.next()
            o2.a r5 = (o2.a) r5
            long r5 = r5.d()
            r7 = 0
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r5 == 0) goto L39
            r0 = r1
            goto L52
        L51:
            r0 = r4
        L52:
            com.coloros.translate.utils.c0$a r5 = com.coloros.translate.utils.c0.f7098a
            boolean r6 = com.coloros.translate.ui.simultaneous.main.m.Y
            java.util.concurrent.atomic.AtomicBoolean r7 = r10.J
            boolean r7 = r7.get()
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "[onCleared] hasTxt:"
            r8.append(r9)
            r8.append(r0)
            java.lang.String r9 = ", mIsRecordMode:"
            r8.append(r9)
            r8.append(r6)
            java.lang.String r6 = ", isSaveData:"
            r8.append(r6)
            r8.append(r7)
            java.lang.String r6 = r8.toString()
            r5.d(r2, r6)
            boolean r5 = com.coloros.translate.ui.simultaneous.main.m.Y
            if (r5 == 0) goto La4
            if (r0 == 0) goto La4
            java.util.concurrent.atomic.AtomicBoolean r0 = r10.J
            boolean r0 = r0.get()
            if (r0 != 0) goto L91
            r10.w0()
        L91:
            android.app.Application r0 = r10.e()
            int r5 = com.coloros.translate.R.string.simultaneous_save_title
            java.lang.String r0 = r0.getString(r5)
            java.lang.String r5 = "getString(...)"
            kotlin.jvm.internal.r.d(r0, r5)
            r5 = 2
            com.coloros.translate.utils.w.i(r0, r4, r5, r3)
        La4:
            com.coloros.translate.ui.simultaneous.main.m.X = r4
            com.coloros.translate.ui.simultaneous.main.m.Y = r4
        La8:
            G(r10, r3, r1, r3)
            com.coloros.translate.utils.c0$a r0 = com.coloros.translate.utils.c0.f7098a
            java.lang.String r1 = "onCleared after"
            r0.i(r2, r1)
            com.coloros.translate.repository.remote.TtsEngineHandler r0 = r10.Z()
            r0.g()
            com.coloros.translate.repository.remote.RtasrEngineHandler r0 = r10.Y()
            r0.s()
            com.coloros.translate.ui.simultaneous.utils.f r10 = r10.b0()
            r10.f()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.ui.simultaneous.main.m.d():void");
    }

    public final boolean d0() {
        return this.E;
    }

    public final androidx.lifecycle.a0 e0() {
        return this.f6733s;
    }

    public final boolean g0(String fromLanguageCode, String toLanguageCode) {
        kotlin.jvm.internal.r.e(fromLanguageCode, "fromLanguageCode");
        kotlin.jvm.internal.r.e(toLanguageCode, "toLanguageCode");
        return kotlin.jvm.internal.r.a(this.f6740z, fromLanguageCode) && kotlin.jvm.internal.r.a(this.A, toLanguageCode);
    }

    public final boolean h0() {
        return this.D == com.coloros.translate.repository.b.SILENCE_TIMEOUT.getCode() || this.E;
    }

    public final boolean i0() {
        return this.F;
    }

    @Override // com.coloros.translate.base.q
    public void j() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "onAudioFocusLost " + c0() + " ");
        com.coloros.translate.repository.remote.c cVarE = com.coloros.translate.repository.d.f5439a.e();
        this.S = false;
        if (c0()) {
            cVarE.x().g();
            cVarE.v().r();
            L0();
            com.coloros.translate.utils.w.h(R.string.translate_pause, 0, 2, null);
        }
    }

    public final boolean j0() {
        return this.H;
    }

    @Override // com.coloros.translate.base.q
    public void k() {
        super.k();
        X = true;
        this.E = false;
        l0.a aVar = l0.f7130a;
        Boolean bool = Boolean.TRUE;
        this.F = ((Boolean) l0.a.g(aVar, "simultaneous_auto_play", bool, null, 4, null)).booleanValue();
        this.f6726l = ((Boolean) l0.a.g(aVar, "simultaneous_record_switch", bool, null, 4, null)).booleanValue();
        z0.d(0L, new f(), 1, null);
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "onViewModeCreate");
    }

    public final boolean k0() {
        return this.f6726l;
    }

    public final boolean l0() {
        return this.f6722h;
    }

    public final androidx.lifecycle.a0 m0() {
        return this.f6727m;
    }

    public final boolean n0() {
        return this.f6724j;
    }

    public final androidx.lifecycle.a0 o0() {
        return this.f6734t;
    }

    public final boolean p0() {
        return this.D == com.coloros.translate.repository.b.TRANSLATION_SERVICE_DIED.getCode() && this.E;
    }

    public final boolean q0(boolean z10) {
        if (!this.F || !this.H || !kotlin.jvm.internal.r.a(this.f6727m.e(), Boolean.TRUE)) {
            this.I.clear();
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "playTts clear");
            return false;
        }
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "playTts isOnceTtsStop:" + this.V + " nextTts:" + z10);
        if (!this.V && !z10) {
            return false;
        }
        this.V = false;
        String str = (String) this.I.poll();
        if (str == null || str.length() == 0) {
            this.V = true;
            return false;
        }
        TtsEngineHandler ttsEngineHandlerZ = Z();
        kotlin.jvm.internal.r.b(str);
        a.C0075a.a(ttsEngineHandlerZ, g0.a(str), new TtsParams(null, this.f6738x, 0, 0, 0, null, 0, false, 253, null), new g(), null, 8, null);
        return true;
    }

    public final void t0(o2.a conversation, boolean z10, boolean z11) {
        kotlin.jvm.internal.r.e(conversation, "conversation");
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "refreshItem isShowTop:" + z10 + " create:" + z11);
        int iL = L(conversation);
        if (z11) {
            this.f6730p.k(Integer.valueOf(iL));
        } else {
            this.f6729o.k(Integer.valueOf(iL));
        }
    }

    public final void v0() {
        Y().s();
        F(this.f6739y);
        this.f6739y = UUID.randomUUID().toString() + "-sensitive";
        this.f6725k = 0L;
        this.D = 0;
        this.S = false;
        this.I.clear();
        b0().h();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainViewModel", "resetCallId");
    }

    public final void w0() {
        ArrayList<SimultaneousSentence> arrayList;
        n8.q qVarC;
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.i("SimultaneousMainViewModel", "saveData " + Thread.currentThread().getName());
        this.J.set(true);
        SimultaneousHistory simultaneousHistory = new SimultaneousHistory();
        simultaneousHistory.setNoteId(System.currentTimeMillis());
        String string = e().getString(R.string.note_title_default, String.valueOf(this.P));
        kotlin.jvm.internal.r.d(string, "getString(...)");
        simultaneousHistory.setNoteTitle(string);
        if (this.f6726l) {
            aVar.d("SimultaneousMainViewModel", "insert audio file");
            String strO = O();
            if (strO != null && (qVarC = com.coloros.translate.ui.simultaneous.utils.b.c(null, strO, 1, null)) != null) {
                String absolutePath = ((File) qVarC.getFirst()).getAbsolutePath();
                if (absolutePath == null) {
                    absolutePath = "";
                } else {
                    kotlin.jvm.internal.r.b(absolutePath);
                }
                simultaneousHistory.setAudioFile(absolutePath);
                simultaneousHistory.setAudioTime(((Number) qVarC.getSecond()).longValue());
            }
        }
        List list = (List) this.f6728n.e();
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (((o2.a) obj).d() != 0) {
                    arrayList2.add(obj);
                }
            }
            arrayList = new ArrayList(kotlin.collections.o.r(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(((o2.a) it.next()).C(simultaneousHistory.getNoteId()));
            }
        } else {
            arrayList = null;
        }
        if ((arrayList == null || arrayList.isEmpty()) && !this.f6726l) {
            com.coloros.translate.utils.c0.f7098a.i("SimultaneousMainViewModel", "saveData empty reject");
            return;
        }
        if (arrayList != null) {
            for (SimultaneousSentence simultaneousSentence : arrayList) {
                simultaneousHistory.setSimpleText(simultaneousHistory.getSimpleText() + simultaneousSentence.getToText());
                simultaneousHistory.getSimpleText().length();
            }
        }
        if (arrayList == null || arrayList.isEmpty()) {
            com.coloros.translate.utils.c0.f7098a.i("SimultaneousMainViewModel", "saveData second reject");
        } else {
            z0.d(0L, new h(simultaneousHistory, arrayList, this), 1, null);
        }
    }

    public final void y0(boolean z10) {
        this.E = z10;
    }

    public final void z0(boolean z10) {
        this.f6723i = z10;
    }
}
