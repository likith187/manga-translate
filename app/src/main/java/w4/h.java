package w4;

import com.google.gson.q;
import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class h implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.internal.c f16044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f16045b;

    private final class a extends v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final v f16046a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final v f16047b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.google.gson.internal.i f16048c;

        public a(com.google.gson.d dVar, Type type, v vVar, Type type2, v vVar2, com.google.gson.internal.i iVar) {
            this.f16046a = new n(dVar, vVar, type);
            this.f16047b = new n(dVar, vVar2, type2);
            this.f16048c = iVar;
        }

        private String e(com.google.gson.i iVar) {
            if (!iVar.l()) {
                if (iVar.j()) {
                    return AbstractJsonLexerKt.NULL;
                }
                throw new AssertionError();
            }
            com.google.gson.o oVarF = iVar.f();
            if (oVarF.p()) {
                return String.valueOf(oVarF.m());
            }
            if (oVarF.n()) {
                return Boolean.toString(oVarF.a());
            }
            if (oVarF.q()) {
                return oVarF.h();
            }
            throw new AssertionError();
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Map b(a5.a aVar) throws IOException {
            a5.b bVarL0 = aVar.L0();
            if (bVarL0 == a5.b.NULL) {
                aVar.H0();
                return null;
            }
            Map map = (Map) this.f16048c.a();
            if (bVarL0 == a5.b.BEGIN_ARRAY) {
                aVar.c();
                while (aVar.X()) {
                    aVar.c();
                    Object objB = this.f16046a.b(aVar);
                    if (map.put(objB, this.f16047b.b(aVar)) != null) {
                        throw new q("duplicate key: " + objB);
                    }
                    aVar.B();
                }
                aVar.B();
            } else {
                aVar.i();
                while (aVar.X()) {
                    com.google.gson.internal.f.f10731a.a(aVar);
                    Object objB2 = this.f16046a.b(aVar);
                    if (map.put(objB2, this.f16047b.b(aVar)) != null) {
                        throw new q("duplicate key: " + objB2);
                    }
                }
                aVar.D();
            }
            return map;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void d(a5.c cVar, Map map) throws IOException {
            if (map == null) {
                cVar.q0();
                return;
            }
            if (!h.this.f16045b) {
                cVar.v();
                for (Map.Entry entry : map.entrySet()) {
                    cVar.a0(String.valueOf(entry.getKey()));
                    this.f16047b.d(cVar, entry.getValue());
                }
                cVar.D();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i10 = 0;
            boolean z10 = false;
            for (Map.Entry entry2 : map.entrySet()) {
                com.google.gson.i iVarC = this.f16046a.c(entry2.getKey());
                arrayList.add(iVarC);
                arrayList2.add(entry2.getValue());
                z10 |= iVarC.i() || iVarC.k();
            }
            if (!z10) {
                cVar.v();
                int size = arrayList.size();
                while (i10 < size) {
                    cVar.a0(e((com.google.gson.i) arrayList.get(i10)));
                    this.f16047b.d(cVar, arrayList2.get(i10));
                    i10++;
                }
                cVar.D();
                return;
            }
            cVar.k();
            int size2 = arrayList.size();
            while (i10 < size2) {
                cVar.k();
                com.google.gson.internal.m.b((com.google.gson.i) arrayList.get(i10), cVar);
                this.f16047b.d(cVar, arrayList2.get(i10));
                cVar.B();
                i10++;
            }
            cVar.B();
        }
    }

    public h(com.google.gson.internal.c cVar, boolean z10) {
        this.f16044a = cVar;
        this.f16045b = z10;
    }

    private v b(com.google.gson.d dVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? o.f16104f : dVar.o(TypeToken.get(type));
    }

    @Override // com.google.gson.w
    public v a(com.google.gson.d dVar, TypeToken typeToken) {
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        if (!Map.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type[] typeArrJ = com.google.gson.internal.b.j(type, rawType);
        return new a(dVar, typeArrJ[0], b(dVar, typeArrJ[0]), typeArrJ[1], dVar.o(TypeToken.get(typeArrJ[1])), this.f16044a.b(typeToken));
    }
}
