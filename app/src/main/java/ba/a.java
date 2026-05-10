package ba;

import java.util.List;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static Mat a(List list) {
        int size = list != null ? list.size() : 0;
        if (size <= 0) {
            return new Mat();
        }
        Mat mat = new Mat(size, 1, aa.a.f128r);
        int[] iArr = new int[size * 2];
        for (int i10 = 0; i10 < size; i10++) {
            long j10 = ((Mat) list.get(i10)).f15054a;
            int i11 = i10 * 2;
            iArr[i11] = (int) (j10 >> 32);
            iArr[i11 + 1] = (int) j10;
        }
        mat.t(0, 0, iArr);
        return mat;
    }

    public static Mat b(List list, List list2) {
        if ((list != null ? list.size() : 0) <= 0) {
            return new Mat();
        }
        list2.addAll(list);
        return a(list2);
    }
}
