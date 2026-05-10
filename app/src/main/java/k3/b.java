package k3;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.k;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lock f12898c = new ReentrantLock();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f12899d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lock f12900a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SharedPreferences f12901b;

    b(Context context) {
        this.f12901b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static b a(Context context) {
        k.g(context);
        Lock lock = f12898c;
        lock.lock();
        try {
            if (f12899d == null) {
                f12899d = new b(context.getApplicationContext());
            }
            b bVar = f12899d;
            lock.unlock();
            return bVar;
        } catch (Throwable th) {
            f12898c.unlock();
            throw th;
        }
    }

    private static final String d(String str, String str2) {
        return str + ":" + str2;
    }

    public GoogleSignInAccount b() {
        String strC;
        String strC2 = c("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(strC2) || (strC = c(d("googleSignInAccount", strC2))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.N0(strC);
        } catch (JSONException unused) {
            return null;
        }
    }

    protected final String c(String str) {
        this.f12900a.lock();
        try {
            return this.f12901b.getString(str, null);
        } finally {
            this.f12900a.unlock();
        }
    }
}
