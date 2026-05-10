package l5;

import com.heytap.epona.Request;
import com.heytap.epona.Response;
import com.heytap.epona.d;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class f implements d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f13598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f13599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Request f13600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.heytap.epona.a f13601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f13602e;

    f(List list, int i10, Request request, com.heytap.epona.a aVar, boolean z10) {
        ArrayList arrayList = new ArrayList();
        this.f13598a = arrayList;
        arrayList.addAll(list);
        this.f13599b = i10;
        this.f13600c = request;
        this.f13601d = aVar;
        this.f13602e = z10;
    }

    private f d(int i10) {
        return new f(this.f13598a, i10, this.f13600c, this.f13601d, this.f13602e);
    }

    @Override // com.heytap.epona.d.a
    public Request a() {
        return this.f13600c;
    }

    @Override // com.heytap.epona.d.a
    public void b() {
        if (this.f13599b >= this.f13598a.size()) {
            this.f13601d.onReceive(Response.b());
        } else {
            ((com.heytap.epona.d) this.f13598a.get(this.f13599b)).a(d(this.f13599b + 1));
        }
    }

    @Override // com.heytap.epona.d.a
    public boolean c() {
        return this.f13602e;
    }

    @Override // com.heytap.epona.d.a
    public com.heytap.epona.a callback() {
        return this.f13601d;
    }
}
