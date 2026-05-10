package z1;

import android.media.AudioRecord;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.v0;
import java.util.concurrent.LinkedBlockingQueue;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;
import z1.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends c {

    /* JADX INFO: renamed from: o */
    public static final a f16602o = new a(null);

    /* JADX INFO: renamed from: j */
    private AudioRecord f16603j;

    /* JADX INFO: renamed from: k */
    private byte[] f16604k;

    /* JADX INFO: renamed from: l */
    private LinkedBlockingQueue f16605l = new LinkedBlockingQueue(1500);

    /* JADX INFO: renamed from: m */
    private final v0 f16606m = new v0("singleSendThread");

    /* JADX INFO: renamed from: n */
    private final v0 f16607n = new v0("singleReadThread");

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0039, code lost:
    
        r3 = r7.f16599h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x003b, code lost:
    
        if (r3 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x003d, code lost:
    
        r1 = (byte[]) r1;
        r3.g(r1, null);
        r3.onVoiceVolume(r7.b(r1));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void u(z1.f r7) throws java.lang.InterruptedException {
        /*
            java.lang.String r0 = "this$0"
            kotlin.jvm.internal.r.e(r7, r0)
            com.coloros.translate.utils.c0$a r0 = com.coloros.translate.utils.c0.f7098a
            z1.c$a r1 = r7.f16594c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "processReadData: read queue start "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            java.lang.String r2 = "BaseSingleAudioRecorder"
            r0.i(r2, r1)
            r0 = 0
        L20:
            r1 = r0
        L21:
            z1.c$a r3 = r7.f16594c
            z1.c$a r4 = z1.c.a.RECORDING
            if (r3 != r4) goto L4a
            if (r1 != 0) goto L33
            java.util.concurrent.LinkedBlockingQueue r1 = r7.f16605l
            r5 = 40
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            java.lang.Object r1 = r1.poll(r5, r3)
        L33:
            z1.c$a r3 = r7.f16594c
            if (r3 != r4) goto L21
            if (r1 == 0) goto L21
            x1.i0 r3 = r7.f16599h
            if (r3 == 0) goto L20
            byte[] r1 = (byte[]) r1
            r3.g(r1, r0)
            double r4 = r7.b(r1)
            r3.onVoiceVolume(r4)
            goto L20
        L4a:
            com.coloros.translate.utils.c0$a r7 = com.coloros.translate.utils.c0.f7098a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "processReadData: read queue end "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            r7.i(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: z1.f.u(z1.f):void");
    }

    public static final void v(f this$0) {
        r.e(this$0, "this$0");
        c0.f7098a.i("BaseSingleAudioRecorder", "processReadData: read voice start " + this$0.f16594c);
        while (this$0.f16594c == c.a.RECORDING) {
            int i10 = this$0.f16593b;
            byte[] bArr = new byte[i10];
            AudioRecord audioRecord = this$0.f16603j;
            if (audioRecord != null) {
                audioRecord.read(bArr, 0, i10);
            }
            this$0.f16605l.offer(bArr);
        }
        this$0.f16605l.clear();
        c0.f7098a.i("BaseSingleAudioRecorder", "processReadData: read voice end " + this$0.f16594c);
    }

    @Override // z1.c
    protected int d() {
        AudioRecord audioRecord = this.f16603j;
        if (audioRecord != null) {
            return audioRecord.getState();
        }
        return 0;
    }

    @Override // z1.c
    protected void f(int i10) {
        this.f16604k = new byte[i10];
    }

    @Override // z1.c
    protected void k() {
        c0.f7098a.i("BaseSingleAudioRecorder", "processReadData start " + this.f16603j + " " + this.f16594c);
        this.f16606m.c(new Runnable() { // from class: z1.d
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                f.u(this.f16600a);
            }
        });
        this.f16607n.c(new Runnable() { // from class: z1.e
            @Override // java.lang.Runnable
            public final void run() {
                f.v(this.f16601a);
            }
        });
    }

    @Override // z1.c
    protected void m() {
        c0.f7098a.i("BaseSingleAudioRecorder", "releaseRecorder");
        AudioRecord audioRecord = this.f16603j;
        if (audioRecord != null) {
            audioRecord.release();
        }
        w(null);
        this.f16607n.f();
        this.f16607n.f();
    }

    @Override // z1.c
    protected void q() {
        Object objM59constructorimpl;
        AudioRecord audioRecord = this.f16603j;
        if (audioRecord == null) {
            this.f16594c = c.a.ERROR;
            c0.f7098a.q("BaseSingleAudioRecorder", "mAudioRecorder is null");
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            kotlin.jvm.internal.r.b(audioRecord);
            audioRecord.startRecording();
            AudioRecord audioRecord2 = this.f16603j;
            kotlin.jvm.internal.r.b(audioRecord2);
            byte[] bArr = this.f16604k;
            kotlin.jvm.internal.r.b(bArr);
            byte[] bArr2 = this.f16604k;
            kotlin.jvm.internal.r.b(bArr2);
            if (audioRecord2.read(bArr, 0, bArr2.length) <= 0) {
                c0.f7098a.q("BaseSingleAudioRecorder", "read buffer is null");
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("BaseSingleAudioRecorder", "start() called on illegal mState mState =" + this.f16594c);
            this.f16594c = c.a.ERROR;
        }
        this.f16594c = c.a.RECORDING;
    }

    @Override // z1.c
    protected void r() {
        if (this.f16603j != null && g()) {
            AudioRecord audioRecord = this.f16603j;
            if (audioRecord != null) {
                audioRecord.stop();
                return;
            }
            return;
        }
        c0.f7098a.e("BaseSingleAudioRecorder", "mAudioRecorder:" + this.f16603j + "state:" + this.f16594c);
        this.f16594c = c.a.ERROR;
    }

    protected final void w(AudioRecord audioRecord) {
        Object objM59constructorimpl;
        this.f16603j = audioRecord;
        try {
            r.a aVar = n8.r.Companion;
            if (audioRecord != null) {
                this.f16594c = c.a.INITIALIZING;
                c0.f7098a.i("BaseSingleAudioRecorder", "updateRecord");
            } else {
                c0.f7098a.i("BaseSingleAudioRecorder", "error occurred while setAudioRecorder = null");
                this.f16594c = c.a.ERROR;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("BaseSingleAudioRecorder", "setAudioRecorder initializing error: " + thM62exceptionOrNullimpl);
            this.f16594c = c.a.ERROR;
        }
    }
}
