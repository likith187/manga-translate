package kotlin.coroutines.jvm.internal;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j extends a {
    public j(kotlin.coroutines.d dVar) {
        super(dVar);
        if (dVar != null && dVar.getContext() != kotlin.coroutines.h.INSTANCE) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
    }

    @Override // kotlin.coroutines.jvm.internal.a, kotlin.coroutines.d
    public kotlin.coroutines.g getContext() {
        return kotlin.coroutines.h.INSTANCE;
    }
}
