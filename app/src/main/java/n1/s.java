package n1;

import android.graphics.Paint;
import com.airbnb.lottie.i0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class s implements n1.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m1.b f14028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f14029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m1.a f14030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m1.d f14031e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final m1.b f14032f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f14033g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c f14034h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f14035i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f14036j;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f14037a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f14038b;

        static {
            int[] iArr = new int[c.values().length];
            f14038b = iArr;
            try {
                iArr[c.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14038b[c.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14038b[c.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[b.values().length];
            f14037a = iArr2;
            try {
                iArr2[b.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14037a[b.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14037a[b.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum b {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i10 = a.f14037a[ordinal()];
            return i10 != 1 ? i10 != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }
    }

    public enum c {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i10 = a.f14038b[ordinal()];
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

    public s(String str, m1.b bVar, List list, m1.a aVar, m1.d dVar, m1.b bVar2, b bVar3, c cVar, float f10, boolean z10) {
        this.f14027a = str;
        this.f14028b = bVar;
        this.f14029c = list;
        this.f14030d = aVar;
        this.f14031e = dVar;
        this.f14032f = bVar2;
        this.f14033g = bVar3;
        this.f14034h = cVar;
        this.f14035i = f10;
        this.f14036j = z10;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new i1.t(i0Var, bVar, this);
    }

    public b b() {
        return this.f14033g;
    }

    public m1.a c() {
        return this.f14030d;
    }

    public m1.b d() {
        return this.f14028b;
    }

    public c e() {
        return this.f14034h;
    }

    public List f() {
        return this.f14029c;
    }

    public float g() {
        return this.f14035i;
    }

    public String h() {
        return this.f14027a;
    }

    public m1.d i() {
        return this.f14031e;
    }

    public m1.b j() {
        return this.f14032f;
    }

    public boolean k() {
        return this.f14036j;
    }
}
