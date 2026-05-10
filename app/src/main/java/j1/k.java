package j1;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class k extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f12714i;

    public k(List list) {
        super(list);
        this.f12714i = new PointF();
    }

    @Override // j1.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF i(s1.a aVar, float f10) {
        return j(aVar, f10, f10, f10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j1.a
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public PointF j(s1.a aVar, float f10, float f11, float f12) {
        Object obj;
        PointF pointF;
        Object obj2 = aVar.f15504b;
        if (obj2 == null || (obj = aVar.f15505c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF2 = (PointF) obj2;
        PointF pointF3 = (PointF) obj;
        s1.c cVar = this.f12685e;
        if (cVar != null && (pointF = (PointF) cVar.b(aVar.f15509g, aVar.f15510h.floatValue(), pointF2, pointF3, f10, e(), f())) != null) {
            return pointF;
        }
        PointF pointF4 = this.f12714i;
        float f13 = pointF2.x;
        float f14 = f13 + (f11 * (pointF3.x - f13));
        float f15 = pointF2.y;
        pointF4.set(f14, f15 + (f12 * (pointF3.y - f15)));
        return this.f12714i;
    }
}
