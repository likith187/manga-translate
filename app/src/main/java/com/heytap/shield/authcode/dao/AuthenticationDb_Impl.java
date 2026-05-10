package com.heytap.shield.authcode.dao;

import androidx.appcompat.app.t;
import androidx.room.h;
import androidx.room.j;
import java.util.HashMap;
import java.util.HashSet;
import p0.c;
import p0.e;
import s0.b;
import s0.c;

/* JADX INFO: loaded from: classes.dex */
public final class AuthenticationDb_Impl extends AuthenticationDb {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile t5.a f10822m;

    class a extends j.a {
        a(int i10) {
            super(i10);
        }

        @Override // androidx.room.j.a
        public void a(b bVar) {
            bVar.y("CREATE TABLE IF NOT EXISTS `a_e` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `auth_code` TEXT, `is_enable` INTEGER NOT NULL, `uid` INTEGER NOT NULL, `packageName` TEXT, `capability_name` TEXT, `expiration` INTEGER NOT NULL, `permission` BLOB, `last_update_time` INTEGER NOT NULL, `cache_time` INTEGER NOT NULL)");
            bVar.y("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            bVar.y("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '4900734c010240a846af4887983ab420')");
        }

        @Override // androidx.room.j.a
        public void b(b bVar) {
            bVar.y("DROP TABLE IF EXISTS `a_e`");
            if (((h) AuthenticationDb_Impl.this).f3555h == null || ((h) AuthenticationDb_Impl.this).f3555h.size() <= 0) {
                return;
            }
            t.a(((h) AuthenticationDb_Impl.this).f3555h.get(0));
            throw null;
        }

        @Override // androidx.room.j.a
        protected void c(b bVar) {
            if (((h) AuthenticationDb_Impl.this).f3555h == null || ((h) AuthenticationDb_Impl.this).f3555h.size() <= 0) {
                return;
            }
            t.a(((h) AuthenticationDb_Impl.this).f3555h.get(0));
            throw null;
        }

        @Override // androidx.room.j.a
        public void d(b bVar) {
            ((h) AuthenticationDb_Impl.this).f3548a = bVar;
            AuthenticationDb_Impl.this.m(bVar);
            if (((h) AuthenticationDb_Impl.this).f3555h == null || ((h) AuthenticationDb_Impl.this).f3555h.size() <= 0) {
                return;
            }
            t.a(((h) AuthenticationDb_Impl.this).f3555h.get(0));
            throw null;
        }

        @Override // androidx.room.j.a
        public void e(b bVar) {
        }

        @Override // androidx.room.j.a
        public void f(b bVar) {
            c.a(bVar);
        }

        @Override // androidx.room.j.a
        protected j.b g(b bVar) {
            HashMap map = new HashMap(10);
            map.put("id", new e.a("id", "INTEGER", true, 1, null, 1));
            map.put("auth_code", new e.a("auth_code", "TEXT", false, 0, null, 1));
            map.put("is_enable", new e.a("is_enable", "INTEGER", true, 0, null, 1));
            map.put("uid", new e.a("uid", "INTEGER", true, 0, null, 1));
            map.put("packageName", new e.a("packageName", "TEXT", false, 0, null, 1));
            map.put("capability_name", new e.a("capability_name", "TEXT", false, 0, null, 1));
            map.put("expiration", new e.a("expiration", "INTEGER", true, 0, null, 1));
            map.put("permission", new e.a("permission", "BLOB", false, 0, null, 1));
            map.put("last_update_time", new e.a("last_update_time", "INTEGER", true, 0, null, 1));
            map.put("cache_time", new e.a("cache_time", "INTEGER", true, 0, null, 1));
            e eVar = new e("a_e", map, new HashSet(0), new HashSet(0));
            e eVarA = e.a(bVar, "a_e");
            if (eVar.equals(eVarA)) {
                return new j.b(true, null);
            }
            return new j.b(false, "a_e(com.heytap.shield.authcode.dao.AuthenticationDbBean).\n Expected:\n" + eVar + "\n Found:\n" + eVarA);
        }
    }

    @Override // androidx.room.h
    protected androidx.room.e e() {
        return new androidx.room.e(this, new HashMap(0), new HashMap(0), "a_e");
    }

    @Override // androidx.room.h
    protected s0.c f(androidx.room.a aVar) {
        return aVar.f3486a.a(c.b.a(aVar.f3487b).c(aVar.f3488c).b(new j(aVar, new a(1), "4900734c010240a846af4887983ab420", "bcb6b006fd96cb6cf4245dc2a4b99c48")).a());
    }

    @Override // com.heytap.shield.authcode.dao.AuthenticationDb
    public t5.a s() {
        t5.a aVar;
        if (this.f10822m != null) {
            return this.f10822m;
        }
        synchronized (this) {
            try {
                if (this.f10822m == null) {
                    this.f10822m = new t5.b(this);
                }
                aVar = this.f10822m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }
}
