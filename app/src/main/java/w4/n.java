package w4;

import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import w4.k;

/* JADX INFO: loaded from: classes.dex */
final class n extends v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.d f16096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f16097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f16098c;

    n(com.google.gson.d dVar, v vVar, Type type) {
        this.f16096a = dVar;
        this.f16097b = vVar;
        this.f16098c = type;
    }

    private static Type e(Type type, Object obj) {
        return obj != null ? ((type instanceof Class) || (type instanceof TypeVariable)) ? obj.getClass() : type : type;
    }

    private static boolean f(v vVar) {
        v vVarE;
        while ((vVar instanceof l) && (vVarE = ((l) vVar).e()) != vVar) {
            vVar = vVarE;
        }
        return vVar instanceof k.b;
    }

    @Override // com.google.gson.v
    public Object b(a5.a aVar) {
        return this.f16097b.b(aVar);
    }

    @Override // com.google.gson.v
    public void d(a5.c cVar, Object obj) {
        v vVarO = this.f16097b;
        Type typeE = e(this.f16098c, obj);
        if (typeE != this.f16098c) {
            vVarO = this.f16096a.o(TypeToken.get(typeE));
            if ((vVarO instanceof k.b) && !f(this.f16097b)) {
                vVarO = this.f16097b;
            }
        }
        vVarO.d(cVar, obj);
    }
}
