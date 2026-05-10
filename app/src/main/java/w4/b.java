package w4;

import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class b implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.internal.c f16022a;

    private static final class a extends v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final v f16023a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.gson.internal.i f16024b;

        public a(com.google.gson.d dVar, Type type, v vVar, com.google.gson.internal.i iVar) {
            this.f16023a = new n(dVar, vVar, type);
            this.f16024b = iVar;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Collection b(a5.a aVar) throws IOException {
            if (aVar.L0() == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            Collection collection = (Collection) this.f16024b.a();
            aVar.c();
            while (aVar.X()) {
                collection.add(this.f16023a.b(aVar));
            }
            aVar.B();
            return collection;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(a5.c cVar, Collection collection) throws IOException {
            if (collection == null) {
                cVar.q0();
                return;
            }
            cVar.k();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                this.f16023a.d(cVar, it.next());
            }
            cVar.B();
        }
    }

    public b(com.google.gson.internal.c cVar) {
        this.f16022a = cVar;
    }

    @Override // com.google.gson.w
    public v a(com.google.gson.d dVar, TypeToken typeToken) {
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type typeH = com.google.gson.internal.b.h(type, rawType);
        return new a(dVar, typeH, dVar.o(TypeToken.get(typeH)), this.f16022a.b(typeToken));
    }
}
