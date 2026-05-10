package com.coloros.translate.engine.tts;

import android.media.AudioManager;
import android.media.AudioTrack;
import com.coloros.translate.utils.c0;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5261a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AudioTrack f5265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AudioManager f5266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f5267g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Thread f5269i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinkedBlockingQueue f5262b = new LinkedBlockingQueue();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5263c = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5268h = false;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f5270a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public q f5271b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f5272c;

        public a(byte[] bArr, q qVar, Boolean bool) {
            this.f5270a = bArr;
            this.f5271b = qVar;
            this.f5272c = bool.booleanValue();
        }
    }

    public m(int i10) {
        this.f5261a = false;
        String str = "AudioPlayer" + this;
        this.f5264d = str;
        c0.m(str, "init...");
        this.f5266f = (AudioManager) com.coloros.translate.utils.m.f7131a.getSystemService("audio");
        this.f5265e = new AudioTrack(i10, 16000, 4, 2, AudioTrack.getMinBufferSize(16000, 4, 2) * 2, 1);
        this.f5261a = true;
        this.f5269i = new Thread(new Runnable() { // from class: com.coloros.translate.engine.tts.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f5260a.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        while (this.f5261a) {
            a aVar = (a) this.f5262b.poll();
            this.f5267g = aVar;
            if (aVar == null) {
                try {
                    Thread.sleep(20L);
                } catch (InterruptedException unused) {
                    c0.j(this.f5264d, "audioTrack sleep error");
                }
            } else {
                if (this.f5265e.getPlayState() != 3) {
                    c0.i(this.f5264d, "audioTrack.play");
                    try {
                        this.f5265e.play();
                    } catch (IllegalStateException e10) {
                        c0.j(this.f5264d, "startPlay : exception = " + e10);
                    }
                }
                byte[] bArr = this.f5267g.f5270a;
                if (bArr.length > 0) {
                    this.f5265e.write(bArr, 0, bArr.length);
                } else {
                    c0.i(this.f5264d, "audioTrack.write stop frame");
                }
                a aVar2 = this.f5267g;
                if (aVar2.f5271b != null && aVar2.f5272c) {
                    if (this.f5265e.getPlayState() == 3) {
                        this.f5267g.f5271b.onTtsEndWord();
                    }
                    this.f5263c = false;
                    this.f5267g.f5271b.onStop();
                    this.f5267g = null;
                    c0.i(this.f5264d, " mTempData.mITtsListener.onStop mIsSpeakOn:" + this.f5268h);
                }
            }
        }
        c0.i(this.f5264d, "released!");
    }

    public boolean b() {
        boolean zIsEmpty = this.f5262b.isEmpty();
        c0.i(this.f5264d, "isCacheEmpty. " + zIsEmpty);
        return zIsEmpty;
    }

    public void d(a aVar) {
        this.f5262b.offer(aVar);
    }

    public void e(boolean z10) {
        c0.i(this.f5264d, "setSpeakerphoneOn:" + z10);
        if (this.f5268h != z10) {
            this.f5268h = z10;
            this.f5266f.setSpeakerphoneOn(z10);
        } else if (!z10) {
            c0.i(this.f5264d, "setSpeakerphoneOn reject");
        } else {
            this.f5266f.setSpeakerphoneOn(true);
            c0.i(this.f5264d, "setSpeakerphoneOn reset true");
        }
    }

    public void f() {
        Thread thread = this.f5269i;
        if (thread != null) {
            thread.start();
        }
    }

    public void g() {
        try {
            this.f5263c = true;
            LinkedBlockingQueue linkedBlockingQueue = this.f5262b;
            if (linkedBlockingQueue != null && this.f5267g != null) {
                linkedBlockingQueue.clear();
                q qVar = this.f5267g.f5271b;
                if (qVar != null) {
                    qVar.onStop();
                    c0.i(this.f5264d, "stopPlay onStop callback");
                }
            }
            if (this.f5265e.getState() == 1) {
                this.f5265e.pause();
                c0.i(this.f5264d, "stopPlay pause");
            }
            this.f5265e.flush();
            c0.i(this.f5264d, "stopPlay mTempData : " + this.f5267g);
        } catch (Exception e10) {
            c0.j(this.f5264d, "stopPlay exception : " + e10);
        }
    }

    public void h() {
        try {
            this.f5263c = true;
            if (this.f5267g != null) {
                this.f5262b.clear();
            }
            if (this.f5265e.getState() == 1) {
                this.f5265e.pause();
            }
            this.f5265e.flush();
            c0.i(this.f5264d, "stopPlayOnly.");
        } catch (IllegalStateException e10) {
            c0.j(this.f5264d, "stopPlay : exception = " + e10);
        }
    }
}
