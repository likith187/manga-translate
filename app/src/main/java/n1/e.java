package n1;

import android.graphics.Path;
import com.airbnb.lottie.i0;

/* JADX INFO: loaded from: classes.dex */
public class e implements c {

    /* JADX INFO: renamed from: a */
    private final g f13957a;

    /* JADX INFO: renamed from: b */
    private final Path.FillType f13958b;

    /* JADX INFO: renamed from: c */
    private final m1.c f13959c;

    /* JADX INFO: renamed from: d */
    private final m1.d f13960d;

    /* JADX INFO: renamed from: e */
    private final m1.f f13961e;

    /* JADX INFO: renamed from: f */
    private final m1.f f13962f;

    /* JADX INFO: renamed from: g */
    private final String f13963g;

    /* JADX INFO: renamed from: h */
    private final m1.b f13964h;

    /* JADX INFO: renamed from: i */
    private final m1.b f13965i;

    /* JADX INFO: renamed from: j */
    private final boolean f13966j;

    public e(String str, g gVar, Path.FillType fillType, m1.c cVar, m1.d dVar, m1.f fVar, m1.f fVar2, m1.b bVar, m1.b bVar2, boolean z10) {
        this.f13957a = gVar;
        this.f13958b = fillType;
        this.f13959c = cVar;
        this.f13960d = dVar;
        this.f13961e = fVar;
        this.f13962f = fVar2;
        this.f13963g = str;
        this.f13964h = bVar;
        this.f13965i = bVar2;
        this.f13966j = z10;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new i1.h(i0Var, jVar, bVar, this);
    }

    public m1.f b() {
        return this.f13962f;
    }

    public Path.FillType c() {
        return this.f13958b;
    }

    public m1.c d() {
        return this.f13959c;
    }

    public g e() {
        return this.f13957a;
    }

    public String f() {
        return this.f13963g;
    }

    public m1.d g() {
        return this.f13960d;
    }

    public m1.f h() {
        return this.f13961e;
    }

    public boolean i() {
        return this.f13966j;
    }
}
