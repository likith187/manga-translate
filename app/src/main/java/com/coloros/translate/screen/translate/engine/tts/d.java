package com.coloros.translate.screen.translate.engine.tts;

import android.content.Context;
import android.media.AudioManager;
import android.os.RemoteException;
import com.coloros.translate.engine.info.TtsParams;
import com.coloros.translate.engine.tts.p;
import com.coloros.translate.observer.e;
import com.coloros.translate.screen.R$string;
import com.coloros.translate.screen.translate.engine.remote.TtsEngineHandler;
import com.coloros.translate.screen.utils.t;
import com.coloros.translate.screen.utils.u;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class d implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f5697g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5700c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TtsEngineHandler.TtsListener f5701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j f5702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j f5703f;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static class b extends TtsEngineHandler.TtsListener {
        public void onStart() {
            c0.f7098a.d("TtsClient", "tts onStart");
        }

        public void onStatus(int i10, String str) {
            c0.f7098a.d("TtsClient", "tts onStatus");
        }

        public void onStop() {
            c0.f7098a.d("TtsClient", "tts onStop");
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onTtsEndWord() {
            c0.f7098a.d("TtsClient", "tts onTtsEndWord");
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onTtsResult(byte[] bArr) {
            c0.f7098a.d("TtsClient", "tts result");
        }
    }

    static final class c extends s implements w8.a {
        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final AudioManager mo8invoke() {
            Object systemService = d.this.f5698a.getApplicationContext().getSystemService("audio");
            r.c(systemService, "null cannot be cast to non-null type android.media.AudioManager");
            return (AudioManager) systemService;
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.screen.translate.engine.tts.d$d, reason: collision with other inner class name */
    static final class C0081d extends s implements w8.a {
        C0081d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TtsEngineHandler mo8invoke() {
            TtsEngineHandler ttsEngineHandler = new TtsEngineHandler();
            ttsEngineHandler.d(p.INSTANCE.a(d.this.f5698a, "aiunit_stream_tts"));
            return ttsEngineHandler;
        }
    }

    public d(Context context) {
        r.e(context, "context");
        this.f5698a = context;
        this.f5699b = "";
        this.f5700c = "";
        this.f5702e = k.b(new C0081d());
        this.f5703f = k.b(new c());
    }

    private final AudioManager e() {
        return (AudioManager) this.f5703f.getValue();
    }

    private final TtsEngineHandler f() {
        return (TtsEngineHandler) this.f5702e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i() {
        u.d(R$string.translate_unified_no_network, 0, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j() {
        u.d(R$string.translate_unified_tts_error, 0, 2, null);
    }

    private final void m() throws RemoteException {
        if (!e.INSTANCE.k()) {
            f().c(this.f5699b, new TtsParams(null, this.f5700c, 0, 0, 0, null, 0, false, 253, null), this.f5701d);
            return;
        }
        t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.tts.a
            @Override // java.lang.Runnable
            public final void run() {
                d.n();
            }
        });
        TtsEngineHandler.TtsListener ttsListener = this.f5701d;
        if (ttsListener != null) {
            ttsListener.onStop();
        }
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n() {
        u.d(R$string.translate_unified_no_network, 0, 2, null);
    }

    public final void g() {
        e().requestAudioFocus(this, 3, 1);
    }

    public final void h(int i10, String str) {
        c0.f7098a.d("TtsClient", "tts onStatus code: " + i10 + " msg=" + str);
        n.INSTANCE.k0(i10);
        if (-1000 == i10) {
            t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.tts.b
                @Override // java.lang.Runnable
                public final void run() {
                    d.i();
                }
            });
            l();
        } else {
            t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.tts.c
                @Override // java.lang.Runnable
                public final void run() {
                    d.j();
                }
            });
            l();
        }
    }

    public final void k(String ttsText, String ttsCode, TtsEngineHandler.TtsListener ttsListener) throws RemoteException {
        r.e(ttsText, "ttsText");
        r.e(ttsCode, "ttsCode");
        r.e(ttsListener, "ttsListener");
        this.f5699b = ttsText;
        this.f5700c = ttsCode;
        this.f5701d = ttsListener;
        m();
    }

    public final void l() {
        o();
        f().b();
    }

    public final void o() {
        this.f5701d = null;
        f().e();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i10) {
        c0.f7098a.d("TtsClient", "onAudioFocusChange:" + i10);
    }
}
