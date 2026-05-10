package f3;

import android.database.sqlite.SQLiteDatabase;
import f3.b0;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class q implements b0.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SQLiteDatabase f11911a;

    private q(SQLiteDatabase sQLiteDatabase) {
        this.f11911a = sQLiteDatabase;
    }

    public static b0.d b(SQLiteDatabase sQLiteDatabase) {
        return new q(sQLiteDatabase);
    }

    @Override // f3.b0.d
    public Object a() {
        return b0.a0(this.f11911a);
    }
}
