package p1;

import android.content.Context;
import android.util.Pair;
import com.airbnb.lottie.j;
import com.airbnb.lottie.n0;
import com.airbnb.lottie.r;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a */
    private final g f15167a;

    /* JADX INFO: renamed from: b */
    private final f f15168b;

    public h(g gVar, f fVar) {
        this.f15167a = gVar;
        this.f15168b = fVar;
    }

    private j a(Context context, String str, String str2) {
        g gVar;
        Pair pairA;
        if (str2 == null || (gVar = this.f15167a) == null || (pairA = gVar.a(str)) == null) {
            return null;
        }
        c cVar = (c) pairA.first;
        InputStream inputStream = (InputStream) pairA.second;
        n0 n0VarY = cVar == c.ZIP ? r.y(context, new ZipInputStream(inputStream), str2) : r.o(inputStream, str2);
        if (n0VarY.b() != null) {
            return (j) n0VarY.b();
        }
        return null;
    }

    private n0 b(Context context, String str, String str2) {
        r1.d.a("Fetching " + str);
        Closeable closeable = null;
        try {
            try {
                d dVarA = this.f15168b.a(str);
                if (!dVarA.e()) {
                    n0 n0Var = new n0((Throwable) new IllegalArgumentException(dVarA.h()));
                    try {
                        dVarA.close();
                    } catch (IOException e10) {
                        r1.d.d("LottieFetchResult close failed ", e10);
                    }
                    return n0Var;
                }
                n0 n0VarD = d(context, str, dVarA.b(), dVarA.g(), str2);
                StringBuilder sb = new StringBuilder();
                sb.append("Completed fetch from network. Success: ");
                sb.append(n0VarD.b() != null);
                r1.d.a(sb.toString());
                try {
                    dVarA.close();
                } catch (IOException e11) {
                    r1.d.d("LottieFetchResult close failed ", e11);
                }
                return n0VarD;
            } catch (Exception e12) {
                n0 n0Var2 = new n0((Throwable) e12);
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e13) {
                        r1.d.d("LottieFetchResult close failed ", e13);
                    }
                }
                return n0Var2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e14) {
                    r1.d.d("LottieFetchResult close failed ", e14);
                }
            }
            throw th;
        }
    }

    private n0 d(Context context, String str, InputStream inputStream, String str2, String str3) {
        n0 n0VarF;
        c cVar;
        g gVar;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            r1.d.a("Handling zip response.");
            c cVar2 = c.ZIP;
            n0VarF = f(context, str, inputStream, str3);
            cVar = cVar2;
        } else {
            r1.d.a("Received json response.");
            cVar = c.JSON;
            n0VarF = e(str, inputStream, str3);
        }
        if (str3 != null && n0VarF.b() != null && (gVar = this.f15167a) != null) {
            gVar.f(str, cVar);
        }
        return n0VarF;
    }

    private n0 e(String str, InputStream inputStream, String str2) {
        g gVar;
        return (str2 == null || (gVar = this.f15167a) == null) ? r.o(inputStream, null) : r.o(new FileInputStream(gVar.g(str, inputStream, c.JSON).getAbsolutePath()), str);
    }

    private n0 f(Context context, String str, InputStream inputStream, String str2) {
        g gVar;
        return (str2 == null || (gVar = this.f15167a) == null) ? r.y(context, new ZipInputStream(inputStream), null) : r.y(context, new ZipInputStream(new FileInputStream(gVar.g(str, inputStream, c.ZIP))), str);
    }

    public n0 c(Context context, String str, String str2) {
        j jVarA = a(context, str, str2);
        if (jVarA != null) {
            return new n0(jVarA);
        }
        r1.d.a("Animation for " + str + " not found in cache. Fetching from network.");
        return b(context, str, str2);
    }
}
