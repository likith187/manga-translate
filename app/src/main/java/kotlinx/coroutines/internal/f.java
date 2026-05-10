package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements kotlinx.coroutines.c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.coroutines.g f13262a;

    public f(kotlin.coroutines.g gVar) {
        this.f13262a = gVar;
    }

    @Override // kotlinx.coroutines.c0
    public kotlin.coroutines.g c() {
        return this.f13262a;
    }

    public String toString() {
        return "CoroutineScope(coroutineContext=" + c() + ')';
    }
}
