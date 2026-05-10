package d6;

import android.graphics.Path;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class i extends m6.c {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Path f11563q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final m6.c f11564r;

    public i(com.oplus.anim.a aVar, m6.c cVar) {
        super(aVar, (PointF) cVar.f13847b, (PointF) cVar.f13848c, cVar.f13849d, cVar.f13850e, cVar.f13851f, cVar.f13852g, cVar.f13853h);
        this.f11564r = cVar;
        j();
    }

    public void j() {
        Object obj;
        Object obj2;
        Object obj3 = this.f13848c;
        boolean z10 = (obj3 == null || (obj2 = this.f13847b) == null || !((PointF) obj2).equals(((PointF) obj3).x, ((PointF) obj3).y)) ? false : true;
        Object obj4 = this.f13847b;
        if (obj4 == null || (obj = this.f13848c) == null || z10) {
            return;
        }
        m6.c cVar = this.f11564r;
        this.f11563q = l6.h.d((PointF) obj4, (PointF) obj, cVar.f13860o, cVar.f13861p);
    }

    Path k() {
        return this.f11563q;
    }
}
