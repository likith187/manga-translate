package t0;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import java.util.List;
import s0.f;

/* JADX INFO: loaded from: classes.dex */
class a implements s0.b {

    /* JADX INFO: renamed from: b */
    private static final String[] f15641b = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* JADX INFO: renamed from: c */
    private static final String[] f15642c = new String[0];

    /* JADX INFO: renamed from: a */
    private final SQLiteDatabase f15643a;

    /* JADX INFO: renamed from: t0.a$a */
    class C0220a implements SQLiteDatabase.CursorFactory {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ s0.e f15644a;

        C0220a(s0.e eVar) {
            this.f15644a = eVar;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f15644a.i(new d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    class b implements SQLiteDatabase.CursorFactory {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ s0.e f15646a;

        b(s0.e eVar) {
            this.f15646a = eVar;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f15646a.i(new d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    a(SQLiteDatabase sQLiteDatabase) {
        this.f15643a = sQLiteDatabase;
    }

    @Override // s0.b
    public f J(String str) {
        return new e(this.f15643a.compileStatement(str));
    }

    @Override // s0.b
    public boolean W() {
        return this.f15643a.inTransaction();
    }

    @Override // s0.b
    public String a() {
        return this.f15643a.getPath();
    }

    boolean c(SQLiteDatabase sQLiteDatabase) {
        return this.f15643a == sQLiteDatabase;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f15643a.close();
    }

    @Override // s0.b
    public void g0() {
        this.f15643a.setTransactionSuccessful();
    }

    @Override // s0.b
    public boolean isOpen() {
        return this.f15643a.isOpen();
    }

    @Override // s0.b
    public void l() {
        this.f15643a.endTransaction();
    }

    @Override // s0.b
    public int l0() {
        return this.f15643a.getVersion();
    }

    @Override // s0.b
    public void m() {
        this.f15643a.beginTransaction();
    }

    @Override // s0.b
    public Cursor p0(s0.e eVar) {
        return this.f15643a.rawQueryWithFactory(new C0220a(eVar), eVar.c(), f15642c, null);
    }

    @Override // s0.b
    public List t() {
        return this.f15643a.getAttachedDbs();
    }

    @Override // s0.b
    public Cursor t0(s0.e eVar, CancellationSignal cancellationSignal) {
        return this.f15643a.rawQueryWithFactory(new b(eVar), eVar.c(), f15642c, null, cancellationSignal);
    }

    @Override // s0.b
    public void y(String str) {
        this.f15643a.execSQL(str);
    }

    @Override // s0.b
    public Cursor y0(String str) {
        return p0(new s0.a(str));
    }
}
