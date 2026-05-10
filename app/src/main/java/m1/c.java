package m1;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends n {
    public c(List list) {
        super(e(list));
    }

    private static s1.a d(s1.a aVar) {
        n1.d dVar = (n1.d) aVar.f15504b;
        n1.d dVar2 = (n1.d) aVar.f15505c;
        if (dVar == null || dVar2 == null || dVar.e().length == dVar2.e().length) {
            return aVar;
        }
        float[] fArrF = f(dVar.e(), dVar2.e());
        return aVar.b(dVar.b(fArrF), dVar2.b(fArrF));
    }

    private static List e(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.set(i10, d((s1.a) list.get(i10)));
        }
        return list;
    }

    static float[] f(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f10 = Float.NaN;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            float f11 = fArr3[i11];
            if (f11 != f10) {
                fArr3[i10] = f11;
                i10++;
                f10 = fArr3[i11];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i10);
    }

    @Override // m1.m
    public j1.a a() {
        return new j1.e(this.f13829a);
    }

    @Override // m1.n, m1.m
    public /* bridge */ /* synthetic */ List b() {
        return super.b();
    }

    @Override // m1.n, m1.m
    public /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    @Override // m1.n
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
