package com.google.gson.internal;

import androidx.appcompat.app.t;
import com.google.gson.reflect.TypeToken;
import com.google.gson.s;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f10701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f10702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f10703c;

    class a implements com.google.gson.internal.i {
        a() {
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            return new TreeSet();
        }
    }

    class b implements com.google.gson.internal.i {
        b() {
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            return new LinkedHashSet();
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.c$c, reason: collision with other inner class name */
    class C0120c implements com.google.gson.internal.i {
        C0120c() {
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            return new ArrayDeque();
        }
    }

    class d implements com.google.gson.internal.i {
        d() {
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            return new ArrayList();
        }
    }

    class e implements com.google.gson.internal.i {
        e() {
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            return new ConcurrentSkipListMap();
        }
    }

    class f implements com.google.gson.internal.i {
        f() {
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            return new ConcurrentHashMap();
        }
    }

    class g implements com.google.gson.internal.i {
        g() {
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            return new TreeMap();
        }
    }

    class h implements com.google.gson.internal.i {
        h() {
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            return new LinkedHashMap();
        }
    }

    class i implements com.google.gson.internal.i {
        i() {
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            return new com.google.gson.internal.h();
        }
    }

    class j implements com.google.gson.internal.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Class f10704a;

        j(Class cls) {
            this.f10704a = cls;
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            try {
                return com.google.gson.internal.n.INSTANCE.d(this.f10704a);
            } catch (Exception e10) {
                throw new RuntimeException("Unable to create instance of " + this.f10704a + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e10);
            }
        }
    }

    class k implements com.google.gson.internal.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f10706a;

        k(String str) {
            this.f10706a = str;
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            throw new com.google.gson.j(this.f10706a);
        }
    }

    class l implements com.google.gson.internal.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f10708a;

        l(String str) {
            this.f10708a = str;
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            throw new com.google.gson.j(this.f10708a);
        }
    }

    class m implements com.google.gson.internal.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f10710a;

        m(String str) {
            this.f10710a = str;
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            throw new com.google.gson.j(this.f10710a);
        }
    }

    class n implements com.google.gson.internal.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Type f10712a;

        n(Type type) {
            this.f10712a = type;
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            Type type = this.f10712a;
            if (!(type instanceof ParameterizedType)) {
                throw new com.google.gson.j("Invalid EnumSet type: " + this.f10712a.toString());
            }
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return EnumSet.noneOf((Class) type2);
            }
            throw new com.google.gson.j("Invalid EnumSet type: " + this.f10712a.toString());
        }
    }

    class o implements com.google.gson.internal.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Type f10713a;

        o(Type type) {
            this.f10713a = type;
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            Type type = this.f10713a;
            if (!(type instanceof ParameterizedType)) {
                throw new com.google.gson.j("Invalid EnumMap type: " + this.f10713a.toString());
            }
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return new EnumMap((Class) type2);
            }
            throw new com.google.gson.j("Invalid EnumMap type: " + this.f10713a.toString());
        }
    }

    class p implements com.google.gson.internal.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f10714a;

        p(String str) {
            this.f10714a = str;
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            throw new com.google.gson.j(this.f10714a);
        }
    }

    class q implements com.google.gson.internal.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f10715a;

        q(String str) {
            this.f10715a = str;
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            throw new com.google.gson.j(this.f10715a);
        }
    }

    class r implements com.google.gson.internal.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Constructor f10716a;

        r(Constructor constructor) {
            this.f10716a = constructor;
        }

        @Override // com.google.gson.internal.i
        public Object a() {
            try {
                return this.f10716a.newInstance(null);
            } catch (IllegalAccessException e10) {
                throw y4.a.e(e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Failed to invoke constructor '" + y4.a.c(this.f10716a) + "' with no args", e11);
            } catch (InvocationTargetException e12) {
                throw new RuntimeException("Failed to invoke constructor '" + y4.a.c(this.f10716a) + "' with no args", e12.getCause());
            }
        }
    }

    public c(Map map, boolean z10, List list) {
        this.f10701a = map;
        this.f10702b = z10;
        this.f10703c = list;
    }

    static String a(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: " + cls.getName();
        }
        if (!Modifier.isAbstract(modifiers)) {
            return null;
        }
        return "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName();
    }

    private static com.google.gson.internal.i c(Class cls, s sVar) {
        String strM;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(null);
            s sVar2 = s.ALLOW;
            if (sVar == sVar2 || (com.google.gson.internal.l.a(declaredConstructor, null) && (sVar != s.BLOCK_ALL || Modifier.isPublic(declaredConstructor.getModifiers())))) {
                return (sVar != sVar2 || (strM = y4.a.m(declaredConstructor)) == null) ? new r(declaredConstructor) : new q(strM);
            }
            return new p("Unable to invoke no-args constructor of " + cls + "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter.");
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private static com.google.gson.internal.i d(Type type, Class cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new a() : Set.class.isAssignableFrom(cls) ? new b() : Queue.class.isAssignableFrom(cls) ? new C0120c() : new d();
        }
        if (Map.class.isAssignableFrom(cls)) {
            return ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new e() : ConcurrentMap.class.isAssignableFrom(cls) ? new f() : SortedMap.class.isAssignableFrom(cls) ? new g() : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new i() : new h();
        }
        return null;
    }

    private static com.google.gson.internal.i e(Type type, Class cls) {
        if (EnumSet.class.isAssignableFrom(cls)) {
            return new n(type);
        }
        if (cls == EnumMap.class) {
            return new o(type);
        }
        return null;
    }

    private com.google.gson.internal.i f(Class cls) {
        if (this.f10702b) {
            return new j(cls);
        }
        return new k("Unable to create instance of " + cls + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.");
    }

    public com.google.gson.internal.i b(TypeToken typeToken) {
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        t.a(this.f10701a.get(type));
        t.a(this.f10701a.get(rawType));
        com.google.gson.internal.i iVarE = e(type, rawType);
        if (iVarE != null) {
            return iVarE;
        }
        s sVarB = com.google.gson.internal.l.b(this.f10703c, rawType);
        com.google.gson.internal.i iVarC = c(rawType, sVarB);
        if (iVarC != null) {
            return iVarC;
        }
        com.google.gson.internal.i iVarD = d(type, rawType);
        if (iVarD != null) {
            return iVarD;
        }
        String strA = a(rawType);
        if (strA != null) {
            return new l(strA);
        }
        if (sVarB == s.ALLOW) {
            return f(rawType);
        }
        return new m("Unable to create instance of " + rawType + "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection.");
    }

    public String toString() {
        return this.f10701a.toString();
    }
}
