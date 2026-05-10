package r1;

import android.util.Log;
import com.airbnb.lottie.l0;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class c implements l0 {

    /* JADX INFO: renamed from: a */
    private static final Set f15400a = new HashSet();

    @Override // com.airbnb.lottie.l0
    public void a(String str, Throwable th) {
        Set set = f15400a;
        if (set.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th);
        set.add(str);
    }

    @Override // com.airbnb.lottie.l0
    public void b(String str) {
        a(str, null);
    }

    @Override // com.airbnb.lottie.l0
    public void c(String str, Throwable th) {
        if (com.airbnb.lottie.e.f4545a) {
            Log.d("LOTTIE", str, th);
        }
    }

    @Override // com.airbnb.lottie.l0
    public void d(String str) {
        e(str, null);
    }

    public void e(String str, Throwable th) {
        if (com.airbnb.lottie.e.f4545a) {
            Log.d("LOTTIE", str, th);
        }
    }
}
