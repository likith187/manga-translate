package d3;

import y2.m;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f11505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f11506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w2.h f11507c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final y2.h f11508f;

    private a(c cVar, m mVar, w2.h hVar, y2.h hVar2) {
        this.f11505a = cVar;
        this.f11506b = mVar;
        this.f11507c = hVar;
        this.f11508f = hVar2;
    }

    public static Runnable a(c cVar, m mVar, w2.h hVar, y2.h hVar2) {
        return new a(cVar, mVar, hVar, hVar2);
    }

    @Override // java.lang.Runnable
    public void run() {
        c.c(this.f11505a, this.f11506b, this.f11507c, this.f11508f);
    }
}
