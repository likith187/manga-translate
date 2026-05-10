package com.airbnb.lottie;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4683a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f4684b = new androidx.collection.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f4685c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Comparator f4686d = new a();

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
        if (this.f4683a) {
            r1.h hVar = (r1.h) this.f4685c.get(str);
            if (hVar == null) {
                hVar = new r1.h();
                this.f4685c.put(str, hVar);
            }
            hVar.a(f10);
            if (str.equals("__container")) {
                Iterator it = this.f4684b.iterator();
                if (it.hasNext()) {
                    androidx.appcompat.app.t.a(it.next());
                    throw null;
                }
            }
        }
    }

    void b(boolean z10) {
        this.f4683a = z10;
    }
}
