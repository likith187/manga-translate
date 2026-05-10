package d6;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final h6.d f11559i;

    public e(List list) {
        super(list);
        h6.d dVar = (h6.d) ((m6.c) list.get(0)).f13847b;
        int iE = dVar != null ? dVar.e() : 0;
        this.f11559i = new h6.d(new float[iE], new int[iE]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // d6.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public h6.d i(m6.c cVar, float f10) {
        this.f11559i.f((h6.d) cVar.f13847b, (h6.d) cVar.f13848c, f10);
        return this.f11559i;
    }
}
