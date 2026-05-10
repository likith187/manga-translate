package l6;

import android.util.Log;
import com.oplus.anim.h0;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class d implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set f13618a = new HashSet();

    @Override // com.oplus.anim.h0
    public void a(String str, Throwable th) {
        Set set = f13618a;
        if (set.contains(str)) {
            return;
        }
        Log.w("LOG_Effective", str, th);
        set.add(str);
    }

    @Override // com.oplus.anim.h0
    public void b(String str) {
        a(str, null);
    }

    @Override // com.oplus.anim.h0
    public void c(String str, Throwable th) {
    }

    @Override // com.oplus.anim.h0
    public void d(String str) {
        e(str, null);
    }

    public void e(String str, Throwable th) {
    }
}
