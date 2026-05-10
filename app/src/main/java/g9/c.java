package g9;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends f {
    public static final c INSTANCE = new c();

    private c() {
        super(l.f12154c, l.f12155d, l.f12156e, l.f12152a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.y
    public String toString() {
        return "Dispatchers.Default";
    }
}
