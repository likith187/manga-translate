package t0;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import s0.c;

/* JADX INFO: loaded from: classes.dex */
class b implements s0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f15648a;

    static class a extends SQLiteOpenHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final t0.a[] f15649a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final c.a f15650b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f15651c;

        /* JADX INFO: renamed from: t0.b$a$a, reason: collision with other inner class name */
        class C0221a implements DatabaseErrorHandler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ c.a f15652a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ t0.a[] f15653b;

            C0221a(c.a aVar, t0.a[] aVarArr) {
                this.f15652a = aVar;
                this.f15653b = aVarArr;
            }

            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                this.f15652a.c(a.k(this.f15653b, sQLiteDatabase));
            }
        }

        a(Context context, String str, t0.a[] aVarArr, c.a aVar) {
            super(context, str, null, aVar.f15496a, new C0221a(aVar, aVarArr));
            this.f15650b = aVar;
            this.f15649a = aVarArr;
        }

        static t0.a k(t0.a[] aVarArr, SQLiteDatabase sQLiteDatabase) {
            t0.a aVar = aVarArr[0];
            if (aVar == null || !aVar.c(sQLiteDatabase)) {
                aVarArr[0] = new t0.a(sQLiteDatabase);
            }
            return aVarArr[0];
        }

        synchronized s0.b c() {
            this.f15651c = false;
            SQLiteDatabase readableDatabase = super.getReadableDatabase();
            if (!this.f15651c) {
                return i(readableDatabase);
            }
            close();
            return c();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public synchronized void close() {
            super.close();
            this.f15649a[0] = null;
        }

        t0.a i(SQLiteDatabase sQLiteDatabase) {
            return k(this.f15649a, sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f15650b.b(i(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f15650b.d(i(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            this.f15651c = true;
            this.f15650b.e(i(sQLiteDatabase), i10, i11);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (this.f15651c) {
                return;
            }
            this.f15650b.f(i(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            this.f15651c = true;
            this.f15650b.g(i(sQLiteDatabase), i10, i11);
        }

        synchronized s0.b v() {
            this.f15651c = false;
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            if (!this.f15651c) {
                return i(writableDatabase);
            }
            close();
            return v();
        }
    }

    b(Context context, String str, c.a aVar) {
        this.f15648a = e(context, str, aVar);
    }

    private a e(Context context, String str, c.a aVar) {
        return new a(context, str, new t0.a[1], aVar);
    }

    @Override // s0.c
    public void a(boolean z10) {
        this.f15648a.setWriteAheadLoggingEnabled(z10);
    }

    @Override // s0.c
    public s0.b b() {
        return this.f15648a.c();
    }

    @Override // s0.c
    public s0.b c() {
        return this.f15648a.v();
    }

    @Override // s0.c
    public String d() {
        return this.f15648a.getDatabaseName();
    }
}
