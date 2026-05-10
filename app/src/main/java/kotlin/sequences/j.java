package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.r;
import w8.p;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class j {

    public static final class a implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ p f13103a;

        public a(p pVar) {
            this.f13103a = pVar;
        }

        @Override // kotlin.sequences.f
        public Iterator iterator() {
            return j.a(this.f13103a);
        }
    }

    public static final Iterator a(p block) {
        r.e(block, "block");
        g gVar = new g();
        gVar.j(kotlin.coroutines.intrinsics.b.a(block, gVar, gVar));
        return gVar;
    }

    public static f b(p block) {
        r.e(block, "block");
        return new a(block);
    }
}
