package f3;

import android.database.Cursor;
import f3.b0;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class u implements b0.b {

    /* JADX INFO: renamed from: a */
    private static final u f11915a = new u();

    private u() {
    }

    public static b0.b a() {
        return f11915a;
    }

    @Override // f3.b0.b
    public Object apply(Object obj) {
        return Boolean.valueOf(((Cursor) obj).moveToNext());
    }
}
