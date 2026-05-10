package t0;

import android.database.sqlite.SQLiteProgram;

/* JADX INFO: loaded from: classes.dex */
class d implements s0.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SQLiteProgram f15654a;

    d(SQLiteProgram sQLiteProgram) {
        this.f15654a = sQLiteProgram;
    }

    @Override // s0.d
    public void M(int i10) {
        this.f15654a.bindNull(i10);
    }

    @Override // s0.d
    public void P(int i10, double d10) {
        this.f15654a.bindDouble(i10, d10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f15654a.close();
    }

    @Override // s0.d
    public void e0(int i10, long j10) {
        this.f15654a.bindLong(i10, j10);
    }

    @Override // s0.d
    public void k0(int i10, byte[] bArr) {
        this.f15654a.bindBlob(i10, bArr);
    }

    @Override // s0.d
    public void z(int i10, String str) {
        this.f15654a.bindString(i10, str);
    }
}
