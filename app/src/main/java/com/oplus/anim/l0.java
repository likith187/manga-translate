package com.oplus.anim;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f11052a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f11053b = new androidx.collection.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f11054c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Comparator f11055d = new a();

    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c0.d dVar, c0.d dVar2) {
            float fFloatValue = ((Float) dVar.f4279b).floatValue();
            float fFloatValue2 = ((Float) dVar2.f4279b).floatValue();
            if (fFloatValue2 > fFloatValue) {
                return 1;
            }
            return fFloatValue > fFloatValue2 ? -1 : 0;
        }
    }

    public void a(String str, float f10) {
        if (this.f11052a) {
            l6.f fVar = (l6.f) this.f11054c.get(str);
            if (fVar == null) {
                fVar = new l6.f();
                this.f11054c.put(str, fVar);
            }
            fVar.a(f10);
            if (str.equals("__container")) {
                Iterator it = this.f11053b.iterator();
                if (it.hasNext()) {
                    androidx.appcompat.app.t.a(it.next());
                    throw null;
                }
            }
        }
    }

    void b(boolean z10) {
        this.f11052a = z10;
    }
}
