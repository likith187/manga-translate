package z1;

import com.coloros.translate.utils.c0;
import x1.i0;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: i */
    protected static final int[] f16591i = {44100, 22050, 16000, 8000};

    /* JADX INFO: renamed from: a */
    public int f16592a = -1;

    /* JADX INFO: renamed from: b */
    public int f16593b = 0;

    /* JADX INFO: renamed from: c */
    protected a f16594c;

    /* JADX INFO: renamed from: d */
    protected short f16595d;

    /* JADX INFO: renamed from: e */
    protected short f16596e;

    /* JADX INFO: renamed from: f */
    protected int f16597f;

    /* JADX INFO: renamed from: g */
    protected int f16598g;

    /* JADX INFO: renamed from: h */
    protected i0 f16599h;

    public enum a {
        INITIALIZING,
        READY,
        RECORDING,
        PAUSE,
        ERROR,
        STOPPED
    }

    private void h() {
        c0.i("BaseAudioRecorder", "stop state = " + this.f16594c);
        this.f16594c = a.STOPPED;
        r();
        i0 i0Var = this.f16599h;
        if (i0Var != null) {
            i0Var.b();
        }
    }

    protected int a(int i10, int i11, int i12) {
        if (i12 == 2) {
            this.f16596e = (short) 16;
        } else {
            this.f16596e = (short) 8;
        }
        if (i11 == 16) {
            this.f16595d = (short) 1;
        } else {
            this.f16595d = (short) 2;
        }
        this.f16598g = i10;
        int i13 = (i10 * 40) / 1000;
        this.f16597f = i13;
        return (((i13 * 2) * this.f16596e) * this.f16595d) / 8;
    }

    protected double b(byte[] bArr) {
        int length = bArr.length;
        double dAbs = 0.0d;
        for (int i10 = 0; i10 < length; i10 += 2) {
            int i11 = (bArr[i10] & 255) + ((bArr[i10 + 1] & 255) << 8);
            if (i11 >= 32768) {
                i11 = 65535 - i11;
            }
            dAbs += (double) Math.abs(i11);
        }
        return Math.log10(((dAbs / ((double) length)) / 2.0d) + 1.0d) * 10.0d;
    }

    public int c() {
        return this.f16595d;
    }

    protected abstract int d();

    public int e() {
        return this.f16598g;
    }

    protected abstract void f(int i10);

    protected boolean g() {
        a aVar = this.f16594c;
        return aVar == a.RECORDING || aVar == a.PAUSE;
    }

    public void i() {
        if (this.f16594c == a.RECORDING) {
            c0.i("BaseAudioRecorder", "pause");
            this.f16594c = a.PAUSE;
        }
    }

    public void j() {
        c0.i("BaseAudioRecorder", "prepare() state = " + this.f16594c);
        if (this.f16594c != a.INITIALIZING) {
            c0.j("BaseAudioRecorder", "prepare() method called on illegal mState State:" + this.f16594c);
            l();
            this.f16594c = a.ERROR;
            return;
        }
        if (d() != 1) {
            c0.j("BaseAudioRecorder", "prepare() method called on uninitialized recorder");
            this.f16594c = a.ERROR;
            return;
        }
        f(((this.f16597f * this.f16596e) / 8) * this.f16595d);
        int i10 = this.f16592a;
        if (i10 == 4 || i10 == 1) {
            c0.j("BaseAudioRecorder", "video call buffer size:" + this.f16593b);
        }
        this.f16594c = a.READY;
    }

    protected abstract void k();

    public void l() {
        c0.i("BaseAudioRecorder", "release state = " + this.f16594c);
        try {
            h();
            m();
        } catch (Exception e10) {
            c0.j("BaseAudioRecorder", "release() uncompressed " + e10.getMessage());
        }
    }

    protected abstract void m();

    public void n() {
        if (this.f16594c == a.PAUSE) {
            c0.i("BaseAudioRecorder", "resume");
            this.f16594c = a.RECORDING;
            k();
        }
    }

    public void o(i0 i0Var) {
        this.f16599h = i0Var;
    }

    public void p() {
        c0.i("BaseAudioRecorder", "start state = " + this.f16594c);
        if (this.f16594c == a.READY) {
            i0 i0Var = this.f16599h;
            if (i0Var != null) {
                i0Var.c();
            }
            q();
            k();
            return;
        }
        c0.j("BaseAudioRecorder", "start() called on illegal mState mState =" + this.f16594c);
        this.f16594c = a.ERROR;
    }

    protected abstract void q();

    protected abstract void r();
}
