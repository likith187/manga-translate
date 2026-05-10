package kotlinx.coroutines;

import java.io.Closeable;
import kotlin.coroutines.g;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class x0 extends y implements Closeable {

    /* JADX INFO: renamed from: c */
    public static final a f13392c = new a(null);

    public static final class a extends kotlin.coroutines.b {

        /* JADX INFO: renamed from: kotlinx.coroutines.x0$a$a */
        static final class C0175a extends kotlin.jvm.internal.s implements w8.l {
            public static final C0175a INSTANCE = new C0175a();

            C0175a() {
                super(1);
            }

            @Override // w8.l
            public final x0 invoke(g.b bVar) {
                if (bVar instanceof x0) {
                    return (x0) bVar;
                }
                return null;
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
            super(y.f13393b, C0175a.INSTANCE);
        }
    }
}
