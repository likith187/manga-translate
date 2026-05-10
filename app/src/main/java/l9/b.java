package l9;

import java.util.Arrays;
import java.util.logging.Logger;
import kotlin.jvm.internal.h0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static final String b(long j10) {
        String str;
        if (j10 <= -999500000) {
            str = ((j10 - ((long) 500000000)) / ((long) 1000000000)) + " s ";
        } else if (j10 <= -999500) {
            str = ((j10 - ((long) 500000)) / ((long) 1000000)) + " ms";
        } else if (j10 <= 0) {
            str = ((j10 - ((long) 500)) / ((long) 1000)) + " µs";
        } else if (j10 < 999500) {
            str = ((j10 + ((long) 500)) / ((long) 1000)) + " µs";
        } else if (j10 < 999500000) {
            str = ((j10 + ((long) 500000)) / ((long) 1000000)) + " ms";
        } else {
            str = ((j10 + ((long) 500000000)) / ((long) 1000000000)) + " s ";
        }
        h0 h0Var = h0.INSTANCE;
        String str2 = String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
        r.d(str2, "format(format, *args)");
        return str2;
    }

    public static final void c(a aVar, d dVar, String str) {
        Logger loggerA = e.f13663h.a();
        StringBuilder sb = new StringBuilder();
        sb.append(dVar.f());
        sb.append(' ');
        h0 h0Var = h0.INSTANCE;
        String str2 = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        r.d(str2, "format(format, *args)");
        sb.append(str2);
        sb.append(": ");
        sb.append(aVar.b());
        loggerA.fine(sb.toString());
    }
}
