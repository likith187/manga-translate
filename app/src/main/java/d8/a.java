package d8;

/* JADX INFO: loaded from: classes2.dex */
public interface a {

    /* JADX INFO: renamed from: d8.a$a, reason: collision with other inner class name */
    public static final class C0134a {
        public static /* synthetic */ void a(a aVar, String str, boolean z10, boolean z11, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: load");
            }
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            if ((i10 & 4) != 0) {
                z11 = false;
            }
            aVar.a(str, z10, z11);
        }
    }

    void a(String str, boolean z10, boolean z11);
}
