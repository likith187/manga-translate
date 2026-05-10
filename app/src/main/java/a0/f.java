package a0;

import a0.g;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import androidx.collection.i;
import com.oplus.backup.sdk.common.utils.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
abstract class f {

    /* JADX INFO: renamed from: a */
    static final androidx.collection.h f33a = new androidx.collection.h(16);

    /* JADX INFO: renamed from: b */
    private static final ExecutorService f34b = h.a("fonts-androidx", 10, 10000);

    /* JADX INFO: renamed from: c */
    static final Object f35c = new Object();

    /* JADX INFO: renamed from: d */
    static final i f36d = new i();

    class a implements Callable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ String f37a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Context f38b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ a0.e f39c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ int f40d;

        a(String str, Context context, a0.e eVar, int i10) {
            this.f37a = str;
            this.f38b = context;
            this.f39c = eVar;
            this.f40d = i10;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a */
        public e call() {
            return f.c(this.f37a, this.f38b, List.of(this.f39c), this.f40d);
        }
    }

    class b implements c0.a {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ a0.a f41a;

        b(a0.a aVar) {
            this.f41a = aVar;
        }

        @Override // c0.a
        /* JADX INFO: renamed from: a */
        public void accept(e eVar) {
            if (eVar == null) {
                eVar = new e(-3);
            }
            this.f41a.b(eVar);
        }
    }

    class c implements Callable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ String f42a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Context f43b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ List f44c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ int f45d;

        c(String str, Context context, List list, int i10) {
            this.f42a = str;
            this.f43b = context;
            this.f44c = list;
            this.f45d = i10;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a */
        public e call() {
            try {
                return f.c(this.f42a, this.f43b, this.f44c, this.f45d);
            } catch (Throwable unused) {
                return new e(-3);
            }
        }
    }

    class d implements c0.a {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ String f46a;

        d(String str) {
            this.f46a = str;
        }

        @Override // c0.a
        /* JADX INFO: renamed from: a */
        public void accept(e eVar) {
            synchronized (f.f35c) {
                try {
                    i iVar = f.f36d;
                    ArrayList arrayList = (ArrayList) iVar.get(this.f46a);
                    if (arrayList == null) {
                        return;
                    }
                    iVar.remove(this.f46a);
                    for (int i10 = 0; i10 < arrayList.size(); i10++) {
                        ((c0.a) arrayList.get(i10)).accept(eVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private static String a(List list, int i10) {
        StringBuilder sb = new StringBuilder();
        for (int i11 = 0; i11 < list.size(); i11++) {
            sb.append(((a0.e) list.get(i11)).d());
            sb.append("-");
            sb.append(i10);
            if (i11 < list.size() - 1) {
                sb.append(Constants.DataMigration.SPLIT_TAG);
            }
        }
        return sb.toString();
    }

    private static int b(g.a aVar) {
        int i10 = 1;
        if (aVar.e() != 0) {
            return aVar.e() != 1 ? -3 : -2;
        }
        g.b[] bVarArrC = aVar.c();
        if (bVarArrC != null && bVarArrC.length != 0) {
            i10 = 0;
            for (g.b bVar : bVarArrC) {
                int iB = bVar.b();
                if (iB != 0) {
                    if (iB < 0) {
                        return -3;
                    }
                    return iB;
                }
            }
        }
        return i10;
    }

    static e c(String str, Context context, List list, int i10) {
        v0.a.a("getFontSync");
        try {
            androidx.collection.h hVar = f33a;
            Typeface typeface = (Typeface) hVar.get(str);
            if (typeface != null) {
                return new e(typeface);
            }
            g.a aVarE = a0.d.e(context, list, null);
            int iB = b(aVarE);
            if (iB != 0) {
                return new e(iB);
            }
            Typeface typefaceC = aVarE.f() ? u.h.c(context, null, aVarE.d(), i10) : u.h.b(context, null, aVarE.c(), i10);
            if (typefaceC == null) {
                return new e(-3);
            }
            hVar.put(str, typefaceC);
            return new e(typefaceC);
        } catch (PackageManager.NameNotFoundException unused) {
            return new e(-1);
        } finally {
            v0.a.b();
        }
    }

    static Typeface d(Context context, List list, int i10, Executor executor, a0.a aVar) {
        String strA = a(list, i10);
        Typeface typeface = (Typeface) f33a.get(strA);
        if (typeface != null) {
            aVar.b(new e(typeface));
            return typeface;
        }
        b bVar = new b(aVar);
        synchronized (f35c) {
            try {
                i iVar = f36d;
                ArrayList arrayList = (ArrayList) iVar.get(strA);
                if (arrayList != null) {
                    arrayList.add(bVar);
                    return null;
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(bVar);
                iVar.put(strA, arrayList2);
                c cVar = new c(strA, context, list, i10);
                if (executor == null) {
                    executor = f34b;
                }
                h.c(executor, cVar, new d(strA));
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static Typeface e(Context context, a0.e eVar, a0.a aVar, int i10, int i11) {
        String strA = a(List.of(eVar), i10);
        Typeface typeface = (Typeface) f33a.get(strA);
        if (typeface != null) {
            aVar.b(new e(typeface));
            return typeface;
        }
        if (i11 == -1) {
            e eVarC = c(strA, context, List.of(eVar), i10);
            aVar.b(eVarC);
            return eVarC.f47a;
        }
        try {
            e eVar2 = (e) h.d(f34b, new a(strA, context, eVar, i10), i11);
            aVar.b(eVar2);
            return eVar2.f47a;
        } catch (InterruptedException unused) {
            aVar.b(new e(-3));
            return null;
        }
    }

    static final class e {

        /* JADX INFO: renamed from: a */
        final Typeface f47a;

        /* JADX INFO: renamed from: b */
        final int f48b;

        e(int i10) {
            this.f47a = null;
            this.f48b = i10;
        }

        boolean a() {
            return this.f48b == 0;
        }

        e(Typeface typeface) {
            this.f47a = typeface;
            this.f48b = 0;
        }
    }
}
