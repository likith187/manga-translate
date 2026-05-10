package com.coloros.translate.repository.remote;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.coloros.translate.engine.ITtsEngine;
import com.coloros.translate.engine.ITtsListener;
import com.coloros.translate.engine.info.TtsParams;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.z0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class TtsEngineHandler implements com.coloros.translate.repository.remote.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f5459b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ITtsEngine f5460a;

    public static abstract class TtsListener extends ITtsListener.Stub {
        @Override // com.coloros.translate.engine.ITtsListener
        public void onTtsEndWord() {
            c0.f7098a.d("TtsEngineHandler", "onTtsEndWord");
        }
    }

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {
        final /* synthetic */ Bundle $extras;
        final /* synthetic */ String $text;
        final /* synthetic */ TtsListener $ttsListener;
        final /* synthetic */ TtsParams $ttsParams;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(TtsParams ttsParams, Bundle bundle, String str, TtsListener ttsListener) {
            super(0);
            this.$ttsParams = ttsParams;
            this.$extras = bundle;
            this.$text = str;
            this.$ttsListener = ttsListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return h0.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void invoke() throws android.os.RemoteException {
            /*
                Method dump skipped, instruction units count: 201
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.repository.remote.TtsEngineHandler.b.invoke():void");
        }
    }

    @Override // com.coloros.translate.repository.remote.a
    public void a(String text, TtsParams ttsParams, TtsListener ttsListener, Bundle extras) {
        r.e(text, "text");
        r.e(extras, "extras");
        z0.d(0L, new b(ttsParams, extras, text, ttsListener), 1, null);
    }

    public boolean c() {
        Bundle bundleInvokeMethod;
        try {
            r.a aVar = n8.r.Companion;
            ITtsEngine iTtsEngine = this.f5460a;
            boolean z10 = (iTtsEngine == null || (bundleInvokeMethod = iTtsEngine.invokeMethod("audio_is_playing", new Bundle())) == null) ? false : bundleInvokeMethod.getBoolean("isPlaying", false);
            c0.f7098a.d("TtsEngineHandler", "checkAudioIsPlaying " + z10);
            return z10;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            if (n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th))) != null) {
                c0.f7098a.e("TtsEngineHandler", "checkAudioIsPlaying error");
            }
            return false;
        }
    }

    public final void d(boolean z10) {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            ITtsEngine iTtsEngine = this.f5460a;
            if (iTtsEngine != null) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("SpeakerOn", z10);
                h0 h0Var = h0.INSTANCE;
                iTtsEngine.invokeMethod("control_speak_on", bundle);
            }
            c0.f7098a.d("TtsEngineHandler", "controlSpeakerOn speakerOn");
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("TtsEngineHandler", "controlSpeakerOn error");
        }
    }

    public final boolean e() {
        IBinder iBinderAsBinder;
        c0.f7098a.i("TtsEngineHandler", "isAlive " + this.f5460a);
        ITtsEngine iTtsEngine = this.f5460a;
        if (iTtsEngine == null || (iBinderAsBinder = iTtsEngine.asBinder()) == null) {
            return false;
        }
        return iBinderAsBinder.isBinderAlive();
    }

    public void f(ITtsEngine iTtsEngine) {
        c0.f7098a.d("TtsEngineHandler", "setTtsEngine " + iTtsEngine);
        this.f5460a = iTtsEngine;
    }

    public void g() {
        Object objM59constructorimpl;
        h0 h0Var;
        try {
            r.a aVar = n8.r.Companion;
            c0.f7098a.d("TtsEngineHandler", "stopPlay");
            ITtsEngine iTtsEngine = this.f5460a;
            if (iTtsEngine != null) {
                iTtsEngine.stopPlay();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("TtsEngineHandler", "stopPlay error");
        }
    }
}
