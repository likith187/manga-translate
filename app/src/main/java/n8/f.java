package n8;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class f {
    public static void a(Throwable th, Throwable exception) throws IllegalAccessException, InvocationTargetException {
        kotlin.jvm.internal.r.e(th, "<this>");
        kotlin.jvm.internal.r.e(exception, "exception");
        if (th != exception) {
            s8.b.f15579a.a(th, exception);
        }
    }

    public static String b(Throwable th) {
        kotlin.jvm.internal.r.e(th, "<this>");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }
}
