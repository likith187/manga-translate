package t5;

import android.database.Cursor;
import androidx.room.h;
import androidx.room.k;
import androidx.room.n;
import s0.f;

/* JADX INFO: loaded from: classes.dex */
public final class b implements t5.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f15703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.c f15704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n f15705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n f15706d;

    class a extends androidx.room.c {
        a(h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "INSERT OR REPLACE INTO `a_e` (`id`,`auth_code`,`is_enable`,`uid`,`packageName`,`capability_name`,`expiration`,`permission`,`last_update_time`,`cache_time`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.c
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void g(f fVar, t5.c cVar) {
            fVar.e0(1, cVar.e());
            if (cVar.a() == null) {
                fVar.M(2);
            } else {
                fVar.z(2, cVar.a());
            }
            fVar.e0(3, cVar.j() ? 1L : 0L);
            fVar.e0(4, cVar.i());
            if (cVar.g() == null) {
                fVar.M(5);
            } else {
                fVar.z(5, cVar.g());
            }
            if (cVar.c() == null) {
                fVar.M(6);
            } else {
                fVar.z(6, cVar.c());
            }
            fVar.e0(7, cVar.d());
            if (cVar.h() == null) {
                fVar.M(8);
            } else {
                fVar.k0(8, cVar.h());
            }
            fVar.e0(9, cVar.f());
            fVar.e0(10, cVar.b());
        }
    }

    /* JADX INFO: renamed from: t5.b$b, reason: collision with other inner class name */
    class C0224b extends n {
        C0224b(h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE from a_e WHERE a_e.uid = (?)AND a_e.capability_name = (?)AND a_e.auth_code = (?)";
        }
    }

    class c extends n {
        c(h hVar) {
            super(hVar);
        }

        @Override // androidx.room.n
        public String d() {
            return "DELETE from a_e";
        }
    }

    public b(h hVar) {
        this.f15703a = hVar;
        this.f15704b = new a(hVar);
        this.f15705c = new C0224b(hVar);
        this.f15706d = new c(hVar);
    }

    @Override // t5.a
    public void a(t5.c cVar) {
        this.f15703a.b();
        this.f15703a.c();
        try {
            this.f15704b.i(cVar);
            this.f15703a.r();
        } finally {
            this.f15703a.g();
        }
    }

    @Override // t5.a
    public t5.c b(int i10, String str, String str2, String str3) {
        k kVarK = k.k("SELECT * FROM a_e WHERE a_e.uid = (?)AND a_e.packageName = (?)AND a_e.capability_name = (?)AND a_e.auth_code = (?)", 4);
        kVarK.e0(1, i10);
        if (str == null) {
            kVarK.M(2);
        } else {
            kVarK.z(2, str);
        }
        if (str2 == null) {
            kVarK.M(3);
        } else {
            kVarK.z(3, str2);
        }
        if (str3 == null) {
            kVarK.M(4);
        } else {
            kVarK.z(4, str3);
        }
        this.f15703a.b();
        t5.c cVar = null;
        Cursor cursorB = p0.c.b(this.f15703a, kVarK, false, null);
        try {
            int iB = p0.b.b(cursorB, "id");
            int iB2 = p0.b.b(cursorB, "auth_code");
            int iB3 = p0.b.b(cursorB, "is_enable");
            int iB4 = p0.b.b(cursorB, "uid");
            int iB5 = p0.b.b(cursorB, "packageName");
            int iB6 = p0.b.b(cursorB, "capability_name");
            int iB7 = p0.b.b(cursorB, "expiration");
            int iB8 = p0.b.b(cursorB, "permission");
            int iB9 = p0.b.b(cursorB, "last_update_time");
            int iB10 = p0.b.b(cursorB, "cache_time");
            if (cursorB.moveToFirst()) {
                cVar = new t5.c(cursorB.getString(iB2), cursorB.getInt(iB3) != 0, cursorB.getInt(iB4), cursorB.getString(iB5), cursorB.getString(iB6), cursorB.getLong(iB7), cursorB.getBlob(iB8), cursorB.getLong(iB9), cursorB.getLong(iB10));
                cVar.k(cursorB.getInt(iB));
            }
            return cVar;
        } finally {
            cursorB.close();
            kVarK.B();
        }
    }
}
