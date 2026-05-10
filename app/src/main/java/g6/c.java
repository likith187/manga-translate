package g6;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends n {
    public c(List list) {
        super(e(list));
    }

    private static m6.c d(m6.c cVar) {
        h6.d dVar = (h6.d) cVar.f13847b;
        h6.d dVar2 = (h6.d) cVar.f13848c;
        if (dVar == null || dVar2 == null || dVar.d().length == dVar2.d().length) {
            return cVar;
        }
        float[] fArrF = f(dVar.d(), dVar2.d());
        return cVar.b(dVar.a(fArrF), dVar2.a(fArrF));
    }

    private static List e(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.set(i10, d((m6.c) list.get(i10)));
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

    @Override // g6.m
    public d6.a a() {
        return new d6.e(this.f12109a);
    }

    @Override // g6.n, g6.m
    public /* bridge */ /* synthetic */ List b() {
        return super.b();
    }

    @Override // g6.n, g6.m
    public /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    @Override // g6.n
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
