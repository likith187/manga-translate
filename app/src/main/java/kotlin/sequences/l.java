package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class l extends k {

    public static final class a implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Iterator f13104a;

        public a(Iterator it) {
            this.f13104a = it;
        }

        @Override // kotlin.sequences.f
        public Iterator iterator() {
            return this.f13104a;
        }
    }

    static final class b extends s implements w8.l {
        final /* synthetic */ w8.a $nextFunction;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(w8.a aVar) {
            super(1);
            this.$nextFunction = aVar;
        }

        @Override // w8.l
        public final Object invoke(Object it) {
            r.e(it, "it");
            return this.$nextFunction.mo8invoke();
        }
    }

    public static f c(Iterator it) {
        r.e(it, "<this>");
        return i.d(new a(it));
    }

    public static f d(f fVar) {
        r.e(fVar, "<this>");
        return fVar instanceof kotlin.sequences.a ? fVar : new kotlin.sequences.a(fVar);
    }

    public static f e(w8.a nextFunction) {
        r.e(nextFunction, "nextFunction");
        return i.d(new e(nextFunction, new b(nextFunction)));
    }

    public static f f(w8.a seedFunction, w8.l nextFunction) {
        r.e(seedFunction, "seedFunction");
        r.e(nextFunction, "nextFunction");
        return new e(seedFunction, nextFunction);
    }
}
