package f2;

/* JADX INFO: loaded from: classes.dex */
public interface a {

    /* JADX INFO: renamed from: f2.a$a, reason: collision with other inner class name */
    public static final class C0140a {
        public static /* synthetic */ void a(a aVar, String str, int i10, Integer num, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: show");
            }
            if ((i11 & 4) != 0) {
                num = null;
            }
            if ((i11 & 8) != 0) {
                z10 = false;
            }
            aVar.a(str, i10, num, z10);
        }

        public static /* synthetic */ void b(a aVar, String str, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showErrorView");
            }
            if ((i10 & 1) != 0) {
                str = null;
            }
            aVar.c(str);
        }

        public static /* synthetic */ void c(a aVar, String str, String str2, boolean z10, boolean z11, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateTranslationText");
            }
            if ((i10 & 4) != 0) {
                z10 = true;
            }
            if ((i10 & 8) != 0) {
                z11 = true;
            }
            aVar.b(str, str2, z10, z11);
        }
    }

    void a(String str, int i10, Integer num, boolean z10);

    void b(String str, String str2, boolean z10, boolean z11);

    void c(String str);
}
