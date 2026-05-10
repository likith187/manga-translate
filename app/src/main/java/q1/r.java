package q1;

/* JADX INFO: loaded from: classes.dex */
public class r implements n0 {
    public static final r INSTANCE = new r();

    private r() {
    }

    @Override // q1.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Integer a(com.airbnb.lottie.parser.moshi.c cVar, float f10) {
        return Integer.valueOf(Math.round(s.g(cVar) * f10));
    }
}
