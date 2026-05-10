package f3;

import android.database.sqlite.SQLiteDatabase;
import f3.b0;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class y implements b0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f11921a;

    private y(String str) {
        this.f11921a = str;
    }

    public static b0.b a(String str) {
        return new y(str);
    }

    @Override // f3.b0.b
    public Object apply(Object obj) {
        return b0.L0(this.f11921a, (SQLiteDatabase) obj);
    }
}
