package androidx.appcompat.app;

import java.util.LinkedHashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
abstract class s {
    private static z.f a(z.f fVar, z.f fVar2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i10 = 0;
        while (i10 < fVar.f() + fVar2.f()) {
            Locale localeC = i10 < fVar.f() ? fVar.c(i10) : fVar2.c(i10 - fVar.f());
            if (localeC != null) {
                linkedHashSet.add(localeC);
            }
            i10++;
        }
        return z.f.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
    }

    static z.f b(z.f fVar, z.f fVar2) {
        return (fVar == null || fVar.e()) ? z.f.d() : a(fVar, fVar2);
    }
}
