package v6;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public class a extends MatrixCursor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f15948b = {"col"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bundle f15949a;

    public a(String[] strArr, Bundle bundle) {
        super(strArr);
        this.f15949a = new Bundle(bundle);
    }

    public static a c(Bundle bundle) {
        return new a(f15948b, bundle);
    }

    public static Bundle i(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        return cursor.getExtras();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public Bundle getExtras() {
        return this.f15949a;
    }
}
