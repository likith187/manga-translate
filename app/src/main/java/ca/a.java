package ca;

import android.util.Base64;
import com.oplus.aiunit.core.ConfigPackage;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadPoolExecutor f4474a = new ThreadPoolExecutor(0, 3, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(ConfigPackage.FRAME_SIZE_3), new ThreadPoolExecutor.DiscardPolicy());

    public static String a(String str) {
        try {
            String str2 = new String(Base64.decode(str, 0));
            b.a("4025: " + str2);
            return str2;
        } catch (Exception e10) {
            b.a("4025: " + e10.toString());
            return null;
        }
    }
}
