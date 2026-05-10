package aa;

import java.util.List;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes2.dex */
public class b extends Mat {
    public void B(int i10) {
        if (i10 > 0) {
            super.g(i10, 1, a.k(5, 2));
        }
    }

    public void C(d... dVarArr) {
        if (dVarArr == null || dVarArr.length == 0) {
            return;
        }
        int length = dVarArr.length;
        B(length);
        float[] fArr = new float[length * 2];
        for (int i10 = 0; i10 < length; i10++) {
            d dVar = dVarArr[i10];
            int i11 = i10 * 2;
            fArr[i11] = (float) dVar.f137a;
            fArr[i11 + 1] = (float) dVar.f138b;
        }
        s(0, 0, fArr);
    }

    public void D(List list) {
        C((d[]) list.toArray(new d[0]));
    }
}
