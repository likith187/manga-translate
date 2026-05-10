package y9;

import java.lang.reflect.InvocationTargetException;
import org.greenrobot.eventbus.android.AndroidComponentsImpl;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static boolean a() {
        try {
            int i10 = AndroidComponentsImpl.f15047d;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static a b() {
        try {
            int i10 = AndroidComponentsImpl.f15047d;
            return (a) AndroidComponentsImpl.class.getConstructor(null).newInstance(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean c() {
        try {
            return Class.forName("android.os.Looper").getDeclaredMethod("getMainLooper", null).invoke(null, null) != null;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }
}
