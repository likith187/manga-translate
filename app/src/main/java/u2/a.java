package u2;

import android.os.SystemClock;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes.dex */
abstract class a {

    /* JADX INFO: renamed from: u2.a$a, reason: collision with other inner class name */
    private static class C0229a extends i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Choreographer f15823b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Choreographer.FrameCallback f15824c = new ChoreographerFrameCallbackC0230a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f15825d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f15826e;

        /* JADX INFO: renamed from: u2.a$a$a, reason: collision with other inner class name */
        class ChoreographerFrameCallbackC0230a implements Choreographer.FrameCallback {
            ChoreographerFrameCallbackC0230a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j10) {
                if (!C0229a.this.f15825d || C0229a.this.f15859a == null) {
                    return;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                C0229a.this.f15859a.e(jUptimeMillis - r0.f15826e);
                C0229a.this.f15826e = jUptimeMillis;
                C0229a.this.f15823b.postFrameCallback(C0229a.this.f15824c);
            }
        }

        public C0229a(Choreographer choreographer) {
            this.f15823b = choreographer;
        }

        public static C0229a i() {
            return new C0229a(Choreographer.getInstance());
        }

        @Override // u2.i
        public void b() {
            if (this.f15825d) {
                return;
            }
            this.f15825d = true;
            this.f15826e = SystemClock.uptimeMillis();
            this.f15823b.removeFrameCallback(this.f15824c);
            this.f15823b.postFrameCallback(this.f15824c);
        }

        @Override // u2.i
        public void c() {
            this.f15825d = false;
            this.f15823b.removeFrameCallback(this.f15824c);
        }
    }

    public static i a() {
        return C0229a.i();
    }
}
