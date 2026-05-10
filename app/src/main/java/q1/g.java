package q1;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
public class g implements n0 {
    public static final g INSTANCE = new g();

    private g() {
    }

    @Override // q1.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Integer a(com.airbnb.lottie.parser.moshi.c cVar, float f10) {
        boolean z10 = cVar.b0() == c.b.BEGIN_ARRAY;
        if (z10) {
            cVar.i();
        }
        double dG = cVar.G();
        double dG2 = cVar.G();
        double dG3 = cVar.G();
        double dG4 = cVar.b0() == c.b.NUMBER ? cVar.G() : 1.0d;
        if (z10) {
            cVar.v();
        }
        if (dG <= 1.0d && dG2 <= 1.0d && dG3 <= 1.0d) {
            dG *= 255.0d;
            dG2 *= 255.0d;
            dG3 *= 255.0d;
            if (dG4 <= 1.0d) {
                dG4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) dG4, (int) dG, (int) dG2, (int) dG3));
    }
}
