package d7;

import android.view.Choreographer;

/* JADX INFO: loaded from: classes2.dex */
class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f11621d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Choreographer.FrameCallback f11619b = new Choreographer.FrameCallback() { // from class: d7.e
        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j10) {
            this.f11617a.b(j10);
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f11620c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Choreographer f11618a = Choreographer.getInstance();

    interface a {
        void doFrame(long j10);
    }

    f() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void b(long j10) {
        this.f11620c = false;
        if (this.f11621d != null) {
            if (a7.b.a()) {
                a7.b.d("PhysicsWorld-Frame", "doFrame ----------------------- frameTime =:" + j10);
            }
            this.f11621d.doFrame(j10);
        }
    }

    void d() {
        if (this.f11620c || this.f11621d == null) {
            return;
        }
        this.f11618a.postFrameCallback(this.f11619b);
        if (a7.b.a()) {
            a7.b.d("PhysicsWorld-Frame", "scheduleNextFrame ----------------------- ");
        }
        this.f11620c = true;
    }

    void e(a aVar) {
        this.f11621d = aVar;
    }

    void f() {
        if (this.f11620c) {
            if (a7.b.a()) {
                a7.b.d("PhysicsWorld-Frame", "unScheduleNextFrame ----------------------- ");
            }
            this.f11618a.removeFrameCallback(this.f11619b);
            this.f11620c = false;
        }
    }
}
