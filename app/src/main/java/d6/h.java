package d6;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f11560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f11561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f11562c;

    public h(List list) {
        this.f11562c = list;
        this.f11560a = new ArrayList(list.size());
        this.f11561b = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f11560a.add(((h6.h) list.get(i10)).b().a());
            this.f11561b.add(((h6.h) list.get(i10)).c().a());
        }
    }

    public List a() {
        return this.f11560a;
    }

    public List b() {
        return this.f11562c;
    }

    public List c() {
        return this.f11561b;
    }
}
