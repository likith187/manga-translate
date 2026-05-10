package androidx.room;

import android.database.Cursor;
import java.util.Iterator;
import java.util.List;
import s0.c;

/* JADX INFO: loaded from: classes.dex */
public class j extends c.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.room.a f3577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f3578c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3579d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f3580e;

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3581a;

        public a(int i10) {
            this.f3581a = i10;
        }

        protected abstract void a(s0.b bVar);

        protected abstract void b(s0.b bVar);

        protected abstract void c(s0.b bVar);

        protected abstract void d(s0.b bVar);

        protected abstract void e(s0.b bVar);

        protected abstract void f(s0.b bVar);

        protected abstract b g(s0.b bVar);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f3582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f3583b;

        public b(boolean z10, String str) {
            this.f3582a = z10;
            this.f3583b = str;
        }
    }

    public j(androidx.room.a aVar, a aVar2, String str, String str2) {
        super(aVar2.f3581a);
        this.f3577b = aVar;
        this.f3578c = aVar2;
        this.f3579d = str;
        this.f3580e = str2;
    }

    private void h(s0.b bVar) {
        if (!k(bVar)) {
            b bVarG = this.f3578c.g(bVar);
            if (bVarG.f3582a) {
                this.f3578c.e(bVar);
                l(bVar);
                return;
            } else {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + bVarG.f3583b);
            }
        }
        Cursor cursorP0 = bVar.p0(new s0.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
        try {
            String string = cursorP0.moveToFirst() ? cursorP0.getString(0) : null;
            cursorP0.close();
            if (!this.f3579d.equals(string) && !this.f3580e.equals(string)) {
                throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
            }
        } catch (Throwable th) {
            cursorP0.close();
            throw th;
        }
    }

    private void i(s0.b bVar) {
        bVar.y("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    private static boolean j(s0.b bVar) {
        Cursor cursorY0 = bVar.y0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z10 = false;
            if (cursorY0.moveToFirst()) {
                if (cursorY0.getInt(0) == 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            cursorY0.close();
        }
    }

    private static boolean k(s0.b bVar) {
        Cursor cursorY0 = bVar.y0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z10 = false;
            if (cursorY0.moveToFirst()) {
                if (cursorY0.getInt(0) != 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            cursorY0.close();
        }
    }

    private void l(s0.b bVar) {
        i(bVar);
        bVar.y(i.a(this.f3579d));
    }

    @Override // s0.c.a
    public void b(s0.b bVar) {
        super.b(bVar);
    }

    @Override // s0.c.a
    public void d(s0.b bVar) {
        boolean zJ = j(bVar);
        this.f3578c.a(bVar);
        if (!zJ) {
            b bVarG = this.f3578c.g(bVar);
            if (!bVarG.f3582a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + bVarG.f3583b);
            }
        }
        l(bVar);
        this.f3578c.c(bVar);
    }

    @Override // s0.c.a
    public void e(s0.b bVar, int i10, int i11) {
        g(bVar, i10, i11);
    }

    @Override // s0.c.a
    public void f(s0.b bVar) {
        super.f(bVar);
        h(bVar);
        this.f3578c.d(bVar);
        this.f3577b = null;
    }

    @Override // s0.c.a
    public void g(s0.b bVar, int i10, int i11) {
        List listC;
        androidx.room.a aVar = this.f3577b;
        if (aVar == null || (listC = aVar.f3489d.c(i10, i11)) == null) {
            androidx.room.a aVar2 = this.f3577b;
            if (aVar2 != null && !aVar2.a(i10, i11)) {
                this.f3578c.b(bVar);
                this.f3578c.a(bVar);
                return;
            }
            throw new IllegalStateException("A migration from " + i10 + " to " + i11 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
        this.f3578c.f(bVar);
        Iterator it = listC.iterator();
        while (it.hasNext()) {
            ((o0.a) it.next()).a(bVar);
        }
        b bVarG = this.f3578c.g(bVar);
        if (bVarG.f3582a) {
            this.f3578c.e(bVar);
            l(bVar);
        } else {
            throw new IllegalStateException("Migration didn't properly handle: " + bVarG.f3583b);
        }
    }
}
