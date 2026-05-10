package d6;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class k extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f11569i;

    public k(List list) {
        super(list);
        this.f11569i = new PointF();
    }

    @Override // d6.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public PointF i(m6.c cVar, float f10) {
        return j(cVar, f10, f10, f10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // d6.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF j(m6.c cVar, float f10, float f11, float f12) {
        Object obj;
        PointF pointF;
        Object obj2 = cVar.f13847b;
        if (obj2 == null || (obj = cVar.f13848c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF2 = (PointF) obj2;
        PointF pointF3 = (PointF) obj;
        m6.b bVar = this.f11540e;
        if (bVar != null && (pointF = (PointF) bVar.b(cVar.f13852g, cVar.f13853h.floatValue(), pointF2, pointF3, f10, e(), f())) != null) {
            return pointF;
        }
        PointF pointF4 = this.f11569i;
        float f13 = pointF2.x;
        float f14 = f13 + (f11 * (pointF3.x - f13));
        float f15 = pointF2.y;
        pointF4.set(f14, f15 + (f12 * (pointF3.y - f15)));
        return this.f11569i;
    }
}
