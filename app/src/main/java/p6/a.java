package p6;

import android.database.Cursor;
import android.database.MatrixCursor;
import androidx.appcompat.app.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p6.b;

/* JADX INFO: loaded from: classes2.dex */
class a {

    /* JADX INFO: renamed from: a */
    protected static final List f15192a = new ArrayList();

    /* JADX INFO: renamed from: b */
    private static final List f15193b = new ArrayList();

    /* JADX INFO: renamed from: c */
    private static final List f15194c = new ArrayList();

    /* JADX INFO: renamed from: d */
    private static b.EnumC0201b f15195d;

    /* JADX INFO: renamed from: e */
    private static b.EnumC0201b f15196e;

    /* JADX INFO: renamed from: f */
    private static b.EnumC0201b f15197f;

    /* JADX INFO: renamed from: p6.a$a */
    static /* synthetic */ class C0200a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f15198a;

        static {
            int[] iArr = new int[b.c.values().length];
            f15198a = iArr;
            try {
                iArr[b.c.STATIC_COMPONENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15198a[b.c.DYNAMIC_SIMSLOT_1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15198a[b.c.DYNAMIC_SIMSLOT_2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a */
        static final a f15199a = new a();
    }

    static {
        b.EnumC0201b enumC0201b = b.EnumC0201b.CACHE_AND_DB;
        f15195d = enumC0201b;
        f15196e = enumC0201b;
        f15197f = enumC0201b;
    }

    a() {
    }

    private List a(b.c cVar) {
        int i10 = C0200a.f15198a[cVar.ordinal()];
        if (i10 == 1) {
            return f15192a;
        }
        if (i10 == 2) {
            return f15193b;
        }
        if (i10 == 3) {
            return f15194c;
        }
        throw new IllegalArgumentException("getCacheList FeatureID is not supported");
    }

    static b.EnumC0201b b(b.c cVar) {
        int i10 = C0200a.f15198a[cVar.ordinal()];
        if (i10 == 1) {
            return f15195d;
        }
        if (i10 == 2) {
            return f15196e;
        }
        if (i10 == 3) {
            return f15197f;
        }
        throw new IllegalArgumentException("getCachedMode featureID is not supported");
    }

    private Cursor d(List list, String str) {
        MatrixCursor matrixCursorF = f();
        synchronized (a.class) {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    t.a(it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (matrixCursorF.getCount() != 0) {
            return matrixCursorF;
        }
        matrixCursorF.close();
        return null;
    }

    public static a e() {
        return b.f15199a;
    }

    private MatrixCursor f() {
        return new MatrixCursor(new String[]{"_id", "featurename", "parameters", "lists"});
    }

    private boolean g(List list) {
        return list != null && list.size() == 0;
    }

    public Cursor c(b.c cVar, String str) {
        List listA = a(cVar);
        if (g(listA)) {
            return null;
        }
        return d(listA, str);
    }
}
