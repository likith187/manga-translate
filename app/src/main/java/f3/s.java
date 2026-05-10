package f3;

import f3.b0;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class s implements b0.d {

    /* JADX INFO: renamed from: a */
    private final h0 f11913a;

    private s(h0 h0Var) {
        this.f11913a = h0Var;
    }

    public static b0.d b(h0 h0Var) {
        return new s(h0Var);
    }

    @Override // f3.b0.d
    public Object a() {
        return this.f11913a.getWritableDatabase();
    }
}
