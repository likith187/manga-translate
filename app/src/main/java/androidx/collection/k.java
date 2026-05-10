package androidx.collection;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1067a = new Object();

    public static final Object c(j jVar, int i10) {
        Object obj;
        r.e(jVar, "<this>");
        int iA = k.a.a(jVar.f1064b, jVar.f1066f, i10);
        if (iA < 0 || (obj = jVar.f1065c[iA]) == f1067a) {
            return null;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(j jVar) {
        int i10 = jVar.f1066f;
        int[] iArr = jVar.f1064b;
        Object[] objArr = jVar.f1065c;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != f1067a) {
                if (i12 != i11) {
                    iArr[i11] = iArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        jVar.f1063a = false;
        jVar.f1066f = i11;
    }
}
