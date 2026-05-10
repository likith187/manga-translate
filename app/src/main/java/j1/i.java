package j1;

import android.graphics.Path;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes.dex */
public class i extends s1.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Path f12708q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final s1.a f12709r;

    public i(com.airbnb.lottie.j jVar, s1.a aVar) {
        super(jVar, (PointF) aVar.f15504b, (PointF) aVar.f15505c, aVar.f15506d, aVar.f15507e, aVar.f15508f, aVar.f15509g, aVar.f15510h);
        this.f12709r = aVar;
        j();
    }

    public void j() {
        Object obj;
        Object obj2;
        Object obj3 = this.f15505c;
        boolean z10 = (obj3 == null || (obj2 = this.f15504b) == null || !((PointF) obj2).equals(((PointF) obj3).x, ((PointF) obj3).y)) ? false : true;
        Object obj4 = this.f15504b;
        if (obj4 == null || (obj = this.f15505c) == null || z10) {
            return;
        }
        s1.a aVar = this.f12709r;
        this.f12708q = r1.j.d((PointF) obj4, (PointF) obj, aVar.f15517o, aVar.f15518p);
    }

    Path k() {
        return this.f12708q;
    }
}
