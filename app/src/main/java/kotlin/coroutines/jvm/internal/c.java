package kotlin.coroutines.jvm.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements kotlin.coroutines.d {
    public static final c INSTANCE = new c();

    private c() {
    }

    @Override // kotlin.coroutines.d
    public kotlin.coroutines.g getContext() {
        throw new IllegalStateException("This continuation is already complete");
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
