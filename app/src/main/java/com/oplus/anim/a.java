package com.oplus.anim;

import android.graphics.Rect;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: c */
    private Map f10984c;

    /* JADX INFO: renamed from: d */
    private Map f10985d;

    /* JADX INFO: renamed from: e */
    private Map f10986e;

    /* JADX INFO: renamed from: f */
    private List f10987f;

    /* JADX INFO: renamed from: g */
    private androidx.collection.j f10988g;

    /* JADX INFO: renamed from: h */
    private androidx.collection.f f10989h;

    /* JADX INFO: renamed from: i */
    private List f10990i;

    /* JADX INFO: renamed from: j */
    private Rect f10991j;

    /* JADX INFO: renamed from: k */
    private float f10992k;

    /* JADX INFO: renamed from: l */
    private float f10993l;

    /* JADX INFO: renamed from: m */
    private float f10994m;

    /* JADX INFO: renamed from: n */
    private boolean f10995n;

    /* JADX INFO: renamed from: a */
    private final l0 f10982a = new l0();

    /* JADX INFO: renamed from: b */
    private final HashSet f10983b = new HashSet();

    /* JADX INFO: renamed from: o */
    private int f10996o = 0;

    public void a(String str) {
        l6.e.c(str);
        this.f10983b.add(str);
    }

    public Rect b() {
        return this.f10991j;
    }

    public androidx.collection.j c() {
        return this.f10988g;
    }

    public float d() {
        return (long) ((e() / this.f10994m) * 1000.0f);
    }

    public float e() {
        return this.f10993l - this.f10992k;
    }

    public float f() {
        return this.f10993l;
    }

    public Map g() {
        return this.f10986e;
    }

    public float h(float f10) {
        return l6.g.i(this.f10992k, this.f10993l, f10);
    }

    public float i() {
        return this.f10994m;
    }

    public Map j() {
        return this.f10985d;
    }

    public List k() {
        return this.f10990i;
    }

    public f6.h l(String str) {
        int size = this.f10987f.size();
        for (int i10 = 0; i10 < size; i10++) {
            f6.h hVar = (f6.h) this.f10987f.get(i10);
            if (hVar.a(str)) {
                return hVar;
            }
        }
        return null;
    }

    public int m() {
        return this.f10996o;
    }

    public l0 n() {
        return this.f10982a;
    }

    public List o(String str) {
        return (List) this.f10984c.get(str);
    }

    public float p() {
        return this.f10992k;
    }

    public boolean q() {
        return this.f10995n;
    }

    public void r(int i10) {
        this.f10996o += i10;
    }

    public void s(Rect rect, float f10, float f11, float f12, List list, androidx.collection.f fVar, Map map, Map map2, androidx.collection.j jVar, Map map3, List list2) {
        this.f10991j = rect;
        this.f10992k = f10;
        this.f10993l = f11;
        this.f10994m = f12;
        this.f10990i = list;
        this.f10989h = fVar;
        this.f10984c = map;
        this.f10985d = map2;
        this.f10988g = jVar;
        this.f10986e = map3;
        this.f10987f = list2;
    }

    public i6.e t(long j10) {
        return (i6.e) this.f10989h.e(j10);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("EffectiveAnimationComposition:\n");
        Iterator it = this.f10990i.iterator();
        while (it.hasNext()) {
            sb.append(((i6.e) it.next()).y("\t"));
        }
        return sb.toString();
    }

    public void u(boolean z10) {
        this.f10995n = z10;
    }

    public void v(boolean z10) {
        this.f10982a.b(z10);
    }
}
