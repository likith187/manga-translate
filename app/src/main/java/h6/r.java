package h6;

import android.graphics.Paint;
import c6.t;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class r implements h6.c {

    /* JADX INFO: renamed from: a */
    private final String f12324a;

    /* JADX INFO: renamed from: b */
    private final g6.b f12325b;

    /* JADX INFO: renamed from: c */
    private final List f12326c;

    /* JADX INFO: renamed from: d */
    private final g6.a f12327d;

    /* JADX INFO: renamed from: e */
    private final g6.d f12328e;

    /* JADX INFO: renamed from: f */
    private final g6.b f12329f;

    /* JADX INFO: renamed from: g */
    private final b f12330g;

    /* JADX INFO: renamed from: h */
    private final c f12331h;

    /* JADX INFO: renamed from: i */
    private final float f12332i;

    /* JADX INFO: renamed from: j */
    private final boolean f12333j;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f12334a;

        /* JADX INFO: renamed from: b */
        static final /* synthetic */ int[] f12335b;

        static {
            int[] iArr = new int[c.values().length];
            f12335b = iArr;
            try {
                iArr[c.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12335b[c.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12335b[c.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[b.values().length];
            f12334a = iArr2;
            try {
                iArr2[b.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12334a[b.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12334a[b.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum b {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i10 = a.f12334a[ordinal()];
            return i10 != 1 ? i10 != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }
    }

    public enum c {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i10 = a.f12335b[ordinal()];
            if (i10 == 1) {
                return Paint.Join.BEVEL;
            }
            if (i10 == 2) {
                return Paint.Join.MITER;
            }
            if (i10 != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public r(String str, g6.b bVar, List list, g6.a aVar, g6.d dVar, g6.b bVar2, b bVar3, c cVar, float f10, boolean z10) {
        this.f12324a = str;
        this.f12325b = bVar;
        this.f12326c = list;
        this.f12327d = aVar;
        this.f12328e = dVar;
        this.f12329f = bVar2;
        this.f12330g = bVar3;
        this.f12331h = cVar;
        this.f12332i = f10;
        this.f12333j = z10;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new t(oVar, bVar, this);
    }

    public b b() {
        return this.f12330g;
    }

    public g6.a c() {
        return this.f12327d;
    }

    public g6.b d() {
        return this.f12325b;
    }

    public c e() {
        return this.f12331h;
    }

    public List f() {
        return this.f12326c;
    }

    public float g() {
        return this.f12332i;
    }

    public String h() {
        return this.f12324a;
    }

    public g6.d i() {
        return this.f12328e;
    }

    public g6.b j() {
        return this.f12329f;
    }

    public boolean k() {
        return this.f12333j;
    }
}
