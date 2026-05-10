package q9;

import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.collections.j0;
import kotlin.jvm.internal.r;
import okhttp3.x;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public static final c INSTANCE = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final CopyOnWriteArraySet f15360a = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f15361b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r22 = x.class.getPackage();
        String name = r22 != null ? r22.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        String name2 = x.class.getName();
        r.d(name2, "OkHttpClient::class.java.name");
        linkedHashMap.put(name2, "okhttp.OkHttpClient");
        String name3 = o9.e.class.getName();
        r.d(name3, "Http2::class.java.name");
        linkedHashMap.put(name3, "okhttp.Http2");
        String name4 = l9.e.class.getName();
        r.d(name4, "TaskRunner::class.java.name");
        linkedHashMap.put(name4, "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        f15361b = j0.q(linkedHashMap);
    }

    private c() {
    }

    private final void c(String str, String str2) {
        Logger logger = Logger.getLogger(str);
        if (f15360a.add(logger)) {
            logger.setUseParentHandlers(false);
            logger.setLevel(Log.isLoggable(str2, 3) ? Level.FINE : Log.isLoggable(str2, 4) ? Level.INFO : Level.WARNING);
            logger.addHandler(d.INSTANCE);
        }
    }

    private final String d(String str) {
        String str2 = (String) f15361b.get(str);
        return str2 == null ? kotlin.text.r.W0(str, 23) : str2;
    }

    public final void a(String loggerName, int i10, String message, Throwable th) {
        int iMin;
        r.e(loggerName, "loggerName");
        r.e(message, "message");
        String strD = d(loggerName);
        if (Log.isLoggable(strD, i10)) {
            if (th != null) {
                message = message + '\n' + Log.getStackTraceString(th);
            }
            int length = message.length();
            int i11 = 0;
            while (i11 < length) {
                int iV = kotlin.text.r.V(message, '\n', i11, false, 4, null);
                if (iV == -1) {
                    iV = length;
                }
                while (true) {
                    iMin = Math.min(iV, i11 + 4000);
                    String strSubstring = message.substring(i11, iMin);
                    r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Log.println(i10, strD, strSubstring);
                    if (iMin >= iV) {
                        break;
                    } else {
                        i11 = iMin;
                    }
                }
                i11 = iMin + 1;
            }
        }
    }

    public final void b() {
        for (Map.Entry entry : f15361b.entrySet()) {
            c((String) entry.getKey(), (String) entry.getValue());
        }
    }
}
