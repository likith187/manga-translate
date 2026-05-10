package d1;

import com.ai.slp.library.impl.component.i;
import com.slp.library.track.TrackWrap;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends i {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final b f11493m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected final TrackWrap f11494n;

    public a(z0.b bVar) {
        super(bVar);
        b bVar2 = new b(R());
        this.f11493m = bVar2;
        this.f11494n = bVar2.f11495a;
    }

    protected abstract String R();

    protected TrackWrap S() {
        return this.f11493m.a();
    }

    @Override // com.ai.slp.library.impl.component.b
    protected void z(y0.a aVar, y0.a aVar2) {
        this.f11493m.b(aVar, aVar2);
        super.z(aVar, aVar2);
    }
}
