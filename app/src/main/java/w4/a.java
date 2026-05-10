package w4;

import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class a extends v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final w f16019c = new C0234a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f16020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f16021b;

    /* JADX INFO: renamed from: w4.a$a, reason: collision with other inner class name */
    class C0234a implements w {
        C0234a() {
        }

        @Override // com.google.gson.w
        public v a(com.google.gson.d dVar, TypeToken typeToken) {
            Type type = typeToken.getType();
            if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type typeG = com.google.gson.internal.b.g(type);
            return new a(dVar, dVar.o(TypeToken.get(typeG)), com.google.gson.internal.b.k(typeG));
        }
    }

    public a(com.google.gson.d dVar, v vVar, Class cls) {
        this.f16021b = new n(dVar, vVar, cls);
        this.f16020a = cls;
    }

    @Override // com.google.gson.v
    public Object b(a5.a aVar) throws IOException {
        if (aVar.L0() == a5.b.NULL) {
            aVar.H0();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.c();
        while (aVar.X()) {
            arrayList.add(this.f16021b.b(aVar));
        }
        aVar.B();
        int size = arrayList.size();
        if (!this.f16020a.isPrimitive()) {
            return arrayList.toArray((Object[]) Array.newInstance((Class<?>) this.f16020a, size));
        }
        Object objNewInstance = Array.newInstance((Class<?>) this.f16020a, size);
        for (int i10 = 0; i10 < size; i10++) {
            Array.set(objNewInstance, i10, arrayList.get(i10));
        }
        return objNewInstance;
    }

    @Override // com.google.gson.v
    public void d(a5.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.q0();
            return;
        }
        cVar.k();
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            this.f16021b.d(cVar, Array.get(obj, i10));
        }
        cVar.B();
    }
}
