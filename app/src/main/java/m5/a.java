package m5;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class a extends MatrixCursor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f13834b = {"col"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bundle f13835a;

    public a(String[] strArr, Bundle bundle) {
        super(strArr);
        this.f13835a = new Bundle(bundle);
    }

    public static a c(Bundle bundle) {
        return new a(f13834b, bundle);
    }

    public static Bundle i(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        return cursor.getExtras();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public Bundle getExtras() {
        return this.f13835a;
    }
}
