package y2;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class n implements w2.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f16539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f16540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q f16541c;

    n(Set set, m mVar, q qVar) {
        this.f16539a = set;
        this.f16540b = mVar;
        this.f16541c = qVar;
    }

    @Override // w2.g
    public w2.f a(String str, Class cls, w2.b bVar, w2.e eVar) {
        if (this.f16539a.contains(bVar)) {
            return new p(this.f16540b, str, bVar, eVar, this.f16541c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, this.f16539a));
    }
}
