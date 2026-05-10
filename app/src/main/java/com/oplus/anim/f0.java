package com.oplus.anim;

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
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a */
    private static final Map f11020a = new HashMap();

    /* JADX INFO: renamed from: b */
    private static final Set f11021b = new HashSet();

    /* JADX INFO: renamed from: c */
    private static final byte[] f11022c = {80, 75, 3, 4};

    private static boolean A(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    private static Boolean B(t9.f fVar) {
        try {
            t9.f fVarJ0 = fVar.j0();
            for (byte b10 : f11022c) {
                if (fVarJ0.C0() != b10) {
                    return Boolean.FALSE;
                }
            }
            fVarJ0.close();
            return Boolean.TRUE;
        } catch (Exception e10) {
            l6.e.b("Failed to check zip file header", e10);
            return Boolean.FALSE;
        } catch (NoSuchMethodError unused) {
            return Boolean.FALSE;
        }
    }

    public static /* synthetic */ void C(String str, AtomicBoolean atomicBoolean, Throwable th) {
        Map map = f11020a;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            J(true);
        }
    }

    public static /* synthetic */ r D(a aVar) {
        return new r(aVar);
    }

    public static /* synthetic */ void E(String str, AtomicBoolean atomicBoolean, a aVar) {
        Map map = f11020a;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            J(true);
        }
    }

    public static /* synthetic */ r H(WeakReference weakReference, Context context, int i10, String str) {
        Context context2 = (Context) weakReference.get();
        if (context2 != null) {
            context = context2;
        }
        return v(context, i10, str);
    }

    public static /* synthetic */ r I(Context context, String str, String str2) {
        r rVarC = k0.d(context).c(context, str, str2);
        if (str2 != null && rVarC.b() != null) {
            f6.c.b().c(str2, (a) rVarC.b());
        }
        return rVarC;
    }

    private static void J(boolean z10) {
        ArrayList arrayList = new ArrayList(f11021b);
        if (arrayList.size() <= 0) {
            return;
        }
        androidx.appcompat.app.t.a(arrayList.get(0));
        throw null;
    }

    private static String K(Context context, int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append("rawRes");
        sb.append(A(context) ? "_night_" : "_day_");
        sb.append(i10);
        return sb.toString();
    }

    private static t h(final String str, Callable callable) {
        final a aVarA = str == null ? null : f6.c.b().a(str);
        if (aVarA != null) {
            return new t(new Callable() { // from class: com.oplus.anim.c0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return f0.D(aVarA);
                }
            });
        }
        if (str != null) {
            Map map = f11020a;
            if (map.containsKey(str)) {
                return (t) map.get(str);
            }
        }
        t tVar = new t(callable);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            tVar.d(new p() { // from class: com.oplus.anim.d0
                @Override // com.oplus.anim.p
                public final void a(Object obj) {
                    f0.E(str, atomicBoolean, (a) obj);
                }
            });
            tVar.c(new p() { // from class: com.oplus.anim.e0
                @Override // com.oplus.anim.p
                public final void a(Object obj) {
                    f0.C(str, atomicBoolean, (Throwable) obj);
                }
            });
            if (!atomicBoolean.get()) {
                Map map2 = f11020a;
                map2.put(str, tVar);
                if (map2.size() == 1) {
                    J(false);
                }
            }
        }
        return tVar;
    }

    private static g0 i(a aVar, String str) {
        for (g0 g0Var : aVar.j().values()) {
            if (g0Var.b().equals(str)) {
                return g0Var;
            }
        }
        return null;
    }

    public static t j(Context context, String str) {
        return k(context, str, "asset_" + str);
    }

    public static t k(Context context, final String str, final String str2) {
        final Context applicationContext = context.getApplicationContext();
        return h(str2, new Callable() { // from class: com.oplus.anim.b0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return f0.m(applicationContext, str, str2);
            }
        });
    }

    public static r l(Context context, String str) {
        return m(context, str, "asset_" + str);
    }

    public static r m(Context context, String str, String str2) {
        try {
            if (!l6.h.m(str, ".zip") && !l6.h.m(str, ".lottie")) {
                return o(context.getAssets().open(str), str2);
            }
            return y(context, new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e10) {
            return new r((Throwable) e10);
        }
    }

    public static t n(final InputStream inputStream, final String str) {
        return h(str, new Callable() { // from class: com.oplus.anim.y
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return f0.o(inputStream, str);
            }
        });
    }

    public static r o(InputStream inputStream, String str) {
        return p(inputStream, str, true);
    }

    private static r p(InputStream inputStream, String str, boolean z10) {
        try {
            return q(com.oplus.anim.parser.moshi.c.a0(t9.n.b(t9.n.e(inputStream))), str);
        } finally {
            if (z10) {
                l6.h.c(inputStream);
            }
        }
    }

    public static r q(com.oplus.anim.parser.moshi.c cVar, String str) {
        return r(cVar, str, true);
    }

    private static r r(com.oplus.anim.parser.moshi.c cVar, String str, boolean z10) {
        try {
            try {
                a aVarA = k6.l.a(cVar);
                if (str != null) {
                    f6.c.b().c(str, aVarA);
                }
                r rVar = new r(aVarA);
                if (z10) {
                    l6.h.c(cVar);
                }
                return rVar;
            } catch (Exception e10) {
                r rVar2 = new r((Throwable) e10);
                if (z10) {
                    l6.h.c(cVar);
                }
                return rVar2;
            }
        } catch (Throwable th) {
            if (z10) {
                l6.h.c(cVar);
            }
            throw th;
        }
    }

    public static t s(Context context, int i10) {
        return t(context, i10, K(context, i10));
    }

    public static t t(Context context, final int i10, final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return h(str, new Callable() { // from class: com.oplus.anim.a0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return f0.H(weakReference, applicationContext, i10, str);
            }
        });
    }

    public static r u(Context context, int i10) {
        return v(context, i10, K(context, i10));
    }

    public static r v(Context context, int i10, String str) {
        try {
            t9.f fVarB = t9.n.b(t9.n.e(context.getResources().openRawResource(i10)));
            return B(fVarB).booleanValue() ? y(context, new ZipInputStream(fVarB.B0()), str) : o(fVarB.B0(), str);
        } catch (Resources.NotFoundException e10) {
            return new r((Throwable) e10);
        }
    }

    public static t w(Context context, String str) {
        return x(context, str, "url_" + str);
    }

    public static t x(final Context context, final String str, final String str2) {
        return h(str2, new Callable() { // from class: com.oplus.anim.z
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return f0.I(context, str, str2);
            }
        });
    }

    public static r y(Context context, ZipInputStream zipInputStream, String str) {
        try {
            return z(context, zipInputStream, str);
        } finally {
            l6.h.c(zipInputStream);
        }
    }

    private static r z(Context context, ZipInputStream zipInputStream, String str) {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            a aVar = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    aVar = (a) r(com.oplus.anim.parser.moshi.c.a0(t9.n.b(t9.n.e(zipInputStream))), null, false).b();
                } else if (name.contains(".png") || name.contains(".webp") || name.contains(".jpg") || name.contains(".jpeg")) {
                    String[] strArrSplit = name.split("/");
                    map.put(strArrSplit[strArrSplit.length - 1], BitmapFactory.decodeStream(zipInputStream));
                } else if (name.contains(".ttf") || name.contains(".otf")) {
                    String[] strArrSplit2 = name.split("/");
                    String str2 = strArrSplit2[strArrSplit2.length - 1];
                    String str3 = str2.split("\\.")[0];
                    File file = new File(context.getCacheDir(), str2);
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[ConfigPackage.FRAME_SIZE_5];
                            while (true) {
                                int i10 = zipInputStream.read(bArr);
                                if (i10 == -1) {
                                    break;
                                }
                                fileOutputStream2.write(bArr, 0, i10);
                            }
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                        } catch (Throwable th) {
                            try {
                                fileOutputStream2.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        l6.e.d("Unable to save font " + str3 + " to the temporary file: " + str2 + ". ", th3);
                    }
                    Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                    if (!file.delete()) {
                        l6.e.c("Failed to delete temp font file " + file.getAbsolutePath() + ".");
                    }
                    map2.put(str3, typefaceCreateFromFile);
                    fileOutputStream.close();
                } else {
                    zipInputStream.closeEntry();
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (aVar == null) {
                return new r((Throwable) new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : map.entrySet()) {
                g0 g0VarI = i(aVar, (String) entry.getKey());
                if (g0VarI != null) {
                    g0VarI.f(l6.h.l((Bitmap) entry.getValue(), g0VarI.e(), g0VarI.c()));
                }
            }
            for (Map.Entry entry2 : map2.entrySet()) {
                boolean z10 = false;
                for (f6.d dVar : aVar.g().values()) {
                    if (dVar.a().equals(entry2.getKey())) {
                        dVar.e((Typeface) entry2.getValue());
                        z10 = true;
                    }
                }
                if (!z10) {
                    l6.e.c("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
                }
            }
            if (map.isEmpty()) {
                Iterator it = aVar.j().entrySet().iterator();
                while (it.hasNext()) {
                    g0 g0Var = (g0) ((Map.Entry) it.next()).getValue();
                    if (g0Var == null) {
                        return null;
                    }
                    String strB = g0Var.b();
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inScaled = true;
                    options.inDensity = 160;
                    if (strB.startsWith("data:") && strB.indexOf("base64,") > 0) {
                        try {
                            byte[] bArrDecode = Base64.decode(strB.substring(strB.indexOf(44) + 1), 0);
                            g0Var.f(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
                        } catch (IllegalArgumentException e10) {
                            l6.e.d("data URL did not have correct base64 format.", e10);
                            return null;
                        }
                    }
                }
            }
            for (Map.Entry entry3 : aVar.j().entrySet()) {
                if (((g0) entry3.getValue()).a() == null) {
                    return new r((Throwable) new IllegalStateException("There is no image for " + ((g0) entry3.getValue()).b()));
                }
            }
            if (str != null) {
                f6.c.b().c(str, aVar);
            }
            return new r(aVar);
        } catch (IOException e11) {
            return new r((Throwable) e11);
        }
    }
}
