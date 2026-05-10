package s0;

/* JADX INFO: loaded from: classes.dex */
public final class a implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f15495b;

    public a(String str, Object[] objArr) {
        this.f15494a = str;
        this.f15495b = objArr;
    }

    private static void a(d dVar, int i10, Object obj) {
        if (obj == null) {
            dVar.M(i10);
            return;
        }
        if (obj instanceof byte[]) {
            dVar.k0(i10, (byte[]) obj);
            return;
        }
        if (obj instanceof Float) {
            dVar.P(i10, ((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            dVar.P(i10, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Long) {
            dVar.e0(i10, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof Integer) {
            dVar.e0(i10, ((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Short) {
            dVar.e0(i10, ((Short) obj).shortValue());
            return;
        }
        if (obj instanceof Byte) {
            dVar.e0(i10, ((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof String) {
            dVar.z(i10, (String) obj);
            return;
        }
        if (obj instanceof Boolean) {
            dVar.e0(i10, ((Boolean) obj).booleanValue() ? 1L : 0L);
            return;
        }
        throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i10 + " Supported types: null, byte[], float, double, long, int, short, byte, string");
    }

    public static void b(d dVar, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i10 = 0;
        while (i10 < length) {
            Object obj = objArr[i10];
            i10++;
            a(dVar, i10, obj);
        }
    }

    @Override // s0.e
    public String c() {
        return this.f15494a;
    }

    @Override // s0.e
    public void i(d dVar) {
        b(dVar, this.f15495b);
    }

    public a(String str) {
        this(str, null);
    }
}
