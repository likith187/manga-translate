package s0;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface c {

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15496a;

        public a(int i10) {
            this.f15496a = i10;
        }

        private void a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception e10) {
                Log.w("SupportSQLite", "delete failed: ", e10);
            }
        }

        public void b(s0.b bVar) {
        }

        public void c(s0.b bVar) {
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + bVar.a());
            if (!bVar.isOpen()) {
                a(bVar.a());
                return;
            }
            List listT = null;
            try {
                try {
                    listT = bVar.t();
                } finally {
                    if (listT != null) {
                        Iterator it = listT.iterator();
                        while (it.hasNext()) {
                            a((String) ((Pair) it.next()).second);
                        }
                    } else {
                        a(bVar.a());
                    }
                }
            } catch (SQLiteException unused) {
            }
            try {
                bVar.close();
            } catch (IOException unused2) {
            }
        }

        public abstract void d(s0.b bVar);

        public abstract void e(s0.b bVar, int i10, int i11);

        public void f(s0.b bVar) {
        }

        public abstract void g(s0.b bVar, int i10, int i11);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f15497a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15498b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f15499c;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            Context f15500a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            String f15501b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            a f15502c;

            a(Context context) {
                this.f15500a = context;
            }

            public b a() {
                a aVar = this.f15502c;
                if (aVar == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                }
                Context context = this.f15500a;
                if (context != null) {
                    return new b(context, this.f15501b, aVar);
                }
                throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
            }

            public a b(a aVar) {
                this.f15502c = aVar;
                return this;
            }

            public a c(String str) {
                this.f15501b = str;
                return this;
            }
        }

        b(Context context, String str, a aVar) {
            this.f15497a = context;
            this.f15498b = str;
            this.f15499c = aVar;
        }

        public static a a(Context context) {
            return new a(context);
        }
    }

    /* JADX INFO: renamed from: s0.c$c, reason: collision with other inner class name */
    public interface InterfaceC0215c {
        c a(b bVar);
    }

    void a(boolean z10);

    s0.b b();

    s0.b c();

    String d();
}
