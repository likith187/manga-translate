package y9;

import android.util.Log;
import java.util.logging.Level;
import x9.g;

/* JADX INFO: loaded from: classes2.dex */
public class c implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16577a;

    public c(String str) {
        this.f16577a = str;
    }

    private int c(Level level) {
        int iIntValue = level.intValue();
        if (iIntValue < 800) {
            return iIntValue < 500 ? 2 : 3;
        }
        if (iIntValue < 900) {
            return 4;
        }
        return iIntValue < 1000 ? 5 : 6;
    }

    @Override // x9.g
    public void a(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(c(level), this.f16577a, str);
        }
    }

    @Override // x9.g
    public void b(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            Log.println(c(level), this.f16577a, str + "\n" + Log.getStackTraceString(th));
        }
    }
}
