package f3;

import android.database.sqlite.SQLiteDatabase;
import f3.b0;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class j implements b0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f11900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y2.m f11901b;

    private j(long j10, y2.m mVar) {
        this.f11900a = j10;
        this.f11901b = mVar;
    }

    public static b0.b a(long j10, y2.m mVar) {
        return new j(j10, mVar);
    }

    @Override // f3.b0.b
    public Object apply(Object obj) {
        return b0.M0(this.f11900a, this.f11901b, (SQLiteDatabase) obj);
    }
}
