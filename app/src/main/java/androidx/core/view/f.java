package androidx.core.view;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f2042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f2043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f2044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private VelocityTracker f2045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f2046f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f2047g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f2048h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f2049i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f2050j;

    interface a {
        float a(VelocityTracker velocityTracker, MotionEvent motionEvent, int i10);
    }

    interface b {
        void a(Context context, int[] iArr, MotionEvent motionEvent, int i10);
    }

    public f(Context context, g gVar) {
        this(context, gVar, new b() { // from class: androidx.core.view.d
            @Override // androidx.core.view.f.b
            public final void a(Context context2, int[] iArr, MotionEvent motionEvent, int i10) {
                f.c(context2, iArr, motionEvent, i10);
            }
        }, new a() { // from class: androidx.core.view.e
            @Override // androidx.core.view.f.a
            public final float a(VelocityTracker velocityTracker, MotionEvent motionEvent, int i10) {
                return f.f(velocityTracker, motionEvent, i10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, int[] iArr, MotionEvent motionEvent, int i10) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        iArr[0] = p0.g(context, viewConfiguration, motionEvent.getDeviceId(), i10, motionEvent.getSource());
        iArr[1] = p0.f(context, viewConfiguration, motionEvent.getDeviceId(), i10, motionEvent.getSource());
    }

    private boolean d(MotionEvent motionEvent, int i10) {
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        if (this.f2048h == source && this.f2049i == deviceId && this.f2047g == i10) {
            return false;
        }
        this.f2043c.a(this.f2041a, this.f2050j, motionEvent, i10);
        this.f2048h = source;
        this.f2049i = deviceId;
        this.f2047g = i10;
        return true;
    }

    private float e(MotionEvent motionEvent, int i10) {
        if (this.f2045e == null) {
            this.f2045e = VelocityTracker.obtain();
        }
        return this.f2044d.a(this.f2045e, motionEvent, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float f(VelocityTracker velocityTracker, MotionEvent motionEvent, int i10) {
        j0.a(velocityTracker, motionEvent);
        j0.b(velocityTracker, 1000);
        return j0.d(velocityTracker, i10);
    }

    public void g(MotionEvent motionEvent, int i10) {
        boolean zD = d(motionEvent, i10);
        if (this.f2050j[0] == Integer.MAX_VALUE) {
            VelocityTracker velocityTracker = this.f2045e;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f2045e = null;
                return;
            }
            return;
        }
        float fE = e(motionEvent, i10) * this.f2042b.b();
        float fSignum = Math.signum(fE);
        if (zD || (fSignum != Math.signum(this.f2046f) && fSignum != 0.0f)) {
            this.f2042b.c();
        }
        float fAbs = Math.abs(fE);
        int[] iArr = this.f2050j;
        if (fAbs < iArr[0]) {
            return;
        }
        float fMax = Math.max(-r6, Math.min(fE, iArr[1]));
        this.f2046f = this.f2042b.a(fMax) ? fMax : 0.0f;
    }

    f(Context context, g gVar, b bVar, a aVar) {
        this.f2047g = -1;
        this.f2048h = -1;
        this.f2049i = -1;
        this.f2050j = new int[]{Integer.MAX_VALUE, 0};
        this.f2041a = context;
        this.f2042b = gVar;
        this.f2043c = bVar;
        this.f2044d = aVar;
    }
}
