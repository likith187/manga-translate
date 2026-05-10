package androidx.room;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class k implements s0.e, s0.d {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final TreeMap f3584l = new TreeMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile String f3585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long[] f3586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final double[] f3587c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final String[] f3588f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final byte[][] f3589h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f3590i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final int f3591j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f3592k;

    private k(int i10) {
        this.f3591j = i10;
        int i11 = i10 + 1;
        this.f3590i = new int[i11];
        this.f3586b = new long[i11];
        this.f3587c = new double[i11];
        this.f3588f = new String[i11];
        this.f3589h = new byte[i11][];
    }

    public static k k(String str, int i10) {
        TreeMap treeMap = f3584l;
        synchronized (treeMap) {
            try {
                Map.Entry entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i10));
                if (entryCeilingEntry == null) {
                    k kVar = new k(i10);
                    kVar.v(str, i10);
                    return kVar;
                }
                treeMap.remove(entryCeilingEntry.getKey());
                k kVar2 = (k) entryCeilingEntry.getValue();
                kVar2.v(str, i10);
                return kVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void x() {
        TreeMap treeMap = f3584l;
        if (treeMap.size() <= 15) {
            return;
        }
        int size = treeMap.size() - 10;
        Iterator it = treeMap.descendingKeySet().iterator();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            it.next();
            it.remove();
            size = i10;
        }
    }

    public void B() {
        TreeMap treeMap = f3584l;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f3591j), this);
            x();
        }
    }

    @Override // s0.d
    public void M(int i10) {
        this.f3590i[i10] = 1;
    }

    @Override // s0.d
    public void P(int i10, double d10) {
        this.f3590i[i10] = 3;
        this.f3587c[i10] = d10;
    }

    @Override // s0.e
    public String c() {
        return this.f3585a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // s0.d
    public void e0(int i10, long j10) {
        this.f3590i[i10] = 2;
        this.f3586b[i10] = j10;
    }

    @Override // s0.e
    public void i(s0.d dVar) {
        for (int i10 = 1; i10 <= this.f3592k; i10++) {
            int i11 = this.f3590i[i10];
            if (i11 == 1) {
                dVar.M(i10);
            } else if (i11 == 2) {
                dVar.e0(i10, this.f3586b[i10]);
            } else if (i11 == 3) {
                dVar.P(i10, this.f3587c[i10]);
            } else if (i11 == 4) {
                dVar.z(i10, this.f3588f[i10]);
            } else if (i11 == 5) {
                dVar.k0(i10, this.f3589h[i10]);
            }
        }
    }

    @Override // s0.d
    public void k0(int i10, byte[] bArr) {
        this.f3590i[i10] = 5;
        this.f3589h[i10] = bArr;
    }

    void v(String str, int i10) {
        this.f3585a = str;
        this.f3592k = i10;
    }

    @Override // s0.d
    public void z(int i10, String str) {
        this.f3590i[i10] = 4;
        this.f3588f[i10] = str;
    }
}
