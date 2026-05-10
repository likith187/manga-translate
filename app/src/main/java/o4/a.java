package o4;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class a implements d {
    a() {
    }

    @Override // o4.d
    public Object a(Class cls) {
        u4.b bVarC = c(cls);
        if (bVarC == null) {
            return null;
        }
        return bVarC.get();
    }

    @Override // o4.d
    public Set b(Class cls) {
        return (Set) d(cls).get();
    }
}
