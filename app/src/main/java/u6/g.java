package u6;

import com.oplus.epona.Call$Callback;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.epona.f;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class g implements f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f15885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Request f15887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Call$Callback f15888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f15889e;

    g(List list, int i10, Request request, Call$Callback call$Callback, boolean z10) {
        this.f15885a = list;
        this.f15886b = i10;
        this.f15887c = request;
        this.f15888d = call$Callback;
        this.f15889e = z10;
    }

    private g d(int i10) {
        return new g(this.f15885a, i10, this.f15887c, this.f15888d, this.f15889e);
    }

    @Override // com.oplus.epona.f.a
    public Request a() {
        return this.f15887c;
    }

    @Override // com.oplus.epona.f.a
    public void b() {
        if (this.f15886b < this.f15885a.size()) {
            ((com.oplus.epona.f) this.f15885a.get(this.f15886b)).a(d(this.f15886b + 1));
            return;
        }
        this.f15888d.onReceive(Response.c(this.f15887c.getComponentName() + "#" + this.f15887c.getActionName() + " cannot be proceeded"));
    }

    @Override // com.oplus.epona.f.a
    public boolean c() {
        return this.f15889e;
    }

    @Override // com.oplus.epona.f.a
    public Call$Callback callback() {
        return this.f15888d;
    }
}
