package w4;

import com.google.gson.p;
import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import com.google.gson.w;

/* JADX INFO: loaded from: classes.dex */
public final class m extends l {

    /* JADX INFO: renamed from: a */
    private final com.google.gson.h f16084a;

    /* JADX INFO: renamed from: b */
    final com.google.gson.d f16085b;

    /* JADX INFO: renamed from: c */
    private final TypeToken f16086c;

    /* JADX INFO: renamed from: d */
    private final w f16087d;

    /* JADX INFO: renamed from: e */
    private final b f16088e;

    /* JADX INFO: renamed from: f */
    private final boolean f16089f;

    /* JADX INFO: renamed from: g */
    private volatile v f16090g;

    private final class b implements com.google.gson.g {
        private b() {
        }

        /* synthetic */ b(m mVar, a aVar) {
            this();
        }
    }

    private static final class c implements w {

        /* JADX INFO: renamed from: a */
        private final TypeToken f16092a;

        /* JADX INFO: renamed from: b */
        private final boolean f16093b;

        /* JADX INFO: renamed from: c */
        private final Class f16094c;

        /* JADX INFO: renamed from: f */
        private final com.google.gson.h f16095f;

        c(Object obj, TypeToken typeToken, boolean z10, Class cls) {
            com.google.gson.h hVar = obj instanceof com.google.gson.h ? (com.google.gson.h) obj : null;
            this.f16095f = hVar;
            com.google.gson.internal.a.a(hVar != null);
            this.f16092a = typeToken;
            this.f16093b = z10;
            this.f16094c = cls;
        }

        @Override // com.google.gson.w
        public v a(com.google.gson.d dVar, TypeToken typeToken) {
            TypeToken typeToken2 = this.f16092a;
            if (typeToken2 != null ? typeToken2.equals(typeToken) || (this.f16093b && this.f16092a.getType() == typeToken.getRawType()) : this.f16094c.isAssignableFrom(typeToken.getRawType())) {
                return new m(null, this.f16095f, dVar, typeToken, this);
            }
            return null;
        }
    }

    public m(p pVar, com.google.gson.h hVar, com.google.gson.d dVar, TypeToken typeToken, w wVar, boolean z10) {
        this.f16088e = new b();
        this.f16084a = hVar;
        this.f16085b = dVar;
        this.f16086c = typeToken;
        this.f16087d = wVar;
        this.f16089f = z10;
    }

    private v f() {
        v vVar = this.f16090g;
        if (vVar != null) {
            return vVar;
        }
        v vVarQ = this.f16085b.q(this.f16087d, this.f16086c);
        this.f16090g = vVarQ;
        return vVarQ;
    }

    public static w g(TypeToken typeToken, Object obj) {
        return new c(obj, typeToken, typeToken.getType() == typeToken.getRawType(), null);
    }

    @Override // com.google.gson.v
    public Object b(a5.a aVar) {
        if (this.f16084a == null) {
            return f().b(aVar);
        }
        com.google.gson.i iVarA = com.google.gson.internal.m.a(aVar);
        if (this.f16089f && iVarA.j()) {
            return null;
        }
        return this.f16084a.deserialize(iVarA, this.f16086c.getType(), this.f16088e);
    }

    @Override // com.google.gson.v
    public void d(a5.c cVar, Object obj) {
        f().d(cVar, obj);
    }

    @Override // w4.l
    public v e() {
        return f();
    }

    public m(p pVar, com.google.gson.h hVar, com.google.gson.d dVar, TypeToken typeToken, w wVar) {
        this(pVar, hVar, dVar, typeToken, wVar, true);
    }
}
