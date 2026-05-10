package q1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
public class b0 implements n0 {
    public static final b0 INSTANCE = new b0();

    private b0() {
    }

    @Override // q1.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public PointF a(com.airbnb.lottie.parser.moshi.c cVar, float f10) {
        c.b bVarB0 = cVar.b0();
        if (bVarB0 != c.b.BEGIN_ARRAY && bVarB0 != c.b.BEGIN_OBJECT) {
            if (bVarB0 == c.b.NUMBER) {
                PointF pointF = new PointF(((float) cVar.G()) * f10, ((float) cVar.G()) * f10);
                while (cVar.B()) {
                    cVar.D0();
                }
                return pointF;
            }
            throw new IllegalArgumentException("Cannot convert json to point. Next token is " + bVarB0);
        }
        return s.e(cVar, f10);
    }
}
