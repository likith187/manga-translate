package com.coloros.translate.engine.asr.audiofile;

import android.media.AudioManager;
import android.media.AudioTrack;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.m;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f4847e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile boolean f4848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile AudioTrack f4849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AudioManager f4850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4851d;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public d() {
        c0.f7098a.i("EmptyAudioPcmPlayer", "init...");
        Object systemService = m.INSTANCE.a().getSystemService("audio");
        r.c(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.f4850c = (AudioManager) systemService;
        this.f4851d = AudioTrack.getMinBufferSize(16000, 4, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(d this$0) {
        Object objM59constructorimpl;
        h0 h0Var;
        Object objM59constructorimpl2;
        r.e(this$0, "this$0");
        int i10 = this$0.f4851d;
        byte[] bArr = new byte[i10];
        c0.a aVar = c0.f7098a;
        AudioTrack audioTrack = this$0.f4849b;
        aVar.d("EmptyAudioPcmPlayer", "play start state:" + (audioTrack != null ? Integer.valueOf(audioTrack.getPlayState()) : null));
        while (this$0.f4848a) {
            try {
                r.a aVar2 = n8.r.Companion;
                Thread.sleep(100L);
                n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar3 = n8.r.Companion;
                n8.r.m59constructorimpl(s.a(th));
            }
            AudioTrack audioTrack2 = this$0.f4849b;
            if (audioTrack2 == null || audioTrack2.getPlayState() != 3) {
                c0.f7098a.d("EmptyAudioPcmPlayer", "audioTrack.play");
                try {
                    AudioTrack audioTrack3 = this$0.f4849b;
                    if (audioTrack3 != null) {
                        audioTrack3.play();
                        h0Var = h0.INSTANCE;
                    } else {
                        h0Var = null;
                    }
                    objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
                } catch (Throwable th2) {
                    r.a aVar4 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(s.a(th2));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("EmptyAudioPcmPlayer", "start play exception = " + thM62exceptionOrNullimpl.getMessage());
                }
            }
            try {
                AudioTrack audioTrack4 = this$0.f4849b;
                objM59constructorimpl2 = n8.r.m59constructorimpl(audioTrack4 != null ? Integer.valueOf(audioTrack4.write(bArr, 0, i10)) : null);
            } catch (Throwable th3) {
                r.a aVar5 = n8.r.Companion;
                objM59constructorimpl2 = n8.r.m59constructorimpl(s.a(th3));
            }
            Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
            if (thM62exceptionOrNullimpl2 != null) {
                c0.f7098a.e("EmptyAudioPcmPlayer", "play exception = " + thM62exceptionOrNullimpl2.getMessage());
            }
        }
        c0.f7098a.d("EmptyAudioPcmPlayer", "play end!");
    }

    public final void b() {
        c0.a aVar = c0.f7098a;
        aVar.d("EmptyAudioPcmPlayer", "play");
        AudioTrack audioTrack = this.f4849b;
        if ((audioTrack != null && audioTrack.getPlayState() == 3) || this.f4848a) {
            aVar.d("EmptyAudioPcmPlayer", "playing...");
            return;
        }
        this.f4848a = true;
        this.f4849b = new AudioTrack(3, 16000, 4, 2, this.f4851d * 2, 1);
        new Thread(new Runnable() { // from class: com.coloros.translate.engine.asr.audiofile.c
            @Override // java.lang.Runnable
            public final void run() {
                d.c(this.f4846a);
            }
        }).start();
    }

    public final void d() {
        h0 h0Var;
        h0 h0Var2;
        h0 h0Var3;
        c0.a aVar = c0.f7098a;
        aVar.e("EmptyAudioPcmPlayer", "stopPlayback start");
        if (this.f4849b != null) {
            aVar.e("EmptyAudioPcmPlayer", "stopPlayback release");
            this.f4848a = false;
            try {
                r.a aVar2 = n8.r.Companion;
                AudioTrack audioTrack = this.f4849b;
                if (audioTrack != null) {
                    audioTrack.flush();
                    h0Var3 = h0.INSTANCE;
                } else {
                    h0Var3 = null;
                }
                n8.r.m59constructorimpl(h0Var3);
            } catch (Throwable th) {
                r.a aVar3 = n8.r.Companion;
                n8.r.m59constructorimpl(s.a(th));
            }
            try {
                AudioTrack audioTrack2 = this.f4849b;
                if (audioTrack2 != null) {
                    audioTrack2.stop();
                    h0Var2 = h0.INSTANCE;
                } else {
                    h0Var2 = null;
                }
                n8.r.m59constructorimpl(h0Var2);
            } catch (Throwable th2) {
                r.a aVar4 = n8.r.Companion;
                n8.r.m59constructorimpl(s.a(th2));
            }
            try {
                AudioTrack audioTrack3 = this.f4849b;
                if (audioTrack3 != null) {
                    audioTrack3.release();
                    h0Var = h0.INSTANCE;
                } else {
                    h0Var = null;
                }
                n8.r.m59constructorimpl(h0Var);
            } catch (Throwable th3) {
                r.a aVar5 = n8.r.Companion;
                n8.r.m59constructorimpl(s.a(th3));
            }
            this.f4849b = null;
        }
    }
}
