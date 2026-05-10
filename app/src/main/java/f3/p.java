package f3;

import android.database.Cursor;
import f3.b0;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class p implements b0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f11910a;

    private p(Map map) {
        this.f11910a = map;
    }

    public static b0.b a(Map map) {
        return new p(map);
    }

    @Override // f3.b0.b
    public Object apply(Object obj) {
        return b0.I0(this.f11910a, (Cursor) obj);
    }
}
