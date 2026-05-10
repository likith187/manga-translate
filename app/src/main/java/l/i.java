package l;

import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class i implements Comparable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static int f13499u = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f13500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f13501b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f13505i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    a f13509m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13502c = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f13503f = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13504h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f13506j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    float[] f13507k = new float[9];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    float[] f13508l = new float[9];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    b[] f13510n = new b[16];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f13511o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13512p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f13513q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f13514r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    float f13515s = 0.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    HashSet f13516t = null;

    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public i(a aVar, String str) {
        this.f13509m = aVar;
    }

    static void c() {
        f13499u++;
    }

    public final void a(b bVar) {
        int i10 = 0;
        while (true) {
            int i11 = this.f13511o;
            if (i10 >= i11) {
                b[] bVarArr = this.f13510n;
                if (i11 >= bVarArr.length) {
                    this.f13510n = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f13510n;
                int i12 = this.f13511o;
                bVarArr2[i12] = bVar;
                this.f13511o = i12 + 1;
                return;
            }
            if (this.f13510n[i10] == bVar) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(i iVar) {
        return this.f13502c - iVar.f13502c;
    }

    public final void d(b bVar) {
        int i10 = this.f13511o;
        int i11 = 0;
        while (i11 < i10) {
            if (this.f13510n[i11] == bVar) {
                while (i11 < i10 - 1) {
                    b[] bVarArr = this.f13510n;
                    int i12 = i11 + 1;
                    bVarArr[i11] = bVarArr[i12];
                    i11 = i12;
                }
                this.f13511o--;
                return;
            }
            i11++;
        }
    }

    public void e() {
        this.f13501b = null;
        this.f13509m = a.UNKNOWN;
        this.f13504h = 0;
        this.f13502c = -1;
        this.f13503f = -1;
        this.f13505i = 0.0f;
        this.f13506j = false;
        this.f13513q = false;
        this.f13514r = -1;
        this.f13515s = 0.0f;
        int i10 = this.f13511o;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f13510n[i11] = null;
        }
        this.f13511o = 0;
        this.f13512p = 0;
        this.f13500a = false;
        Arrays.fill(this.f13508l, 0.0f);
    }

    public void f(d dVar, float f10) {
        this.f13505i = f10;
        this.f13506j = true;
        this.f13513q = false;
        this.f13514r = -1;
        this.f13515s = 0.0f;
        int i10 = this.f13511o;
        this.f13503f = -1;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f13510n[i11].A(dVar, this, false);
        }
        this.f13511o = 0;
    }

    public void g(a aVar, String str) {
        this.f13509m = aVar;
    }

    public final void h(d dVar, b bVar) {
        int i10 = this.f13511o;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f13510n[i11].B(dVar, bVar, false);
        }
        this.f13511o = 0;
    }

    public String toString() {
        if (this.f13501b != null) {
            return "" + this.f13501b;
        }
        return "" + this.f13502c;
    }
}
