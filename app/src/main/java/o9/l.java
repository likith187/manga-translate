package o9;

import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public interface l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14639a = a.f14641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l f14640b = new a.C0191a();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f14641a = new a();

        /* JADX INFO: renamed from: o9.l$a$a, reason: collision with other inner class name */
        private static final class C0191a implements l {
            @Override // o9.l
            public boolean a(int i10, List requestHeaders) {
                r.e(requestHeaders, "requestHeaders");
                return true;
            }

            @Override // o9.l
            public boolean b(int i10, List responseHeaders, boolean z10) {
                r.e(responseHeaders, "responseHeaders");
                return true;
            }

            @Override // o9.l
            public void c(int i10, b errorCode) {
                r.e(errorCode, "errorCode");
            }

            @Override // o9.l
            public boolean d(int i10, t9.f source, int i11, boolean z10) {
                r.e(source, "source");
                source.A(i11);
                return true;
            }
        }

        private a() {
        }
    }

    boolean a(int i10, List list);

    boolean b(int i10, List list, boolean z10);

    void c(int i10, b bVar);

    boolean d(int i10, t9.f fVar, int i11, boolean z10);
}
