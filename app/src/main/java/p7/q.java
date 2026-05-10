package p7;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class q implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f15216b;

    static {
        byte[] bArrDecode = Base64.decode("Y29tLm5lYXJtZS5zdGF0aXN0aWNzLnJvbQ==", 0);
        Charset charset = StandardCharsets.UTF_8;
        f15215a = new String(bArrDecode, charset);
        f15216b = new String(Base64.decode("Y29tLm5lYXJtZS5zdGF0aXN0aWNzLnJvbS5zZXJ2aWNlLlJlY2VpdmVyU2VydmljZQ==", 0), charset);
    }

    private Intent d(o7.f fVar) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(f15215a, f15216b));
        for (Map.Entry entry : fVar.h().entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                intent.putExtra(str, (String) value);
            } else if (value instanceof Integer) {
                intent.putExtra(str, (Integer) value);
            } else if (value instanceof Long) {
                intent.putExtra(str, (Long) value);
            } else if (value instanceof Boolean) {
                intent.putExtra(str, (Boolean) value);
            }
        }
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String e(Context context) {
        return "add Task failed: bean or context is null. context=" + context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String f(Exception exc) {
        return "startService exception=" + exc;
    }

    @Override // p7.m
    public void a(final Context context, o7.f fVar) {
        if (fVar == null || context == null) {
            s7.f.a("ServiceRecorder", new s7.g() { // from class: p7.o
                @Override // s7.g
                public final Object get() {
                    return q.e(context);
                }
            });
            return;
        }
        try {
            context.startService(d(fVar));
        } catch (Exception e10) {
            s7.f.f("ServiceRecorder", new s7.g() { // from class: p7.p
                @Override // s7.g
                public final Object get() {
                    return q.f(e10);
                }
            });
        }
    }
}
