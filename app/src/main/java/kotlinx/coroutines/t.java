package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f13377b = AtomicIntegerFieldUpdater.newUpdater(t.class, "_handled$volatile");
    private volatile /* synthetic */ int _handled$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f13378a;

    public t(Throwable th, boolean z10) {
        this.f13378a = th;
        this._handled$volatile = z10 ? 1 : 0;
    }

    public final boolean a() {
        return f13377b.get(this) != 0;
    }

    public final boolean c() {
        return f13377b.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return g0.a(this) + AbstractJsonLexerKt.BEGIN_LIST + this.f13378a + AbstractJsonLexerKt.END_LIST;
    }

    public /* synthetic */ t(Throwable th, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i10 & 2) != 0 ? false : z10);
    }
}
