package androidx.databinding;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f2219a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2220b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f2221c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2222f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a f2223h;

    public static abstract class a {
        public abstract void a(Object obj, Object obj2, int i10, Object obj3);
    }

    public c(a aVar) {
        this.f2223h = aVar;
    }

    private boolean d(int i10) {
        int i11;
        if (i10 < 64) {
            return (this.f2220b & (1 << i10)) != 0;
        }
        long[] jArr = this.f2221c;
        if (jArr != null && (i11 = (i10 / 64) - 1) < jArr.length) {
            return ((1 << (i10 % 64)) & jArr[i11]) != 0;
        }
        return false;
    }

    private void f(Object obj, int i10, Object obj2, int i11, int i12, long j10) {
        long j11 = 1;
        while (i11 < i12) {
            if ((j10 & j11) == 0) {
                this.f2223h.a(this.f2219a.get(i11), obj, i10, obj2);
            }
            j11 <<= 1;
            i11++;
        }
    }

    private void g(Object obj, int i10, Object obj2) {
        f(obj, i10, obj2, 0, Math.min(64, this.f2219a.size()), this.f2220b);
    }

    private void h(Object obj, int i10, Object obj2) {
        int size = this.f2219a.size();
        int length = this.f2221c == null ? -1 : r0.length - 1;
        i(obj, i10, obj2, length);
        f(obj, i10, obj2, (length + 2) * 64, size, 0L);
    }

    private void i(Object obj, int i10, Object obj2, int i11) {
        if (i11 < 0) {
            g(obj, i10, obj2);
            return;
        }
        long j10 = this.f2221c[i11];
        int i12 = (i11 + 1) * 64;
        int iMin = Math.min(this.f2219a.size(), i12 + 64);
        i(obj, i10, obj2, i11 - 1);
        f(obj, i10, obj2, i12, iMin, j10);
    }

    private void k(int i10, long j10) {
        long j11 = Long.MIN_VALUE;
        for (int i11 = i10 + 63; i11 >= i10; i11--) {
            if ((j10 & j11) != 0) {
                this.f2219a.remove(i11);
            }
            j11 >>>= 1;
        }
    }

    private void l(int i10) {
        if (i10 < 64) {
            this.f2220b = (1 << i10) | this.f2220b;
            return;
        }
        int i11 = (i10 / 64) - 1;
        long[] jArr = this.f2221c;
        if (jArr == null) {
            this.f2221c = new long[this.f2219a.size() / 64];
        } else if (jArr.length <= i11) {
            long[] jArr2 = new long[this.f2219a.size() / 64];
            long[] jArr3 = this.f2221c;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f2221c = jArr2;
        }
        long[] jArr4 = this.f2221c;
        jArr4[i11] = (1 << (i10 % 64)) | jArr4[i11];
    }

    public synchronized void a(Object obj) {
        try {
            if (obj == null) {
                throw new IllegalArgumentException("callback cannot be null");
            }
            int iLastIndexOf = this.f2219a.lastIndexOf(obj);
            if (iLastIndexOf < 0 || d(iLastIndexOf)) {
                this.f2219a.add(obj);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized c clone() {
        c cVar;
        CloneNotSupportedException e10;
        try {
            cVar = (c) super.clone();
            try {
                cVar.f2220b = 0L;
                cVar.f2221c = null;
                cVar.f2222f = 0;
                cVar.f2219a = new ArrayList();
                int size = this.f2219a.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (!d(i10)) {
                        cVar.f2219a.add(this.f2219a.get(i10));
                    }
                }
            } catch (CloneNotSupportedException e11) {
                e10 = e11;
                e10.printStackTrace();
            }
        } catch (CloneNotSupportedException e12) {
            cVar = null;
            e10 = e12;
        }
        return cVar;
    }

    public synchronized void e(Object obj, int i10, Object obj2) {
        try {
            this.f2222f++;
            h(obj, i10, obj2);
            int i11 = this.f2222f - 1;
            this.f2222f = i11;
            if (i11 == 0) {
                long[] jArr = this.f2221c;
                if (jArr != null) {
                    for (int length = jArr.length - 1; length >= 0; length--) {
                        long j10 = this.f2221c[length];
                        if (j10 != 0) {
                            k((length + 1) * 64, j10);
                            this.f2221c[length] = 0;
                        }
                    }
                }
                long j11 = this.f2220b;
                if (j11 != 0) {
                    k(0, j11);
                    this.f2220b = 0L;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void j(Object obj) {
        try {
            if (this.f2222f == 0) {
                this.f2219a.remove(obj);
            } else {
                int iLastIndexOf = this.f2219a.lastIndexOf(obj);
                if (iLastIndexOf >= 0) {
                    l(iLastIndexOf);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
