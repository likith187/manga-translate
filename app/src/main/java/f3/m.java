package f3;

import android.database.sqlite.SQLiteDatabase;
import f3.b0;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class m implements b0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f11905a;

    private m(long j10) {
        this.f11905a = j10;
    }

    public static b0.b a(long j10) {
        return new m(j10);
    }

    @Override // f3.b0.b
    public Object apply(Object obj) {
        return Integer.valueOf(((SQLiteDatabase) obj).delete("events", "timestamp_ms < ?", new String[]{String.valueOf(this.f11905a)}));
    }
}
