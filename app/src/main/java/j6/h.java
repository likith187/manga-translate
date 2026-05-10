package j6;

import android.content.Context;
import android.util.Pair;
import com.oplus.anim.f0;
import com.oplus.anim.r;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f12769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f12770b;

    public h(g gVar, e eVar) {
        this.f12769a = gVar;
        this.f12770b = eVar;
    }

    private com.oplus.anim.a a(Context context, String str, String str2) {
        g gVar;
        Pair pairA;
        if (str2 == null || (gVar = this.f12769a) == null || (pairA = gVar.a(str)) == null) {
            return null;
        }
        f fVar = (f) pairA.first;
        InputStream inputStream = (InputStream) pairA.second;
        r rVarY = fVar == f.ZIP ? f0.y(context, new ZipInputStream(inputStream), str2) : f0.o(inputStream, str2);
        if (rVarY.b() != null) {
            return (com.oplus.anim.a) rVarY.b();
        }
        return null;
    }

    private r b(Context context, String str, String str2) {
        l6.e.a("Fetching " + str);
        Closeable closeable = null;
        try {
            try {
                c cVarA = this.f12770b.a(str);
                if (!cVarA.e()) {
                    r rVar = new r((Throwable) new IllegalArgumentException(cVarA.h()));
                    try {
                        cVarA.close();
                    } catch (IOException e10) {
                        l6.e.d("EffectiveFetchResult close failed ", e10);
                    }
                    return rVar;
                }
                r rVarD = d(context, str, cVarA.b(), cVarA.g(), str2);
                StringBuilder sb = new StringBuilder();
                sb.append("Completed fetch from network. Success: ");
                sb.append(rVarD.b() != null);
                l6.e.a(sb.toString());
                try {
                    cVarA.close();
                } catch (IOException e11) {
                    l6.e.d("EffectiveFetchResult close failed ", e11);
                }
                return rVarD;
            } catch (Exception e12) {
                r rVar2 = new r((Throwable) e12);
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e13) {
                        l6.e.d("EffectiveFetchResult close failed ", e13);
                    }
                }
                return rVar2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e14) {
                    l6.e.d("EffectiveFetchResult close failed ", e14);
                }
            }
            throw th;
        }
    }

    private r d(Context context, String str, InputStream inputStream, String str2, String str3) {
        r rVarF;
        f fVar;
        g gVar;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || l6.h.m(str.split("\\?")[0], ".lottie")) {
            l6.e.a("Handling zip response.");
            f fVar2 = f.ZIP;
            rVarF = f(context, str, inputStream, str3);
            fVar = fVar2;
        } else {
            l6.e.a("Received json response.");
            fVar = f.JSON;
            rVarF = e(str, inputStream, str3);
        }
        if (str3 != null && rVarF.b() != null && (gVar = this.f12769a) != null) {
            gVar.e(str, fVar);
        }
        return rVarF;
    }

    private r e(String str, InputStream inputStream, String str2) {
        g gVar;
        return (str2 == null || (gVar = this.f12769a) == null) ? f0.o(inputStream, null) : f0.o(new FileInputStream(gVar.f(str, inputStream, f.JSON).getAbsolutePath()), str);
    }

    private r f(Context context, String str, InputStream inputStream, String str2) {
        g gVar;
        return (str2 == null || (gVar = this.f12769a) == null) ? f0.y(context, new ZipInputStream(inputStream), null) : f0.y(context, new ZipInputStream(new FileInputStream(gVar.f(str, inputStream, f.ZIP))), str);
    }

    public r c(Context context, String str, String str2) {
        com.oplus.anim.a aVarA = a(context, str, str2);
        if (aVarA != null) {
            return new r(aVarA);
        }
        l6.e.a("Animation for " + str + " not found in cache. Fetching from network.");
        return b(context, str, str2);
    }
}
