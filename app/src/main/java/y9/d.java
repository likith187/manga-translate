package y9;

import android.os.Looper;
import x9.f;
import x9.h;
import x9.l;

/* JADX INFO: loaded from: classes2.dex */
public class d implements h {
    @Override // x9.h
    public boolean a() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    @Override // x9.h
    public l b(x9.c cVar) {
        return new f(cVar, Looper.getMainLooper(), 10);
    }
}
