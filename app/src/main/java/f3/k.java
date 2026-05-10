package f3;

import android.database.sqlite.SQLiteDatabase;
import f3.b0;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class k implements b0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f11902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y2.m f11903b;

    private k(b0 b0Var, y2.m mVar) {
        this.f11902a = b0Var;
        this.f11903b = mVar;
    }

    public static b0.b a(b0 b0Var, y2.m mVar) {
        return new k(b0Var, mVar);
    }

    @Override // f3.b0.b
    public Object apply(Object obj) {
        return b0.G0(this.f11902a, this.f11903b, (SQLiteDatabase) obj);
    }
}
