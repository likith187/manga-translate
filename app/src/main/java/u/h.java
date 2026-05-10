package u;

import a0.g;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.Handler;
import java.util.List;
import t.e;
import t.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a */
    private static final j f15816a;

    /* JADX INFO: renamed from: b */
    private static final androidx.collection.h f15817b;

    public static class a extends g.c {

        /* JADX INFO: renamed from: a */
        private h.e f15818a;

        public a(h.e eVar) {
            this.f15818a = eVar;
        }

        @Override // a0.g.c
        public void a(int i10) {
            h.e eVar = this.f15818a;
            if (eVar != null) {
                eVar.f(i10);
            }
        }

        @Override // a0.g.c
        public void b(Typeface typeface) {
            h.e eVar = this.f15818a;
            if (eVar != null) {
                eVar.g(typeface);
            }
        }
    }

    static {
        v0.a.a("TypefaceCompat static init");
        f15816a = new i();
        f15817b = new androidx.collection.h(16);
        v0.a.b();
    }

    public static Typeface a(Context context, Typeface typeface, int i10) {
        if (context != null) {
            return Typeface.create(typeface, i10);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, CancellationSignal cancellationSignal, g.b[] bVarArr, int i10) {
        v0.a.a("TypefaceCompat.createFromFontInfo");
        try {
            return f15816a.b(context, cancellationSignal, bVarArr, i10);
        } finally {
            v0.a.b();
        }
    }

    public static Typeface c(Context context, CancellationSignal cancellationSignal, List list, int i10) {
        v0.a.a("TypefaceCompat.createFromFontInfoWithFallback");
        try {
            return f15816a.c(context, cancellationSignal, list, i10);
        } finally {
            v0.a.b();
        }
    }

    public static Typeface d(Context context, e.b bVar, Resources resources, int i10, String str, int i11, int i12, h.e eVar, Handler handler, boolean z10) {
        Typeface typefaceA;
        if (bVar instanceof e.C0219e) {
            e.C0219e c0219e = (e.C0219e) bVar;
            Typeface typefaceH = h(c0219e.d());
            if (typefaceH != null) {
                if (eVar != null) {
                    eVar.d(typefaceH, handler);
                }
                return typefaceH;
            }
            typefaceA = a0.g.c(context, c0219e.a() != null ? List.of(c0219e.c(), c0219e.a()) : List.of(c0219e.c()), i12, !z10 ? eVar != null : c0219e.b() != 0, z10 ? c0219e.e() : -1, h.e.e(handler), new a(eVar));
        } else {
            typefaceA = f15816a.a(context, (e.c) bVar, resources, i12);
            if (eVar != null) {
                if (typefaceA != null) {
                    eVar.d(typefaceA, handler);
                } else {
                    eVar.c(-3, handler);
                }
            }
        }
        if (typefaceA != null) {
            f15817b.put(f(resources, i10, str, i11, i12), typefaceA);
        }
        return typefaceA;
    }

    public static Typeface e(Context context, Resources resources, int i10, String str, int i11, int i12) {
        Typeface typefaceD = f15816a.d(context, resources, i10, str, i12);
        if (typefaceD != null) {
            f15817b.put(f(resources, i10, str, i11, i12), typefaceD);
        }
        return typefaceD;
    }

    private static String f(Resources resources, int i10, String str, int i11, int i12) {
        return resources.getResourcePackageName(i10) + '-' + str + '-' + i11 + '-' + i10 + '-' + i12;
    }

    public static Typeface g(Resources resources, int i10, String str, int i11, int i12) {
        return (Typeface) f15817b.get(f(resources, i10, str, i11, i12));
    }

    private static Typeface h(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface typefaceCreate = Typeface.create(str, 0);
        Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
        if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
            return null;
        }
        return typefaceCreate;
    }
}
