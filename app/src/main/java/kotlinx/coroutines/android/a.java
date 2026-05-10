package kotlinx.coroutines.android;

import android.os.Looper;
import java.util.List;
import kotlinx.coroutines.internal.u;
import kotlinx.coroutines.p1;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements u {
    @Override // kotlinx.coroutines.internal.u
    public String a() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // kotlinx.coroutines.internal.u
    public p1 b(List list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new c(e.a(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // kotlinx.coroutines.internal.u
    public int c() {
        return 1073741823;
    }
}
