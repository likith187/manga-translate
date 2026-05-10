package com.airbnb.lottie;

import android.graphics.Rect;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: c */
    private Map f4591c;

    /* JADX INFO: renamed from: d */
    private Map f4592d;

    /* JADX INFO: renamed from: e */
    private float f4593e;

    /* JADX INFO: renamed from: f */
    private Map f4594f;

    /* JADX INFO: renamed from: g */
    private List f4595g;

    /* JADX INFO: renamed from: h */
    private androidx.collection.j f4596h;

    /* JADX INFO: renamed from: i */
    private androidx.collection.f f4597i;

    /* JADX INFO: renamed from: j */
    private List f4598j;

    /* JADX INFO: renamed from: k */
    private Rect f4599k;

    /* JADX INFO: renamed from: l */
    private float f4600l;

    /* JADX INFO: renamed from: m */
    private float f4601m;

    /* JADX INFO: renamed from: n */
    private float f4602n;

    /* JADX INFO: renamed from: o */
    private boolean f4603o;

    /* JADX INFO: renamed from: a */
    private final q0 f4589a = new q0();

    /* JADX INFO: renamed from: b */
    private final HashSet f4590b = new HashSet();

    /* JADX INFO: renamed from: p */
    private int f4604p = 0;

    public void a(String str) {
        r1.d.c(str);
        this.f4590b.add(str);
    }

    public Rect b() {
        return this.f4599k;
    }

    public androidx.collection.j c() {
        return this.f4596h;
    }

    public float d() {
        return (long) ((e() / this.f4602n) * 1000.0f);
    }

    public float e() {
        return this.f4601m - this.f4600l;
    }

    public float f() {
        return this.f4601m;
    }

    public Map g() {
        return this.f4594f;
    }

    public float h(float f10) {
        return r1.i.i(this.f4600l, this.f4601m, f10);
    }

    public float i() {
        return this.f4602n;
    }

    public Map j() {
        float fE = r1.j.e();
        if (fE != this.f4593e) {
            this.f4593e = fE;
            for (Map.Entry entry : this.f4592d.entrySet()) {
                this.f4592d.put((String) entry.getKey(), ((j0) entry.getValue()).a(this.f4593e / fE));
            }
        }
        return this.f4592d;
    }

    public List k() {
        return this.f4598j;
    }

    public l1.h l(String str) {
        int size = this.f4595g.size();
        for (int i10 = 0; i10 < size; i10++) {
            l1.h hVar = (l1.h) this.f4595g.get(i10);
            if (hVar.a(str)) {
                return hVar;
            }
        }
        return null;
    }

    public int m() {
        return this.f4604p;
    }

    public q0 n() {
        return this.f4589a;
    }

    public List o(String str) {
        return (List) this.f4591c.get(str);
    }

    public float p() {
        return this.f4600l;
    }

    public boolean q() {
        return this.f4603o;
    }

    public void r(int i10) {
        this.f4604p += i10;
    }

    public void s(Rect rect, float f10, float f11, float f12, List list, androidx.collection.f fVar, Map map, Map map2, float f13, androidx.collection.j jVar, Map map3, List list2) {
        this.f4599k = rect;
        this.f4600l = f10;
        this.f4601m = f11;
        this.f4602n = f12;
        this.f4598j = list;
        this.f4597i = fVar;
        this.f4591c = map;
        this.f4592d = map2;
        this.f4593e = f13;
        this.f4596h = jVar;
        this.f4594f = map3;
        this.f4595g = list2;
    }

    public o1.e t(long j10) {
        return (o1.e) this.f4597i.e(j10);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator it = this.f4598j.iterator();
        while (it.hasNext()) {
            sb.append(((o1.e) it.next()).z("\t"));
        }
        return sb.toString();
    }

    public void u(boolean z10) {
        this.f4603o = z10;
    }

    public void v(boolean z10) {
        this.f4589a.b(z10);
    }
}
