package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public final class e0 extends Enum {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ e0[] $VALUES;
    public static final e0 DEFAULT = new e0("DEFAULT", 0);
    public static final e0 LAZY = new e0("LAZY", 1);
    public static final e0 ATOMIC = new e0("ATOMIC", 2);
    public static final e0 UNDISPATCHED = new e0("UNDISPATCHED", 3);

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        public static final /* synthetic */ int[] f13226a;

        static {
            int[] iArr = new int[e0.values().length];
            try {
                iArr[e0.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[e0.ATOMIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[e0.UNDISPATCHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[e0.LAZY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f13226a = iArr;
        }
    }

    private static final /* synthetic */ e0[] $values() {
        return new e0[]{DEFAULT, LAZY, ATOMIC, UNDISPATCHED};
    }

    static {
        e0[] e0VarArr$values = $values();
        $VALUES = e0VarArr$values;
        $ENTRIES = r8.b.a(e0VarArr$values);
    }

    private e0(String str, int i10) {
        super(str, i10);
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static /* synthetic */ void isLazy$annotations() {
    }

    public static e0 valueOf(String str) {
        return (e0) Enum.valueOf(e0.class, str);
    }

    public static e0[] values() {
        return (e0[]) $VALUES.clone();
    }

    public final <R, T> void invoke(w8.p pVar, R r10, kotlin.coroutines.d dVar) throws Throwable {
        int i10 = a.f13226a[ordinal()];
        if (i10 == 1) {
            f9.a.d(pVar, r10, dVar, null, 4, null);
            return;
        }
        if (i10 == 2) {
            kotlin.coroutines.f.a(pVar, r10, dVar);
        } else if (i10 == 3) {
            f9.b.a(pVar, r10, dVar);
        } else if (i10 != 4) {
            throw new n8.o();
        }
    }

    public final boolean isLazy() {
        return this == LAZY;
    }
}
