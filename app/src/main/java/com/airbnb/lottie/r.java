package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import com.oplus.aiunit.core.ConfigPackage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class r {

    /* JADX INFO: renamed from: a */
    private static final Map f4688a = new HashMap();

    /* JADX INFO: renamed from: b */
    private static final Set f4689b = new HashSet();

    /* JADX INFO: renamed from: c */
    private static final byte[] f4690c = {80, 75, 3, 4};

    /* JADX INFO: renamed from: d */
    private static final byte[] f4691d = {31, -117, 8};

    private static n0 A(Context context, ZipInputStream zipInputStream, String str) {
        j jVarA;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        if (str == null) {
            jVarA = null;
        } else {
            try {
                jVarA = l1.g.b().a(str);
            } catch (IOException e10) {
                return new n0((Throwable) e10);
            }
        }
        if (jVarA != null) {
            return new n0(jVarA);
        }
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        j jVar = null;
        while (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.contains("__MACOSX")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().contains(".json")) {
                jVar = (j) r(com.airbnb.lottie.parser.moshi.c.a0(t9.n.b(t9.n.e(zipInputStream))), null, false).b();
            } else if (name.contains(".png") || name.contains(".webp") || name.contains(".jpg") || name.contains(".jpeg")) {
                String[] strArrSplit = name.split("/");
                map.put(strArrSplit[strArrSplit.length - 1], BitmapFactory.decodeStream(zipInputStream));
            } else if (name.contains(".ttf") || name.contains(".otf")) {
                String[] strArrSplit2 = name.split("/");
                String str2 = strArrSplit2[strArrSplit2.length - 1];
                String str3 = str2.split("\\.")[0];
                File file = new File(context.getCacheDir(), str2);
                new FileOutputStream(file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[ConfigPackage.FRAME_SIZE_5];
                        while (true) {
                            int i10 = zipInputStream.read(bArr);
                            if (i10 == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                        }
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    r1.d.d("Unable to save font " + str3 + " to the temporary file: " + str2 + ". ", th3);
                }
                Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                if (!file.delete()) {
                    r1.d.c("Failed to delete temp font file " + file.getAbsolutePath() + ".");
                }
                map2.put(str3, typefaceCreateFromFile);
            } else {
                zipInputStream.closeEntry();
            }
            nextEntry = zipInputStream.getNextEntry();
        }
        if (jVar == null) {
            return new n0((Throwable) new IllegalArgumentException("Unable to parse composition"));
        }
        for (Map.Entry entry : map.entrySet()) {
            j0 j0VarI = i(jVar, (String) entry.getKey());
            if (j0VarI != null) {
                j0VarI.g(r1.j.l((Bitmap) entry.getValue(), j0VarI.f(), j0VarI.d()));
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            boolean z10 = false;
            for (l1.c cVar : jVar.g().values()) {
                if (cVar.a().equals(entry2.getKey())) {
                    cVar.e((Typeface) entry2.getValue());
                    z10 = true;
                }
            }
            if (!z10) {
                r1.d.c("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
            }
        }
        if (map.isEmpty()) {
            Iterator it = jVar.j().entrySet().iterator();
            while (it.hasNext()) {
                j0 j0Var = (j0) ((Map.Entry) it.next()).getValue();
                if (j0Var == null) {
                    return null;
                }
                String strC = j0Var.c();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = true;
                options.inDensity = 160;
                if (strC.startsWith("data:") && strC.indexOf("base64,") > 0) {
                    try {
                        byte[] bArrDecode = Base64.decode(strC.substring(strC.indexOf(44) + 1), 0);
                        j0Var.g(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
                    } catch (IllegalArgumentException e11) {
                        r1.d.d("data URL did not have correct base64 format.", e11);
                        return null;
                    }
                }
            }
        }
        if (str != null) {
            l1.g.b().c(str, jVar);
        }
        return new n0(jVar);
    }

    private static Boolean B(t9.f fVar) {
        return L(fVar, f4691d);
    }

    private static boolean C(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    private static Boolean D(t9.f fVar) {
        return L(fVar, f4690c);
    }

    public static /* synthetic */ void E(String str, AtomicBoolean atomicBoolean, j jVar) {
        Map map = f4688a;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            M(true);
        }
    }

    public static /* synthetic */ void F(String str, AtomicBoolean atomicBoolean, Throwable th) {
        Map map = f4688a;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            M(true);
        }
    }

    public static /* synthetic */ n0 J(WeakReference weakReference, Context context, int i10, String str) {
        Context context2 = (Context) weakReference.get();
        if (context2 != null) {
            context = context2;
        }
        return v(context, i10, str);
    }

    public static /* synthetic */ n0 K(Context context, String str, String str2) {
        n0 n0VarC = e.i(context).c(context, str, str2);
        if (str2 != null && n0VarC.b() != null) {
            l1.g.b().c(str2, (j) n0VarC.b());
        }
        return n0VarC;
    }

    private static Boolean L(t9.f fVar, byte[] bArr) {
        try {
            t9.f fVarJ0 = fVar.j0();
            for (byte b10 : bArr) {
                if (fVarJ0.C0() != b10) {
                    return Boolean.FALSE;
                }
            }
            fVarJ0.close();
            return Boolean.TRUE;
        } catch (Exception e10) {
            r1.d.b("Failed to check zip file header", e10);
            return Boolean.FALSE;
        } catch (NoSuchMethodError unused) {
            return Boolean.FALSE;
        }
    }

    private static void M(boolean z10) {
        ArrayList arrayList = new ArrayList(f4689b);
        if (arrayList.size() <= 0) {
            return;
        }
        androidx.appcompat.app.t.a(arrayList.get(0));
        throw null;
    }

    private static String N(Context context, int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append("rawRes");
        sb.append(C(context) ? "_night_" : "_day_");
        sb.append(i10);
        return sb.toString();
    }

    private static p0 h(final String str, Callable callable, Runnable runnable) {
        j jVarA = str == null ? null : l1.g.b().a(str);
        p0 p0Var = jVarA != null ? new p0(jVarA) : null;
        if (str != null) {
            Map map = f4688a;
            if (map.containsKey(str)) {
                p0Var = (p0) map.get(str);
            }
        }
        if (p0Var != null) {
            if (runnable != null) {
                runnable.run();
            }
            return p0Var;
        }
        p0 p0Var2 = new p0(callable);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            p0Var2.d(new k0() { // from class: com.airbnb.lottie.o
                @Override // com.airbnb.lottie.k0
                public final void a(Object obj) {
                    r.E(str, atomicBoolean, (j) obj);
                }
            });
            p0Var2.c(new k0() { // from class: com.airbnb.lottie.p
                @Override // com.airbnb.lottie.k0
                public final void a(Object obj) {
                    r.F(str, atomicBoolean, (Throwable) obj);
                }
            });
            if (!atomicBoolean.get()) {
                Map map2 = f4688a;
                map2.put(str, p0Var2);
                if (map2.size() == 1) {
                    M(false);
                }
            }
        }
        return p0Var2;
    }

    private static j0 i(j jVar, String str) {
        for (j0 j0Var : jVar.j().values()) {
            if (j0Var.c().equals(str)) {
                return j0Var;
            }
        }
        return null;
    }

    public static p0 j(Context context, String str) {
        return k(context, str, "asset_" + str);
    }

    public static p0 k(Context context, final String str, final String str2) {
        final Context applicationContext = context.getApplicationContext();
        return h(str2, new Callable() { // from class: com.airbnb.lottie.n
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.m(applicationContext, str, str2);
            }
        }, null);
    }

    public static n0 l(Context context, String str) {
        return m(context, str, "asset_" + str);
    }

    public static n0 m(Context context, String str, String str2) {
        j jVarA = str2 == null ? null : l1.g.b().a(str2);
        if (jVarA != null) {
            return new n0(jVarA);
        }
        try {
            t9.f fVarB = t9.n.b(t9.n.e(context.getAssets().open(str)));
            return D(fVarB).booleanValue() ? y(context, new ZipInputStream(fVarB.B0()), str2) : B(fVarB).booleanValue() ? o(new GZIPInputStream(fVarB.B0()), str2) : o(fVarB.B0(), str2);
        } catch (IOException e10) {
            return new n0((Throwable) e10);
        }
    }

    public static p0 n(final InputStream inputStream, final String str) {
        return h(str, new Callable() { // from class: com.airbnb.lottie.l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.o(inputStream, str);
            }
        }, new Runnable() { // from class: com.airbnb.lottie.m
            @Override // java.lang.Runnable
            public final void run() {
                r1.j.c(inputStream);
            }
        });
    }

    public static n0 o(InputStream inputStream, String str) {
        return p(inputStream, str, true);
    }

    public static n0 p(InputStream inputStream, String str, boolean z10) {
        return q(com.airbnb.lottie.parser.moshi.c.a0(t9.n.b(t9.n.e(inputStream))), str, z10);
    }

    public static n0 q(com.airbnb.lottie.parser.moshi.c cVar, String str, boolean z10) {
        return r(cVar, str, z10);
    }

    private static n0 r(com.airbnb.lottie.parser.moshi.c cVar, String str, boolean z10) {
        j jVarA;
        try {
            if (str == null) {
                jVarA = null;
            } else {
                try {
                    jVarA = l1.g.b().a(str);
                } catch (Exception e10) {
                    n0 n0Var = new n0((Throwable) e10);
                    if (z10) {
                        r1.j.c(cVar);
                    }
                    return n0Var;
                }
            }
            if (jVarA != null) {
                n0 n0Var2 = new n0(jVarA);
                if (z10) {
                    r1.j.c(cVar);
                }
                return n0Var2;
            }
            j jVarA2 = q1.w.a(cVar);
            if (str != null) {
                l1.g.b().c(str, jVarA2);
            }
            n0 n0Var3 = new n0(jVarA2);
            if (z10) {
                r1.j.c(cVar);
            }
            return n0Var3;
        } catch (Throwable th) {
            if (z10) {
                r1.j.c(cVar);
            }
            throw th;
        }
    }

    public static p0 s(Context context, int i10) {
        return t(context, i10, N(context, i10));
    }

    public static p0 t(Context context, final int i10, final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return h(str, new Callable() { // from class: com.airbnb.lottie.q
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.J(weakReference, applicationContext, i10, str);
            }
        }, null);
    }

    public static n0 u(Context context, int i10) {
        return v(context, i10, N(context, i10));
    }

    public static n0 v(Context context, int i10, String str) {
        j jVarA = str == null ? null : l1.g.b().a(str);
        if (jVarA != null) {
            return new n0(jVarA);
        }
        try {
            t9.f fVarB = t9.n.b(t9.n.e(context.getResources().openRawResource(i10)));
            if (D(fVarB).booleanValue()) {
                return y(context, new ZipInputStream(fVarB.B0()), str);
            }
            if (!B(fVarB).booleanValue()) {
                return o(fVarB.B0(), str);
            }
            try {
                return o(new GZIPInputStream(fVarB.B0()), str);
            } catch (IOException e10) {
                return new n0((Throwable) e10);
            }
        } catch (Resources.NotFoundException e11) {
            return new n0((Throwable) e11);
        }
    }

    public static p0 w(Context context, String str) {
        return x(context, str, "url_" + str);
    }

    public static p0 x(final Context context, final String str, final String str2) {
        return h(str2, new Callable() { // from class: com.airbnb.lottie.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.K(context, str, str2);
            }
        }, null);
    }

    public static n0 y(Context context, ZipInputStream zipInputStream, String str) {
        return z(context, zipInputStream, str, true);
    }

    public static n0 z(Context context, ZipInputStream zipInputStream, String str, boolean z10) {
        try {
            return A(context, zipInputStream, str);
        } finally {
            if (z10) {
                r1.j.c(zipInputStream);
            }
        }
    }
}
