package w4;

import com.google.gson.q;
import com.google.gson.reflect.TypeToken;
import com.google.gson.s;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class k implements w {

    /* JADX INFO: renamed from: a */
    private final com.google.gson.internal.c f16059a;

    /* JADX INFO: renamed from: b */
    private final com.google.gson.c f16060b;

    /* JADX INFO: renamed from: c */
    private final com.google.gson.internal.d f16061c;

    /* JADX INFO: renamed from: f */
    private final w4.e f16062f;

    /* JADX INFO: renamed from: h */
    private final List f16063h;

    class a extends c {

        /* JADX INFO: renamed from: f */
        final /* synthetic */ boolean f16064f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ Method f16065g;

        /* JADX INFO: renamed from: h */
        final /* synthetic */ boolean f16066h;

        /* JADX INFO: renamed from: i */
        final /* synthetic */ v f16067i;

        /* JADX INFO: renamed from: j */
        final /* synthetic */ com.google.gson.d f16068j;

        /* JADX INFO: renamed from: k */
        final /* synthetic */ TypeToken f16069k;

        /* JADX INFO: renamed from: l */
        final /* synthetic */ boolean f16070l;

        /* JADX INFO: renamed from: m */
        final /* synthetic */ boolean f16071m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Field field, boolean z10, boolean z11, boolean z12, Method method, boolean z13, v vVar, com.google.gson.d dVar, TypeToken typeToken, boolean z14, boolean z15) {
            super(str, field, z10, z11);
            this.f16064f = z12;
            this.f16065g = method;
            this.f16066h = z13;
            this.f16067i = vVar;
            this.f16068j = dVar;
            this.f16069k = typeToken;
            this.f16070l = z14;
            this.f16071m = z15;
        }

        @Override // w4.k.c
        void a(a5.a aVar, int i10, Object[] objArr) {
            Object objB = this.f16067i.b(aVar);
            if (objB != null || !this.f16070l) {
                objArr[i10] = objB;
                return;
            }
            throw new com.google.gson.m("null is not allowed as value for record component '" + this.f16076c + "' of primitive type; at path " + aVar.a());
        }

        @Override // w4.k.c
        void b(a5.a aVar, Object obj) throws IllegalAccessException {
            Object objB = this.f16067i.b(aVar);
            if (objB == null && this.f16070l) {
                return;
            }
            if (this.f16064f) {
                k.c(obj, this.f16075b);
            } else if (this.f16071m) {
                throw new com.google.gson.j("Cannot set value of 'static final' " + y4.a.g(this.f16075b, false));
            }
            this.f16075b.set(obj, objB);
        }

        @Override // w4.k.c
        void c(a5.c cVar, Object obj) throws IllegalAccessException {
            Object objInvoke;
            if (this.f16077d) {
                if (this.f16064f) {
                    Method method = this.f16065g;
                    if (method == null) {
                        k.c(obj, this.f16075b);
                    } else {
                        k.c(obj, method);
                    }
                }
                Method method2 = this.f16065g;
                if (method2 != null) {
                    try {
                        objInvoke = method2.invoke(obj, null);
                    } catch (InvocationTargetException e10) {
                        throw new com.google.gson.j("Accessor " + y4.a.g(this.f16065g, false) + " threw exception", e10.getCause());
                    }
                } else {
                    objInvoke = this.f16075b.get(obj);
                }
                if (objInvoke == obj) {
                    return;
                }
                cVar.a0(this.f16074a);
                (this.f16066h ? this.f16067i : new n(this.f16068j, this.f16067i, this.f16069k.getType())).d(cVar, objInvoke);
            }
        }
    }

    public static abstract class b extends v {

        /* JADX INFO: renamed from: a */
        final Map f16073a;

        b(Map map) {
            this.f16073a = map;
        }

        @Override // com.google.gson.v
        public Object b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            Object objE = e();
            try {
                aVar.i();
                while (aVar.X()) {
                    c cVar = (c) this.f16073a.get(aVar.F0());
                    if (cVar == null || !cVar.f16078e) {
                        aVar.V0();
                    } else {
                        g(objE, aVar, cVar);
                    }
                }
                aVar.D();
                return f(objE);
            } catch (IllegalAccessException e10) {
                throw y4.a.e(e10);
            } catch (IllegalStateException e11) {
                throw new q(e11);
            }
        }

        @Override // com.google.gson.v
        public void d(a5.c cVar, Object obj) throws IOException {
            if (obj == null) {
                cVar.q0();
                return;
            }
            cVar.v();
            try {
                Iterator it = this.f16073a.values().iterator();
                while (it.hasNext()) {
                    ((c) it.next()).c(cVar, obj);
                }
                cVar.D();
            } catch (IllegalAccessException e10) {
                throw y4.a.e(e10);
            }
        }

        abstract Object e();

        abstract Object f(Object obj);

        abstract void g(Object obj, a5.a aVar, c cVar);
    }

    static abstract class c {

        /* JADX INFO: renamed from: a */
        final String f16074a;

        /* JADX INFO: renamed from: b */
        final Field f16075b;

        /* JADX INFO: renamed from: c */
        final String f16076c;

        /* JADX INFO: renamed from: d */
        final boolean f16077d;

        /* JADX INFO: renamed from: e */
        final boolean f16078e;

        protected c(String str, Field field, boolean z10, boolean z11) {
            this.f16074a = str;
            this.f16075b = field;
            this.f16076c = field.getName();
            this.f16077d = z10;
            this.f16078e = z11;
        }

        abstract void a(a5.a aVar, int i10, Object[] objArr);

        abstract void b(a5.a aVar, Object obj);

        abstract void c(a5.c cVar, Object obj);
    }

    private static final class d extends b {

        /* JADX INFO: renamed from: b */
        private final com.google.gson.internal.i f16079b;

        d(com.google.gson.internal.i iVar, Map map) {
            super(map);
            this.f16079b = iVar;
        }

        @Override // w4.k.b
        Object e() {
            return this.f16079b.a();
        }

        @Override // w4.k.b
        Object f(Object obj) {
            return obj;
        }

        @Override // w4.k.b
        void g(Object obj, a5.a aVar, c cVar) {
            cVar.b(aVar, obj);
        }
    }

    private static final class e extends b {

        /* JADX INFO: renamed from: e */
        static final Map f16080e = j();

        /* JADX INFO: renamed from: b */
        private final Constructor f16081b;

        /* JADX INFO: renamed from: c */
        private final Object[] f16082c;

        /* JADX INFO: renamed from: d */
        private final Map f16083d;

        e(Class cls, Map map, boolean z10) {
            super(map);
            this.f16083d = new HashMap();
            Constructor constructorI = y4.a.i(cls);
            this.f16081b = constructorI;
            if (z10) {
                k.c(null, constructorI);
            } else {
                y4.a.l(constructorI);
            }
            String[] strArrJ = y4.a.j(cls);
            for (int i10 = 0; i10 < strArrJ.length; i10++) {
                this.f16083d.put(strArrJ[i10], Integer.valueOf(i10));
            }
            Class<?>[] parameterTypes = this.f16081b.getParameterTypes();
            this.f16082c = new Object[parameterTypes.length];
            for (int i11 = 0; i11 < parameterTypes.length; i11++) {
                this.f16082c[i11] = f16080e.get(parameterTypes[i11]);
            }
        }

        private static Map j() {
            HashMap map = new HashMap();
            map.put(Byte.TYPE, (byte) 0);
            map.put(Short.TYPE, (short) 0);
            map.put(Integer.TYPE, 0);
            map.put(Long.TYPE, 0L);
            map.put(Float.TYPE, Float.valueOf(0.0f));
            map.put(Double.TYPE, Double.valueOf(0.0d));
            map.put(Character.TYPE, (char) 0);
            map.put(Boolean.TYPE, Boolean.FALSE);
            return map;
        }

        @Override // w4.k.b
        /* JADX INFO: renamed from: h */
        public Object[] e() {
            return (Object[]) this.f16082c.clone();
        }

        @Override // w4.k.b
        /* JADX INFO: renamed from: i */
        public Object f(Object[] objArr) {
            try {
                return this.f16081b.newInstance(objArr);
            } catch (IllegalAccessException e10) {
                throw y4.a.e(e10);
            } catch (IllegalArgumentException | InstantiationException e11) {
                throw new RuntimeException("Failed to invoke constructor '" + y4.a.c(this.f16081b) + "' with args " + Arrays.toString(objArr), e11);
            } catch (InvocationTargetException e12) {
                throw new RuntimeException("Failed to invoke constructor '" + y4.a.c(this.f16081b) + "' with args " + Arrays.toString(objArr), e12.getCause());
            }
        }

        @Override // w4.k.b
        /* JADX INFO: renamed from: k */
        public void g(Object[] objArr, a5.a aVar, c cVar) {
            Integer num = (Integer) this.f16083d.get(cVar.f16076c);
            if (num != null) {
                cVar.a(aVar, num.intValue(), objArr);
                return;
            }
            throw new IllegalStateException("Could not find the index in the constructor '" + y4.a.c(this.f16081b) + "' for field with name '" + cVar.f16076c + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
        }
    }

    public k(com.google.gson.internal.c cVar, com.google.gson.c cVar2, com.google.gson.internal.d dVar, w4.e eVar, List list) {
        this.f16059a = cVar;
        this.f16060b = cVar2;
        this.f16061c = dVar;
        this.f16062f = eVar;
        this.f16063h = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(Object obj, AccessibleObject accessibleObject) {
        if (Modifier.isStatic(((Member) accessibleObject).getModifiers())) {
            obj = null;
        }
        if (com.google.gson.internal.l.a(accessibleObject, obj)) {
            return;
        }
        throw new com.google.gson.j(y4.a.g(accessibleObject, true) + " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.");
    }

    private c d(com.google.gson.d dVar, Field field, Method method, String str, TypeToken typeToken, boolean z10, boolean z11, boolean z12) {
        boolean zA = com.google.gson.internal.k.a(typeToken.getRawType());
        int modifiers = field.getModifiers();
        boolean z13 = Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers);
        v4.b bVar = (v4.b) field.getAnnotation(v4.b.class);
        v vVarB = bVar != null ? this.f16062f.b(this.f16059a, dVar, typeToken, bVar) : null;
        boolean z14 = vVarB != null;
        if (vVarB == null) {
            vVarB = dVar.o(typeToken);
        }
        return new a(str, field, z10, z11, z12, method, z14, vVarB, dVar, typeToken, zA, z13);
    }

    private Map e(com.google.gson.d dVar, TypeToken typeToken, Class cls, boolean z10, boolean z11) {
        boolean z12;
        Method method;
        int i10;
        int i11;
        boolean z13;
        k kVar = this;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        TypeToken typeToken2 = typeToken;
        boolean z14 = z10;
        Class rawType = cls;
        while (rawType != Object.class) {
            Field[] declaredFields = rawType.getDeclaredFields();
            boolean z15 = true;
            boolean z16 = false;
            if (rawType != cls && declaredFields.length > 0) {
                s sVarB = com.google.gson.internal.l.b(kVar.f16063h, rawType);
                if (sVarB == s.BLOCK_ALL) {
                    throw new com.google.gson.j("ReflectionAccessFilter does not permit using reflection for " + rawType + " (supertype of " + cls + "). Register a TypeAdapter for this type or adjust the access filter.");
                }
                z14 = sVarB == s.BLOCK_INACCESSIBLE;
            }
            boolean z17 = z14;
            int length = declaredFields.length;
            int i12 = 0;
            while (i12 < length) {
                Field field = declaredFields[i12];
                boolean zG = kVar.g(field, z15);
                boolean zG2 = kVar.g(field, z16);
                if (zG || zG2) {
                    c cVar = null;
                    if (!z11) {
                        z12 = zG2;
                        method = null;
                    } else if (Modifier.isStatic(field.getModifiers())) {
                        method = null;
                        z12 = z16;
                    } else {
                        Method methodH = y4.a.h(rawType, field);
                        if (!z17) {
                            y4.a.l(methodH);
                        }
                        if (methodH.getAnnotation(v4.c.class) != null && field.getAnnotation(v4.c.class) == null) {
                            throw new com.google.gson.j("@SerializedName on " + y4.a.g(methodH, z16) + " is not supported");
                        }
                        z12 = zG2;
                        method = methodH;
                    }
                    if (!z17 && method == null) {
                        y4.a.l(field);
                    }
                    Type typeO = com.google.gson.internal.b.o(typeToken2.getType(), rawType, field.getGenericType());
                    List listF = kVar.f(field);
                    int size = listF.size();
                    int i13 = z16;
                    while (i13 < size) {
                        String str = (String) listF.get(i13);
                        boolean z18 = i13 != 0 ? z16 : zG;
                        int i14 = i13;
                        c cVar2 = cVar;
                        int i15 = size;
                        List list = listF;
                        Field field2 = field;
                        int i16 = i12;
                        int i17 = length;
                        boolean z19 = z16;
                        cVar = cVar2 == null ? (c) linkedHashMap.put(str, d(dVar, field, method, str, TypeToken.get(typeO), z18, z12, z17)) : cVar2;
                        i13 = i14 + 1;
                        zG = z18;
                        i12 = i16;
                        size = i15;
                        listF = list;
                        field = field2;
                        length = i17;
                        z16 = z19;
                    }
                    c cVar3 = cVar;
                    Field field3 = field;
                    i10 = i12;
                    i11 = length;
                    z13 = z16;
                    if (cVar3 != null) {
                        throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + cVar3.f16074a + "'; conflict is caused by fields " + y4.a.f(cVar3.f16075b) + " and " + y4.a.f(field3));
                    }
                } else {
                    i10 = i12;
                    i11 = length;
                    z13 = z16;
                }
                i12 = i10 + 1;
                z15 = true;
                kVar = this;
                length = i11;
                z16 = z13;
            }
            typeToken2 = TypeToken.get(com.google.gson.internal.b.o(typeToken2.getType(), rawType, rawType.getGenericSuperclass()));
            rawType = typeToken2.getRawType();
            kVar = this;
            z14 = z17;
        }
        return linkedHashMap;
    }

    private List f(Field field) {
        v4.c cVar = (v4.c) field.getAnnotation(v4.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f16060b.translateName(field));
        }
        String strValue = cVar.value();
        String[] strArrAlternate = cVar.alternate();
        if (strArrAlternate.length == 0) {
            return Collections.singletonList(strValue);
        }
        ArrayList arrayList = new ArrayList(strArrAlternate.length + 1);
        arrayList.add(strValue);
        Collections.addAll(arrayList, strArrAlternate);
        return arrayList;
    }

    private boolean g(Field field, boolean z10) {
        return (this.f16061c.d(field.getType(), z10) || this.f16061c.g(field, z10)) ? false : true;
    }

    @Override // com.google.gson.w
    public v a(com.google.gson.d dVar, TypeToken typeToken) {
        Class rawType = typeToken.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        s sVarB = com.google.gson.internal.l.b(this.f16063h, rawType);
        if (sVarB != s.BLOCK_ALL) {
            boolean z10 = sVarB == s.BLOCK_INACCESSIBLE;
            return y4.a.k(rawType) ? new e(rawType, e(dVar, typeToken, rawType, z10, true), z10) : new d(this.f16059a.b(typeToken), e(dVar, typeToken, rawType, z10, false));
        }
        throw new com.google.gson.j("ReflectionAccessFilter does not permit using reflection for " + rawType + ". Register a TypeAdapter for this type or adjust the access filter.");
    }
}
