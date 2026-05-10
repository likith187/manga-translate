package f3;

import android.database.Cursor;
import f3.b0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class n implements b0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f11906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f11907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y2.m f11908c;

    private n(b0 b0Var, List list, y2.m mVar) {
        this.f11906a = b0Var;
        this.f11907b = list;
        this.f11908c = mVar;
    }

    public static b0.b a(b0 b0Var, List list, y2.m mVar) {
        return new n(b0Var, list, mVar);
    }

    @Override // f3.b0.b
    public Object apply(Object obj) {
        return b0.H0(this.f11906a, this.f11907b, this.f11908c, (Cursor) obj);
    }
}
