package u7;

import android.database.MatrixCursor;
import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: loaded from: classes2.dex */
public class a extends MatrixCursor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f15890b = {"col"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a f15891c = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bundle f15892a;

    public a(String[] strArr, IBinder iBinder) {
        super(strArr);
        Bundle bundle = new Bundle();
        this.f15892a = bundle;
        bundle.putBinder("IBinder", iBinder);
    }

    public static a c(IBinder iBinder) {
        if (f15891c == null) {
            synchronized (a.class) {
                try {
                    if (f15891c == null) {
                        f15891c = new a(f15890b, iBinder);
                    }
                } finally {
                }
            }
        }
        return f15891c;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public Bundle getExtras() {
        return this.f15892a;
    }
}
