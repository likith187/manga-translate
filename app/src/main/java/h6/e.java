package h6;

import android.graphics.Path;

/* JADX INFO: loaded from: classes2.dex */
public class e implements c {

    /* JADX INFO: renamed from: a */
    private final g f12255a;

    /* JADX INFO: renamed from: b */
    private final Path.FillType f12256b;

    /* JADX INFO: renamed from: c */
    private final g6.c f12257c;

    /* JADX INFO: renamed from: d */
    private final g6.d f12258d;

    /* JADX INFO: renamed from: e */
    private final g6.f f12259e;

    /* JADX INFO: renamed from: f */
    private final g6.f f12260f;

    /* JADX INFO: renamed from: g */
    private final String f12261g;

    /* JADX INFO: renamed from: h */
    private final g6.b f12262h;

    /* JADX INFO: renamed from: i */
    private final g6.b f12263i;

    /* JADX INFO: renamed from: j */
    private final boolean f12264j;

    public e(String str, g gVar, Path.FillType fillType, g6.c cVar, g6.d dVar, g6.f fVar, g6.f fVar2, g6.b bVar, g6.b bVar2, boolean z10) {
        this.f12255a = gVar;
        this.f12256b = fillType;
        this.f12257c = cVar;
        this.f12258d = dVar;
        this.f12259e = fVar;
        this.f12260f = fVar2;
        this.f12261g = str;
        this.f12262h = bVar;
        this.f12263i = bVar2;
        this.f12264j = z10;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new c6.h(oVar, aVar, bVar, this);
    }

    public g6.f b() {
        return this.f12260f;
    }

    public Path.FillType c() {
        return this.f12256b;
    }

    public g6.c d() {
        return this.f12257c;
    }

    public g e() {
        return this.f12255a;
    }

    public String f() {
        return this.f12261g;
    }

    public g6.d g() {
        return this.f12258d;
    }

    public g6.f h() {
        return this.f12259e;
    }

    public boolean i() {
        return this.f12264j;
    }
}
