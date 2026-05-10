package a7;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f107a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f108b = new e();

    public static final void b(c cVar, e eVar, e eVar2) {
        e eVar3 = cVar.f107a;
        float f10 = eVar3.f109a * eVar.f109a;
        e eVar4 = cVar.f108b;
        float f11 = eVar4.f109a;
        float f12 = eVar.f110b;
        eVar2.f109a = f10 + (f11 * f12);
        eVar2.f110b = (eVar3.f110b * eVar.f109a) + (eVar4.f110b * f12);
    }

    public final c a() {
        e eVar = this.f107a;
        float f10 = eVar.f109a;
        e eVar2 = this.f108b;
        float f11 = eVar2.f109a;
        float f12 = eVar.f110b;
        float f13 = eVar2.f110b;
        float f14 = (f10 * f13) - (f11 * f12);
        if (f14 != 0.0f) {
            f14 = 1.0f / f14;
        }
        eVar.f109a = f13 * f14;
        float f15 = -f14;
        eVar2.f109a = f11 * f15;
        eVar.f110b = f15 * f12;
        eVar2.f110b = f14 * f10;
        return this;
    }
}
