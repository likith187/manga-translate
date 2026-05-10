package w4;

import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import com.google.gson.w;

/* JADX INFO: loaded from: classes.dex */
public final class e implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.internal.c f16031a;

    public e(com.google.gson.internal.c cVar) {
        this.f16031a = cVar;
    }

    @Override // com.google.gson.w
    public v a(com.google.gson.d dVar, TypeToken typeToken) {
        v4.b bVar = (v4.b) typeToken.getRawType().getAnnotation(v4.b.class);
        if (bVar == null) {
            return null;
        }
        return b(this.f16031a, dVar, typeToken, bVar);
    }

    v b(com.google.gson.internal.c cVar, com.google.gson.d dVar, TypeToken typeToken, v4.b bVar) {
        v mVar;
        Object objA = cVar.b(TypeToken.get(bVar.value())).a();
        boolean zNullSafe = bVar.nullSafe();
        if (objA instanceof v) {
            mVar = (v) objA;
        } else if (objA instanceof w) {
            mVar = ((w) objA).a(dVar, typeToken);
        } else {
            if (!(objA instanceof com.google.gson.h)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objA.getClass().getName() + " as a @JsonAdapter for " + typeToken.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            mVar = new m(null, objA instanceof com.google.gson.h ? (com.google.gson.h) objA : null, dVar, typeToken, null, zNullSafe);
            zNullSafe = false;
        }
        return (mVar == null || !zNullSafe) ? mVar : mVar.a();
    }
}
