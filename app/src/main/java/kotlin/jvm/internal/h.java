package kotlin.jvm.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.j0;
import kotlinx.serialization.internal.CollectionDescriptorsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements c9.c, g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f13072b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f13073c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final HashMap f13074f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final HashMap f13075h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final HashMap f13076i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Map f13077j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f13078a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(Class jClass) {
            String str;
            r.e(jClass, "jClass");
            String str2 = null;
            if (jClass.isAnonymousClass() || jClass.isLocalClass()) {
                return null;
            }
            if (!jClass.isArray()) {
                String str3 = (String) h.f13076i.get(jClass.getName());
                return str3 == null ? jClass.getCanonicalName() : str3;
            }
            Class<?> componentType = jClass.getComponentType();
            if (componentType.isPrimitive() && (str = (String) h.f13076i.get(componentType.getName())) != null) {
                str2 = str + "Array";
            }
            return str2 == null ? CollectionDescriptorsKt.ARRAY_NAME : str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
        
            if (r1 == null) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.String b(java.lang.Class r6) {
            /*
                r5 = this;
                java.lang.String r5 = "jClass"
                kotlin.jvm.internal.r.e(r6, r5)
                boolean r5 = r6.isAnonymousClass()
                r0 = 0
                if (r5 == 0) goto Le
                goto Lb3
            Le:
                boolean r5 = r6.isLocalClass()
                if (r5 == 0) goto L6a
                java.lang.String r5 = r6.getSimpleName()
                java.lang.reflect.Method r1 = r6.getEnclosingMethod()
                r2 = 2
                r3 = 36
                if (r1 == 0) goto L41
                kotlin.jvm.internal.r.b(r5)
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                java.lang.String r1 = r1.getName()
                r4.append(r1)
                r4.append(r3)
                java.lang.String r1 = r4.toString()
                java.lang.String r1 = kotlin.text.r.F0(r5, r1, r0, r2, r0)
                if (r1 != 0) goto L3e
                goto L41
            L3e:
                r0 = r1
                goto Lb3
            L41:
                java.lang.reflect.Constructor r6 = r6.getEnclosingConstructor()
                if (r6 == 0) goto L62
                kotlin.jvm.internal.r.b(r5)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r6 = r6.getName()
                r1.append(r6)
                r1.append(r3)
                java.lang.String r6 = r1.toString()
                java.lang.String r0 = kotlin.text.r.F0(r5, r6, r0, r2, r0)
                goto Lb3
            L62:
                kotlin.jvm.internal.r.b(r5)
                java.lang.String r0 = kotlin.text.r.E0(r5, r3, r0, r2, r0)
                goto Lb3
            L6a:
                boolean r5 = r6.isArray()
                if (r5 == 0) goto L9e
                java.lang.Class r5 = r6.getComponentType()
                boolean r6 = r5.isPrimitive()
                java.lang.String r1 = "Array"
                if (r6 == 0) goto L9b
                java.util.Map r6 = kotlin.jvm.internal.h.g()
                java.lang.String r5 = r5.getName()
                java.lang.Object r5 = r6.get(r5)
                java.lang.String r5 = (java.lang.String) r5
                if (r5 == 0) goto L9b
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>()
                r6.append(r5)
                r6.append(r1)
                java.lang.String r0 = r6.toString()
            L9b:
                if (r0 != 0) goto Lb3
                goto L3e
            L9e:
                java.util.Map r5 = kotlin.jvm.internal.h.g()
                java.lang.String r0 = r6.getName()
                java.lang.Object r5 = r5.get(r0)
                r0 = r5
                java.lang.String r0 = (java.lang.String) r0
                if (r0 != 0) goto Lb3
                java.lang.String r0 = r6.getSimpleName()
            Lb3:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.h.a.b(java.lang.Class):java.lang.String");
        }

        public final boolean c(Object obj, Class jClass) {
            r.e(jClass, "jClass");
            Map map = h.f13073c;
            r.c(map, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
            Integer num = (Integer) map.get(jClass);
            if (num != null) {
                return i0.i(obj, num.intValue());
            }
            if (jClass.isPrimitive()) {
                jClass = v8.a.b(v8.a.c(jClass));
            }
            return jClass.isInstance(obj);
        }

        private a() {
        }
    }

    static {
        List listK = kotlin.collections.o.k(w8.a.class, w8.l.class, w8.p.class, w8.q.class, w8.r.class, w8.s.class, w8.t.class, w8.u.class, w8.v.class, w8.w.class, w8.b.class, w8.c.class, w8.d.class, w8.e.class, w8.f.class, w8.g.class, w8.h.class, w8.i.class, w8.j.class, w8.k.class, w8.m.class, w8.n.class, w8.o.class);
        ArrayList arrayList = new ArrayList(kotlin.collections.o.r(listK, 10));
        int i10 = 0;
        for (Object obj : listK) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                kotlin.collections.o.q();
            }
            arrayList.add(n8.w.a((Class) obj, Integer.valueOf(i10)));
            i10 = i11;
        }
        f13073c = j0.o(arrayList);
        HashMap map = new HashMap();
        map.put("boolean", "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put("float", "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        f13074f = map;
        HashMap map2 = new HashMap();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        f13075h = map2;
        HashMap map3 = new HashMap();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        r.d(collectionValues, "<get-values>(...)");
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder();
            sb.append("kotlin.jvm.internal.");
            r.b(str);
            sb.append(kotlin.text.r.I0(str, '.', null, 2, null));
            sb.append("CompanionObject");
            n8.q qVarA = n8.w.a(sb.toString(), str + ".Companion");
            map3.put(qVarA.getFirst(), qVarA.getSecond());
        }
        for (Map.Entry entry : f13073c.entrySet()) {
            map3.put(((Class) entry.getKey()).getName(), "kotlin.Function" + ((Number) entry.getValue()).intValue());
        }
        f13076i = map3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(j0.e(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), kotlin.text.r.I0((String) entry2.getValue(), '.', null, 2, null));
        }
        f13077j = linkedHashMap;
    }

    public h(Class jClass) {
        r.e(jClass, "jClass");
        this.f13078a = jClass;
    }

    @Override // c9.c
    public String a() {
        return f13072b.a(d());
    }

    @Override // c9.c
    public boolean b(Object obj) {
        return f13072b.c(obj, d());
    }

    @Override // c9.c
    public String c() {
        return f13072b.b(d());
    }

    @Override // kotlin.jvm.internal.g
    public Class d() {
        return this.f13078a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof h) && r.a(v8.a.b(this), v8.a.b((c9.c) obj));
    }

    @Override // c9.c
    public int hashCode() {
        return v8.a.b(this).hashCode();
    }

    public String toString() {
        return d().toString() + " (Kotlin reflection is not available)";
    }
}
