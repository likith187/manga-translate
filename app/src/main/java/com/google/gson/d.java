package com.google.gson;

import com.google.gson.reflect.TypeToken;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    static final com.google.gson.c A = com.google.gson.b.IDENTITY;
    static final u B = t.DOUBLE;
    static final u C = t.LAZILY_PARSED_NUMBER;

    /* JADX INFO: renamed from: z */
    static final String f10648z = null;

    /* JADX INFO: renamed from: a */
    private final ThreadLocal f10649a;

    /* JADX INFO: renamed from: b */
    private final ConcurrentMap f10650b;

    /* JADX INFO: renamed from: c */
    private final com.google.gson.internal.c f10651c;

    /* JADX INFO: renamed from: d */
    private final w4.e f10652d;

    /* JADX INFO: renamed from: e */
    final List f10653e;

    /* JADX INFO: renamed from: f */
    final com.google.gson.internal.d f10654f;

    /* JADX INFO: renamed from: g */
    final com.google.gson.c f10655g;

    /* JADX INFO: renamed from: h */
    final Map f10656h;

    /* JADX INFO: renamed from: i */
    final boolean f10657i;

    /* JADX INFO: renamed from: j */
    final boolean f10658j;

    /* JADX INFO: renamed from: k */
    final boolean f10659k;

    /* JADX INFO: renamed from: l */
    final boolean f10660l;

    /* JADX INFO: renamed from: m */
    final boolean f10661m;

    /* JADX INFO: renamed from: n */
    final boolean f10662n;

    /* JADX INFO: renamed from: o */
    final boolean f10663o;

    /* JADX INFO: renamed from: p */
    final boolean f10664p;

    /* JADX INFO: renamed from: q */
    final String f10665q;

    /* JADX INFO: renamed from: r */
    final int f10666r;

    /* JADX INFO: renamed from: s */
    final int f10667s;

    /* JADX INFO: renamed from: t */
    final r f10668t;

    /* JADX INFO: renamed from: u */
    final List f10669u;

    /* JADX INFO: renamed from: v */
    final List f10670v;

    /* JADX INFO: renamed from: w */
    final u f10671w;

    /* JADX INFO: renamed from: x */
    final u f10672x;

    /* JADX INFO: renamed from: y */
    final List f10673y;

    class a extends v {
        a() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Double b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return Double.valueOf(aVar.x0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.q0();
                return;
            }
            double dDoubleValue = number.doubleValue();
            d.d(dDoubleValue);
            cVar.K0(dDoubleValue);
        }
    }

    class b extends v {
        b() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Float b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return Float.valueOf((float) aVar.x0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.q0();
                return;
            }
            float fFloatValue = number.floatValue();
            d.d(fFloatValue);
            if (!(number instanceof Float)) {
                number = Float.valueOf(fFloatValue);
            }
            cVar.N0(number);
        }
    }

    class c extends v {
        c() {
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public Number b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return Long.valueOf(aVar.E0());
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.q0();
            } else {
                cVar.O0(number.toString());
            }
        }
    }

    /* JADX INFO: renamed from: com.google.gson.d$d */
    class C0118d extends v {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ v f10676a;

        C0118d(v vVar) {
            this.f10676a = vVar;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public AtomicLong b(a5.a aVar) {
            return new AtomicLong(((Number) this.f10676a.b(aVar)).longValue());
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, AtomicLong atomicLong) {
            this.f10676a.d(cVar, Long.valueOf(atomicLong.get()));
        }
    }

    class e extends v {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ v f10677a;

        e(v vVar) {
            this.f10677a = vVar;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e */
        public AtomicLongArray b(a5.a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.c();
            while (aVar.X()) {
                arrayList.add(Long.valueOf(((Number) this.f10677a.b(aVar)).longValue()));
            }
            aVar.B();
            int size = arrayList.size();
            AtomicLongArray atomicLongArray = new AtomicLongArray(size);
            for (int i10 = 0; i10 < size; i10++) {
                atomicLongArray.set(i10, ((Long) arrayList.get(i10)).longValue());
            }
            return atomicLongArray;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f */
        public void d(a5.c cVar, AtomicLongArray atomicLongArray) throws IOException {
            cVar.k();
            int length = atomicLongArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                this.f10677a.d(cVar, Long.valueOf(atomicLongArray.get(i10)));
            }
            cVar.B();
        }
    }

    static class f extends w4.l {

        /* JADX INFO: renamed from: a */
        private v f10678a = null;

        f() {
        }

        private v f() {
            v vVar = this.f10678a;
            if (vVar != null) {
                return vVar;
            }
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }

        @Override // com.google.gson.v
        public Object b(a5.a aVar) {
            return f().b(aVar);
        }

        @Override // com.google.gson.v
        public void d(a5.c cVar, Object obj) {
            f().d(cVar, obj);
        }

        @Override // w4.l
        public v e() {
            return f();
        }

        public void g(v vVar) {
            if (this.f10678a != null) {
                throw new AssertionError("Delegate is already set");
            }
            this.f10678a = vVar;
        }
    }

    public d() {
        this(com.google.gson.internal.d.f10717j, A, Collections.emptyMap(), false, false, false, true, false, false, false, true, r.DEFAULT, f10648z, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), B, C, Collections.emptyList());
    }

    private static void a(Object obj, a5.a aVar) {
        if (obj != null) {
            try {
                if (aVar.L0() == a5.b.END_DOCUMENT) {
                } else {
                    throw new q("JSON document was not fully consumed.");
                }
            } catch (a5.d e10) {
                throw new q(e10);
            } catch (IOException e11) {
                throw new j(e11);
            }
        }
    }

    private static v b(v vVar) {
        return new C0118d(vVar).a();
    }

    private static v c(v vVar) {
        return new e(vVar).a();
    }

    static void d(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private v e(boolean z10) {
        return z10 ? w4.o.f16120v : new a();
    }

    private v f(boolean z10) {
        return z10 ? w4.o.f16119u : new b();
    }

    private static v r(r rVar) {
        return rVar == r.DEFAULT ? w4.o.f16118t : new c();
    }

    public void A(Object obj, Type type, Appendable appendable) {
        try {
            z(obj, type, t(com.google.gson.internal.m.c(appendable)));
        } catch (IOException e10) {
            throw new j(e10);
        }
    }

    public i B(Object obj) {
        return obj == null ? k.INSTANCE : C(obj, obj.getClass());
    }

    public i C(Object obj, Type type) {
        w4.g gVar = new w4.g();
        z(obj, type, gVar);
        return gVar.R0();
    }

    public Object g(a5.a aVar, TypeToken typeToken) {
        boolean zA0 = aVar.a0();
        boolean z10 = true;
        aVar.Q0(true);
        try {
            try {
                try {
                    aVar.L0();
                    z10 = false;
                    return o(typeToken).b(aVar);
                } catch (EOFException e10) {
                    if (!z10) {
                        throw new q(e10);
                    }
                    aVar.Q0(zA0);
                    return null;
                } catch (IOException e11) {
                    throw new q(e11);
                }
            } catch (AssertionError e12) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e12.getMessage(), e12);
            } catch (IllegalStateException e13) {
                throw new q(e13);
            }
        } finally {
            aVar.Q0(zA0);
        }
    }

    public Object h(i iVar, TypeToken typeToken) {
        if (iVar == null) {
            return null;
        }
        return g(new w4.f(iVar), typeToken);
    }

    public Object i(i iVar, Type type) {
        return h(iVar, TypeToken.get(type));
    }

    public Object j(Reader reader, TypeToken typeToken) {
        a5.a aVarS = s(reader);
        Object objG = g(aVarS, typeToken);
        a(objG, aVarS);
        return objG;
    }

    public Object k(Reader reader, Class cls) {
        return com.google.gson.internal.k.b(cls).cast(j(reader, TypeToken.get(cls)));
    }

    public Object l(String str, TypeToken typeToken) {
        if (str == null) {
            return null;
        }
        return j(new StringReader(str), typeToken);
    }

    public Object m(String str, Class cls) {
        return com.google.gson.internal.k.b(cls).cast(l(str, TypeToken.get(cls)));
    }

    public Object n(String str, Type type) {
        return l(str, TypeToken.get(type));
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0051, code lost:
    
        r2.g(r4);
        r0.put(r7, r4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.gson.v o(com.google.gson.reflect.TypeToken r7) {
        /*
            r6 = this;
            java.lang.String r0 = "type must not be null"
            java.util.Objects.requireNonNull(r7, r0)
            java.util.concurrent.ConcurrentMap r0 = r6.f10650b
            java.lang.Object r0 = r0.get(r7)
            com.google.gson.v r0 = (com.google.gson.v) r0
            if (r0 == 0) goto L10
            return r0
        L10:
            java.lang.ThreadLocal r0 = r6.f10649a
            java.lang.Object r0 = r0.get()
            java.util.Map r0 = (java.util.Map) r0
            if (r0 != 0) goto L26
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.lang.ThreadLocal r1 = r6.f10649a
            r1.set(r0)
            r1 = 1
            goto L30
        L26:
            java.lang.Object r1 = r0.get(r7)
            com.google.gson.v r1 = (com.google.gson.v) r1
            if (r1 == 0) goto L2f
            return r1
        L2f:
            r1 = 0
        L30:
            com.google.gson.d$f r2 = new com.google.gson.d$f     // Catch: java.lang.Throwable -> L58
            r2.<init>()     // Catch: java.lang.Throwable -> L58
            r0.put(r7, r2)     // Catch: java.lang.Throwable -> L58
            java.util.List r3 = r6.f10653e     // Catch: java.lang.Throwable -> L58
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L58
            r4 = 0
        L3f:
            boolean r5 = r3.hasNext()     // Catch: java.lang.Throwable -> L58
            if (r5 == 0) goto L5a
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L58
            com.google.gson.w r4 = (com.google.gson.w) r4     // Catch: java.lang.Throwable -> L58
            com.google.gson.v r4 = r4.a(r6, r7)     // Catch: java.lang.Throwable -> L58
            if (r4 == 0) goto L3f
            r2.g(r4)     // Catch: java.lang.Throwable -> L58
            r0.put(r7, r4)     // Catch: java.lang.Throwable -> L58
            goto L5a
        L58:
            r7 = move-exception
            goto L82
        L5a:
            if (r1 == 0) goto L61
            java.lang.ThreadLocal r2 = r6.f10649a
            r2.remove()
        L61:
            if (r4 == 0) goto L6b
            if (r1 == 0) goto L6a
            java.util.concurrent.ConcurrentMap r6 = r6.f10650b
            r6.putAll(r0)
        L6a:
            return r4
        L6b:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "GSON (2.10.1) cannot handle "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r6.<init>(r7)
            throw r6
        L82:
            if (r1 == 0) goto L89
            java.lang.ThreadLocal r6 = r6.f10649a
            r6.remove()
        L89:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.d.o(com.google.gson.reflect.TypeToken):com.google.gson.v");
    }

    public v p(Class cls) {
        return o(TypeToken.get(cls));
    }

    public v q(w wVar, TypeToken typeToken) {
        if (!this.f10653e.contains(wVar)) {
            wVar = this.f10652d;
        }
        boolean z10 = false;
        for (w wVar2 : this.f10653e) {
            if (z10) {
                v vVarA = wVar2.a(this, typeToken);
                if (vVarA != null) {
                    return vVarA;
                }
            } else if (wVar2 == wVar) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + typeToken);
    }

    public a5.a s(Reader reader) {
        a5.a aVar = new a5.a(reader);
        aVar.Q0(this.f10662n);
        return aVar;
    }

    public a5.c t(Writer writer) throws IOException {
        if (this.f10659k) {
            writer.write(")]}'\n");
        }
        a5.c cVar = new a5.c(writer);
        if (this.f10661m) {
            cVar.G0("  ");
        }
        cVar.F0(this.f10660l);
        cVar.H0(this.f10662n);
        cVar.I0(this.f10657i);
        return cVar;
    }

    public String toString() {
        return "{serializeNulls:" + this.f10657i + ",factories:" + this.f10653e + ",instanceCreators:" + this.f10651c + "}";
    }

    public String u(i iVar) {
        StringWriter stringWriter = new StringWriter();
        y(iVar, stringWriter);
        return stringWriter.toString();
    }

    public String v(Object obj) {
        return obj == null ? u(k.INSTANCE) : w(obj, obj.getClass());
    }

    public String w(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        A(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void x(i iVar, a5.c cVar) {
        boolean zN = cVar.N();
        cVar.H0(true);
        boolean zI = cVar.I();
        cVar.F0(this.f10660l);
        boolean zG = cVar.G();
        cVar.I0(this.f10657i);
        try {
            try {
                com.google.gson.internal.m.b(iVar, cVar);
            } catch (IOException e10) {
                throw new j(e10);
            } catch (AssertionError e11) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e11.getMessage(), e11);
            }
        } finally {
            cVar.H0(zN);
            cVar.F0(zI);
            cVar.I0(zG);
        }
    }

    public void y(i iVar, Appendable appendable) {
        try {
            x(iVar, t(com.google.gson.internal.m.c(appendable)));
        } catch (IOException e10) {
            throw new j(e10);
        }
    }

    public void z(Object obj, Type type, a5.c cVar) {
        v vVarO = o(TypeToken.get(type));
        boolean zN = cVar.N();
        cVar.H0(true);
        boolean zI = cVar.I();
        cVar.F0(this.f10660l);
        boolean zG = cVar.G();
        cVar.I0(this.f10657i);
        try {
            try {
                vVarO.d(cVar, obj);
            } catch (IOException e10) {
                throw new j(e10);
            } catch (AssertionError e11) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e11.getMessage(), e11);
            }
        } finally {
            cVar.H0(zN);
            cVar.F0(zI);
            cVar.I0(zG);
        }
    }

    d(com.google.gson.internal.d dVar, com.google.gson.c cVar, Map map, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, r rVar, String str, int i10, int i11, List list, List list2, List list3, u uVar, u uVar2, List list4) {
        this.f10649a = new ThreadLocal();
        this.f10650b = new ConcurrentHashMap();
        this.f10654f = dVar;
        this.f10655g = cVar;
        this.f10656h = map;
        com.google.gson.internal.c cVar2 = new com.google.gson.internal.c(map, z17, list4);
        this.f10651c = cVar2;
        this.f10657i = z10;
        this.f10658j = z11;
        this.f10659k = z12;
        this.f10660l = z13;
        this.f10661m = z14;
        this.f10662n = z15;
        this.f10663o = z16;
        this.f10664p = z17;
        this.f10668t = rVar;
        this.f10665q = str;
        this.f10666r = i10;
        this.f10667s = i11;
        this.f10669u = list;
        this.f10670v = list2;
        this.f10671w = uVar;
        this.f10672x = uVar2;
        this.f10673y = list4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(w4.o.W);
        arrayList.add(w4.j.e(uVar));
        arrayList.add(dVar);
        arrayList.addAll(list3);
        arrayList.add(w4.o.C);
        arrayList.add(w4.o.f16111m);
        arrayList.add(w4.o.f16105g);
        arrayList.add(w4.o.f16107i);
        arrayList.add(w4.o.f16109k);
        v vVarR = r(rVar);
        arrayList.add(w4.o.c(Long.TYPE, Long.class, vVarR));
        arrayList.add(w4.o.c(Double.TYPE, Double.class, e(z16)));
        arrayList.add(w4.o.c(Float.TYPE, Float.class, f(z16)));
        arrayList.add(w4.i.e(uVar2));
        arrayList.add(w4.o.f16113o);
        arrayList.add(w4.o.f16115q);
        arrayList.add(w4.o.b(AtomicLong.class, b(vVarR)));
        arrayList.add(w4.o.b(AtomicLongArray.class, c(vVarR)));
        arrayList.add(w4.o.f16117s);
        arrayList.add(w4.o.f16122x);
        arrayList.add(w4.o.E);
        arrayList.add(w4.o.G);
        arrayList.add(w4.o.b(BigDecimal.class, w4.o.f16124z));
        arrayList.add(w4.o.b(BigInteger.class, w4.o.A));
        arrayList.add(w4.o.b(com.google.gson.internal.g.class, w4.o.B));
        arrayList.add(w4.o.I);
        arrayList.add(w4.o.K);
        arrayList.add(w4.o.O);
        arrayList.add(w4.o.Q);
        arrayList.add(w4.o.U);
        arrayList.add(w4.o.M);
        arrayList.add(w4.o.f16102d);
        arrayList.add(w4.c.f16025b);
        arrayList.add(w4.o.S);
        if (z4.d.f16643a) {
            arrayList.add(z4.d.f16647e);
            arrayList.add(z4.d.f16646d);
            arrayList.add(z4.d.f16648f);
        }
        arrayList.add(w4.a.f16019c);
        arrayList.add(w4.o.f16100b);
        arrayList.add(new w4.b(cVar2));
        arrayList.add(new w4.h(cVar2, z11));
        w4.e eVar = new w4.e(cVar2);
        this.f10652d = eVar;
        arrayList.add(eVar);
        arrayList.add(w4.o.X);
        arrayList.add(new w4.k(cVar2, cVar, dVar, eVar, list4));
        this.f10653e = Collections.unmodifiableList(arrayList);
    }
}
