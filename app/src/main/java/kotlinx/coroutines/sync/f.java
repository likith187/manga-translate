package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.g;
import kotlinx.coroutines.internal.d0;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
final class f extends d0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f13376e;

    public f(long j10, f fVar, int i10) {
        super(j10, fVar, i10);
        this.f13376e = new AtomicReferenceArray(e.f13375f);
    }

    @Override // kotlinx.coroutines.internal.d0
    public int r() {
        return e.f13375f;
    }

    @Override // kotlinx.coroutines.internal.d0
    public void s(int i10, Throwable th, g gVar) {
        v().set(i10, e.f13374e);
        t();
    }

    public String toString() {
        return "SemaphoreSegment[id=" + this.f13261c + ", hashCode=" + hashCode() + AbstractJsonLexerKt.END_LIST;
    }

    public final /* synthetic */ AtomicReferenceArray v() {
        return this.f13376e;
    }
}
