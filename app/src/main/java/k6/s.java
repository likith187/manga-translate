package k6;

/* JADX INFO: loaded from: classes2.dex */
public class s implements n0 {
    public static final s INSTANCE = new s();

    private s() {
    }

    @Override // k6.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Integer a(com.oplus.anim.parser.moshi.c cVar, float f10) {
        return Integer.valueOf(Math.round(t.g(cVar) * f10));
    }
}
