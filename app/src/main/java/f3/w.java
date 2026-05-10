package f3;

import android.database.sqlite.SQLiteDatabase;
import f3.b0;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class w implements b0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f11917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y2.m f11918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y2.h f11919c;

    private w(b0 b0Var, y2.m mVar, y2.h hVar) {
        this.f11917a = b0Var;
        this.f11918b = mVar;
        this.f11919c = hVar;
    }

    public static b0.b a(b0 b0Var, y2.m mVar, y2.h hVar) {
        return new w(b0Var, mVar, hVar);
    }

    @Override // f3.b0.b
    public Object apply(Object obj) {
        return b0.J0(this.f11917a, this.f11918b, this.f11919c, (SQLiteDatabase) obj);
    }
}
