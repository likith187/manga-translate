package t0;

import android.database.sqlite.SQLiteStatement;
import s0.f;

/* JADX INFO: loaded from: classes.dex */
class e extends d implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SQLiteStatement f15655b;

    e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f15655b = sQLiteStatement;
    }

    @Override // s0.f
    public int H() {
        return this.f15655b.executeUpdateDelete();
    }

    @Override // s0.f
    public long w0() {
        return this.f15655b.executeInsert();
    }
}
