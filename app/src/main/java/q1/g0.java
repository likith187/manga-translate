package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
public class g0 implements n0 {
    public static final g0 INSTANCE = new g0();

    private g0() {
    }

    @Override // q1.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public s1.d a(com.airbnb.lottie.parser.moshi.c cVar, float f10) {
        boolean z10 = cVar.b0() == c.b.BEGIN_ARRAY;
        if (z10) {
            cVar.i();
        }
        float fG = (float) cVar.G();
        float fG2 = (float) cVar.G();
        while (cVar.B()) {
            cVar.D0();
        }
        if (z10) {
            cVar.v();
        }
        return new s1.d((fG / 100.0f) * f10, (fG2 / 100.0f) * f10);
    }
}
