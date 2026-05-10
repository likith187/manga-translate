package f3;

import android.database.sqlite.SQLiteDatabase;
import f3.b0;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class a0 implements b0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f11865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y2.m f11866b;

    private a0(b0 b0Var, y2.m mVar) {
        this.f11865a = b0Var;
        this.f11866b = mVar;
    }

    public static b0.b a(b0 b0Var, y2.m mVar) {
        return new a0(b0Var, mVar);
    }

    @Override // f3.b0.b
    public Object apply(Object obj) {
        return b0.D0(this.f11865a, this.f11866b, (SQLiteDatabase) obj);
    }
}
