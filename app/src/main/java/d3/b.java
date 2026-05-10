package d3;

import g3.b;
import y2.m;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class b implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f11509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f11510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y2.h f11511c;

    private b(c cVar, m mVar, y2.h hVar) {
        this.f11509a = cVar;
        this.f11510b = mVar;
        this.f11511c = hVar;
    }

    public static b.a a(c cVar, m mVar, y2.h hVar) {
        return new b(cVar, mVar, hVar);
    }

    @Override // g3.b.a
    public Object c() {
        return c.b(this.f11509a, this.f11510b, this.f11511c);
    }
}
