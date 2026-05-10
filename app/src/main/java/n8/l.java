package n8;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        public static final /* synthetic */ int[] f14101a;

        static {
            int[] iArr = new int[n.values().length];
            try {
                iArr[n.SYNCHRONIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[n.PUBLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[n.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f14101a = iArr;
        }
    }

    public static j a(n mode, w8.a initializer) {
        kotlin.jvm.internal.r.e(mode, "mode");
        kotlin.jvm.internal.r.e(initializer, "initializer");
        int i10 = a.f14101a[mode.ordinal()];
        if (i10 == 1) {
            return new u(initializer, null, 2, null);
        }
        if (i10 == 2) {
            return new t(initializer);
        }
        if (i10 == 3) {
            return new i0(initializer);
        }
        throw new o();
    }

    public static j b(w8.a initializer) {
        kotlin.jvm.internal.r.e(initializer, "initializer");
        return new u(initializer, null, 2, null);
    }
}
