package j1;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class j extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f12710i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float[] f12711j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final PathMeasure f12712k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private i f12713l;

    public j(List list) {
        super(list);
        this.f12710i = new PointF();
        this.f12711j = new float[2];
        this.f12712k = new PathMeasure();
    }

    @Override // j1.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF i(s1.a aVar, float f10) {
        PointF pointF;
        i iVar = (i) aVar;
        Path pathK = iVar.k();
        if (pathK == null) {
            return (PointF) aVar.f15504b;
        }
        s1.c cVar = this.f12685e;
        if (cVar != null && (pointF = (PointF) cVar.b(iVar.f15509g, iVar.f15510h.floatValue(), (PointF) iVar.f15504b, (PointF) iVar.f15505c, e(), f10, f())) != null) {
            return pointF;
        }
        if (this.f12713l != iVar) {
            this.f12712k.setPath(pathK, false);
            this.f12713l = iVar;
        }
        PathMeasure pathMeasure = this.f12712k;
        pathMeasure.getPosTan(f10 * pathMeasure.getLength(), this.f12711j, null);
        PointF pointF2 = this.f12710i;
        float[] fArr = this.f12711j;
        pointF2.set(fArr[0], fArr[1]);
        return this.f12710i;
    }
}
