package d6;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class j extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f11565i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float[] f11566j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final PathMeasure f11567k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private i f11568l;

    public j(List list) {
        super(list);
        this.f11565i = new PointF();
        this.f11566j = new float[2];
        this.f11567k = new PathMeasure();
    }

    @Override // d6.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public PointF i(m6.c cVar, float f10) {
        PointF pointF;
        i iVar = (i) cVar;
        Path pathK = iVar.k();
        if (pathK == null) {
            return (PointF) cVar.f13847b;
        }
        m6.b bVar = this.f11540e;
        if (bVar != null && (pointF = (PointF) bVar.b(iVar.f13852g, iVar.f13853h.floatValue(), (PointF) iVar.f13847b, (PointF) iVar.f13848c, e(), f10, f())) != null) {
            return pointF;
        }
        if (this.f11568l != iVar) {
            this.f11567k.setPath(pathK, false);
            this.f11568l = iVar;
        }
        PathMeasure pathMeasure = this.f11567k;
        pathMeasure.getPosTan(f10 * pathMeasure.getLength(), this.f11566j, null);
        PointF pointF2 = this.f11565i;
        float[] fArr = this.f11566j;
        pointF2.set(fArr[0], fArr[1]);
        return this.f11565i;
    }
}
