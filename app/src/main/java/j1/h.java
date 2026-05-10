package j1;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f12705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f12706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f12707c;

    public h(List list) {
        this.f12707c = list;
        this.f12705a = new ArrayList(list.size());
        this.f12706b = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f12705a.add(((n1.i) list.get(i10)).b().a());
            this.f12706b.add(((n1.i) list.get(i10)).c().a());
        }
    }

    public List a() {
        return this.f12705a;
    }

    public List b() {
        return this.f12707c;
    }

    public List c() {
        return this.f12706b;
    }
}
