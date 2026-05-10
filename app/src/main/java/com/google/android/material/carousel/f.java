package com.google.android.material.carousel;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f9217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f9218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f9219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9220d;

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f9221a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float f9222b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f9224d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private c f9225e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f9223c = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9226f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9227g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f9228h = 0.0f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f9229i = -1;

        b(float f10, float f11) {
            this.f9221a = f10;
            this.f9222b = f11;
        }

        private static float j(float f10, float f11, int i10, int i11) {
            return (f10 - (i10 * f11)) + (i11 * f11);
        }

        b a(float f10, float f11, float f12) {
            return d(f10, f11, f12, false, true);
        }

        b b(float f10, float f11, float f12) {
            return c(f10, f11, f12, false);
        }

        b c(float f10, float f11, float f12, boolean z10) {
            return d(f10, f11, f12, z10, false);
        }

        b d(float f10, float f11, float f12, boolean z10, boolean z11) {
            float fAbs;
            float f13 = f12 / 2.0f;
            float f14 = f10 - f13;
            float f15 = f13 + f10;
            float f16 = this.f9222b;
            if (f15 > f16) {
                fAbs = Math.abs(f15 - Math.max(f15 - f12, f16));
            } else {
                fAbs = 0.0f;
                if (f14 < 0.0f) {
                    fAbs = Math.abs(f14 - Math.min(f14 + f12, 0.0f));
                }
            }
            return e(f10, f11, f12, z10, z11, fAbs);
        }

        b e(float f10, float f11, float f12, boolean z10, boolean z11, float f13) {
            return f(f10, f11, f12, z10, z11, f13, 0.0f, 0.0f);
        }

        b f(float f10, float f11, float f12, boolean z10, boolean z11, float f13, float f14, float f15) {
            if (f12 <= 0.0f) {
                return this;
            }
            if (z11) {
                if (z10) {
                    throw new IllegalArgumentException("Anchor keylines cannot be focal.");
                }
                int i10 = this.f9229i;
                if (i10 != -1 && i10 != 0) {
                    throw new IllegalArgumentException("Anchor keylines must be either the first or last keyline.");
                }
                this.f9229i = this.f9223c.size();
            }
            c cVar = new c(Float.MIN_VALUE, f10, f11, f12, z11, f13, f14, f15);
            if (z10) {
                if (this.f9224d == null) {
                    this.f9224d = cVar;
                    this.f9226f = this.f9223c.size();
                }
                if (this.f9227g != -1 && this.f9223c.size() - this.f9227g > 1) {
                    throw new IllegalArgumentException("Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines.");
                }
                if (f12 != this.f9224d.f9233d) {
                    throw new IllegalArgumentException("Keylines that are marked as focal must all have the same masked item size.");
                }
                this.f9225e = cVar;
                this.f9227g = this.f9223c.size();
            } else {
                if (this.f9224d == null && cVar.f9233d < this.f9228h) {
                    throw new IllegalArgumentException("Keylines before the first focal keyline must be ordered by incrementing masked item size.");
                }
                if (this.f9225e != null && cVar.f9233d > this.f9228h) {
                    throw new IllegalArgumentException("Keylines after the last focal keyline must be ordered by decreasing masked item size.");
                }
            }
            this.f9228h = cVar.f9233d;
            this.f9223c.add(cVar);
            return this;
        }

        b g(float f10, float f11, float f12, int i10) {
            return h(f10, f11, f12, i10, false);
        }

        b h(float f10, float f11, float f12, int i10, boolean z10) {
            if (i10 > 0 && f12 > 0.0f) {
                for (int i11 = 0; i11 < i10; i11++) {
                    c((i11 * f12) + f10, f11, f12, z10);
                }
            }
            return this;
        }

        f i() {
            if (this.f9224d == null) {
                throw new IllegalStateException("There must be a keyline marked as focal.");
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < this.f9223c.size(); i10++) {
                c cVar = (c) this.f9223c.get(i10);
                arrayList.add(new c(j(this.f9224d.f9231b, this.f9221a, this.f9226f, i10), cVar.f9231b, cVar.f9232c, cVar.f9233d, cVar.f9234e, cVar.f9235f, cVar.f9236g, cVar.f9237h));
            }
            return new f(this.f9221a, arrayList, this.f9226f, this.f9227g);
        }
    }

    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f9230a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float f9231b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final float f9232c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final float f9233d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final boolean f9234e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final float f9235f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final float f9236g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final float f9237h;

        c(float f10, float f11, float f12, float f13) {
            this(f10, f11, f12, f13, false, 0.0f, 0.0f, 0.0f);
        }

        static c a(c cVar, c cVar2, float f10) {
            return new c(x3.a.a(cVar.f9230a, cVar2.f9230a, f10), x3.a.a(cVar.f9231b, cVar2.f9231b, f10), x3.a.a(cVar.f9232c, cVar2.f9232c, f10), x3.a.a(cVar.f9233d, cVar2.f9233d, f10));
        }

        c(float f10, float f11, float f12, float f13, boolean z10, float f14, float f15, float f16) {
            this.f9230a = f10;
            this.f9231b = f11;
            this.f9232c = f12;
            this.f9233d = f13;
            this.f9234e = z10;
            this.f9235f = f14;
            this.f9236g = f15;
            this.f9237h = f16;
        }
    }

    static f m(f fVar, f fVar2, float f10) {
        if (fVar.f() != fVar2.f()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same item size.");
        }
        List listG = fVar.g();
        List listG2 = fVar2.g();
        if (listG.size() != listG2.size()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same number of keylines.");
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < fVar.g().size(); i10++) {
            arrayList.add(c.a((c) listG.get(i10), (c) listG2.get(i10), f10));
        }
        return new f(fVar.f(), arrayList, x3.a.c(fVar.b(), fVar2.b(), f10), x3.a.c(fVar.i(), fVar2.i(), f10));
    }

    static f n(f fVar, float f10) {
        b bVar = new b(fVar.f(), f10);
        float f11 = (f10 - fVar.j().f9231b) - (fVar.j().f9233d / 2.0f);
        int size = fVar.g().size() - 1;
        while (size >= 0) {
            c cVar = (c) fVar.g().get(size);
            bVar.d(f11 + (cVar.f9233d / 2.0f), cVar.f9232c, cVar.f9233d, size >= fVar.b() && size <= fVar.i(), cVar.f9234e);
            f11 += cVar.f9233d;
            size--;
        }
        return bVar.i();
    }

    c a() {
        return (c) this.f9218b.get(this.f9219c);
    }

    int b() {
        return this.f9219c;
    }

    c c() {
        return (c) this.f9218b.get(0);
    }

    c d() {
        for (int i10 = 0; i10 < this.f9218b.size(); i10++) {
            c cVar = (c) this.f9218b.get(i10);
            if (!cVar.f9234e) {
                return cVar;
            }
        }
        return null;
    }

    List e() {
        return this.f9218b.subList(this.f9219c, this.f9220d + 1);
    }

    float f() {
        return this.f9217a;
    }

    List g() {
        return this.f9218b;
    }

    c h() {
        return (c) this.f9218b.get(this.f9220d);
    }

    int i() {
        return this.f9220d;
    }

    c j() {
        return (c) this.f9218b.get(r1.size() - 1);
    }

    c k() {
        for (int size = this.f9218b.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f9218b.get(size);
            if (!cVar.f9234e) {
                return cVar;
            }
        }
        return null;
    }

    int l() {
        Iterator it = this.f9218b.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (((c) it.next()).f9234e) {
                i10++;
            }
        }
        return this.f9218b.size() - i10;
    }

    private f(float f10, List list, int i10, int i11) {
        this.f9217a = f10;
        this.f9218b = Collections.unmodifiableList(list);
        this.f9219c = i10;
        this.f9220d = i11;
    }
}
