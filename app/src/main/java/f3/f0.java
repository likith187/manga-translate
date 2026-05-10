package f3;

import android.database.sqlite.SQLiteDatabase;
import f3.h0;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class f0 implements h0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f0 f11885a = new f0();

    private f0() {
    }

    public static h0.a b() {
        return f11885a;
    }

    @Override // f3.h0.a
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
