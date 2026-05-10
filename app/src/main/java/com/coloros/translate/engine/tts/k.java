package com.coloros.translate.engine.tts;

import android.content.Context;
import android.os.Bundle;
import com.coloros.translate.engine.ITtsEngine;
import com.coloros.translate.engine.ITtsListener;
import com.coloros.translate.engine.info.TtsParams;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.v0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class k extends ITtsEngine.Stub implements a2.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f5257c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f5258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private v0 f5259b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public k(Context context) {
        this.f5258a = context != null ? new e(context) : null;
        this.f5259b = new v0("AiUnitStreamTtsEngine");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(k this$0) {
        r.e(this$0, "this$0");
        this$0.f5259b.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(k this$0, String text, TtsParams ttsParams, Bundle extra, ITtsListener iTtsListener) {
        Object objM59constructorimpl;
        h0 h0Var;
        r.e(this$0, "this$0");
        r.e(text, "$text");
        r.e(ttsParams, "$ttsParams");
        r.e(extra, "$extra");
        r.e(iTtsListener, "$iTtsListener");
        try {
            r.a aVar = n8.r.Companion;
            e eVar = this$0.f5258a;
            if (eVar != null) {
                eVar.G(text, ttsParams, extra, new q(iTtsListener));
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("AiUnitStreamTtsEngine", "playText() error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(k this$0, byte[] bArr, String str) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        e eVar = this$0.f5258a;
        if (eVar != null) {
            eVar.H(bArr, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(k this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        e eVar = this$0.f5258a;
        if (eVar != null) {
            eVar.S();
        }
    }

    @Override // a2.a
    public void a() {
        c0.f7098a.d("AiUnitStreamTtsEngine", "destroyEngine()");
        this.f5259b.f();
    }

    @Override // com.coloros.translate.engine.ITtsEngine
    public void destroy() {
        c0.f7098a.d("AiUnitStreamTtsEngine", "destroy()");
        this.f5259b.c(new Runnable() { // from class: com.coloros.translate.engine.tts.h
            @Override // java.lang.Runnable
            public final void run() {
                k.f(this.f5248a);
            }
        });
    }

    public final void h(final byte[] bArr, final String str) {
        c0.f7098a.d("AiUnitStreamTtsEngine", "playWithOpusData， format:" + str);
        this.f5259b.c(new Runnable() { // from class: com.coloros.translate.engine.tts.j
            @Override // java.lang.Runnable
            public final void run() {
                k.i(this.f5254a, bArr, str);
            }
        });
    }

    @Override // com.coloros.translate.engine.ITtsEngine
    public Bundle invokeMethod(String str, Bundle bundle) {
        Object objM59constructorimpl;
        c0.a aVar;
        boolean zC;
        try {
            r.a aVar2 = n8.r.Companion;
            aVar = c0.f7098a;
            aVar.d("AiUnitStreamTtsEngine", "invokeMethod():" + str);
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        if (kotlin.jvm.internal.r.a(str, "audio_is_playing")) {
            e eVar = this.f5258a;
            zC = eVar != null ? eVar.C() : false;
            aVar.d("AiUnitStreamTtsEngine", "invokeMethod():" + zC);
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("isPlaying", zC);
            return bundle2;
        }
        if (kotlin.jvm.internal.r.a(str, "control_speak_on")) {
            zC = bundle != null ? bundle.getBoolean("SpeakerOn", false) : false;
            e eVar2 = this.f5258a;
            if (eVar2 != null) {
                eVar2.O(zC);
            }
        }
        objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("AiUnitStreamTtsEngine", "invokeMethod() error:" + thM62exceptionOrNullimpl.getMessage());
        }
        return new Bundle();
    }

    @Override // com.coloros.translate.engine.ITtsEngine
    public void playText(String str, TtsParams ttsParams, ITtsListener iTtsListener) {
        c0.f7098a.d("AiUnitStreamTtsEngine", "playText without extra");
    }

    @Override // com.coloros.translate.engine.ITtsEngine
    public void playTextWithExtra(final String text, final TtsParams ttsParams, final Bundle extra, final ITtsListener iTtsListener) {
        kotlin.jvm.internal.r.e(text, "text");
        kotlin.jvm.internal.r.e(ttsParams, "ttsParams");
        kotlin.jvm.internal.r.e(extra, "extra");
        kotlin.jvm.internal.r.e(iTtsListener, "iTtsListener");
        c0.f7098a.d("AiUnitStreamTtsEngine", "playText() iTtsListener " + iTtsListener);
        this.f5259b.c(new Runnable() { // from class: com.coloros.translate.engine.tts.i
            @Override // java.lang.Runnable
            public final void run() {
                k.g(this.f5249a, text, ttsParams, extra, iTtsListener);
            }
        });
    }

    @Override // com.coloros.translate.engine.ITtsEngine
    public void stopPlay() {
        c0.f7098a.d("AiUnitStreamTtsEngine", "stopPlay()");
        this.f5259b.c(new Runnable() { // from class: com.coloros.translate.engine.tts.g
            @Override // java.lang.Runnable
            public final void run() {
                k.j(this.f5247a);
            }
        });
    }
}
