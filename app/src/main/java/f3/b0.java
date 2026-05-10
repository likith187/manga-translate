package f3;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import g3.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import y2.h;

/* JADX INFO: loaded from: classes.dex */
public class b0 implements f3.c, g3.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final w2.b f11870h = w2.b.b("proto");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f11871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h3.a f11872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h3.a f11873c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f3.d f11874f;

    interface b {
        Object apply(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f11875a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f11876b;

        private c(String str, String str2) {
            this.f11875a = str;
            this.f11876b = str2;
        }
    }

    interface d {
        Object a();
    }

    b0(h3.a aVar, h3.a aVar2, f3.d dVar, h0 h0Var) {
        this.f11871a = h0Var;
        this.f11872b = aVar;
        this.f11873c = aVar2;
        this.f11874f = dVar;
    }

    private long B() {
        return v().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    private Long D(SQLiteDatabase sQLiteDatabase, y2.m mVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(mVar.b(), String.valueOf(i3.a.a(mVar.d()))));
        if (mVar.c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(mVar.c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) U0(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), x.a());
    }

    static /* synthetic */ Boolean D0(b0 b0Var, y2.m mVar, SQLiteDatabase sQLiteDatabase) {
        Long lD = b0Var.D(sQLiteDatabase, mVar);
        return lD == null ? Boolean.FALSE : (Boolean) U0(b0Var.v().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lD.toString()}), u.a());
    }

    static /* synthetic */ List E0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(y2.m.a().b(cursor.getString(1)).d(i3.a.b(cursor.getInt(2))).c(P0(cursor.getString(3))).a());
        }
        return arrayList;
    }

    static /* synthetic */ List F0(SQLiteDatabase sQLiteDatabase) {
        return (List) U0(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), t.a());
    }

    static /* synthetic */ List G0(b0 b0Var, y2.m mVar, SQLiteDatabase sQLiteDatabase) {
        List listN0 = b0Var.N0(sQLiteDatabase, mVar);
        return b0Var.N(listN0, b0Var.O0(sQLiteDatabase, listN0));
    }

    static /* synthetic */ Object H0(b0 b0Var, List list, y2.m mVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j10 = cursor.getLong(0);
            boolean z10 = cursor.getInt(7) != 0;
            h.a aVarK = y2.h.a().j(cursor.getString(1)).i(cursor.getLong(2)).k(cursor.getLong(3));
            if (z10) {
                aVarK.h(new y2.g(S0(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                aVarK.h(new y2.g(S0(cursor.getString(4)), b0Var.Q0(j10)));
            }
            if (!cursor.isNull(6)) {
                aVarK.g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(i.a(j10, mVar, aVarK.d()));
        }
        return null;
    }

    private boolean I() {
        return x() * B() >= this.f11874f.f();
    }

    static /* synthetic */ Object I0(Map map, Cursor cursor) {
        while (true) {
            if (!cursor.moveToNext()) {
                return null;
            }
            long j10 = cursor.getLong(0);
            Set hashSet = (Set) map.get(Long.valueOf(j10));
            if (hashSet == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j10), hashSet);
            }
            hashSet.add(new c(cursor.getString(1), cursor.getString(2)));
        }
    }

    static /* synthetic */ Long J0(b0 b0Var, y2.m mVar, y2.h hVar, SQLiteDatabase sQLiteDatabase) {
        if (b0Var.I()) {
            return -1L;
        }
        long jK = b0Var.k(sQLiteDatabase, mVar);
        int iE = b0Var.f11874f.e();
        byte[] bArrA = hVar.e().a();
        boolean z10 = bArrA.length <= iE;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(jK));
        contentValues.put("transport_name", hVar.j());
        contentValues.put("timestamp_ms", Long.valueOf(hVar.f()));
        contentValues.put("uptime_ms", Long.valueOf(hVar.k()));
        contentValues.put("payload_encoding", hVar.e().b().a());
        contentValues.put("code", hVar.d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z10));
        contentValues.put("payload", z10 ? bArrA : new byte[0]);
        long jInsert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z10) {
            int iCeil = (int) Math.ceil(((double) bArrA.length) / ((double) iE));
            for (int i10 = 1; i10 <= iCeil; i10++) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrA, (i10 - 1) * iE, Math.min(i10 * iE, bArrA.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(jInsert));
                contentValues2.put("sequence_num", Integer.valueOf(i10));
                contentValues2.put("bytes", bArrCopyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry entry : hVar.i().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(jInsert));
            contentValues3.put("name", (String) entry.getKey());
            contentValues3.put("value", (String) entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(jInsert);
    }

    static /* synthetic */ byte[] K0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int length = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            length += blob.length;
        }
        byte[] bArr = new byte[length];
        int length2 = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            byte[] bArr2 = (byte[]) arrayList.get(i10);
            System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
            length2 += bArr2.length;
        }
        return bArr;
    }

    static /* synthetic */ Object L0(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    static /* synthetic */ Object M0(long j10, y2.m mVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j10));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{mVar.b(), String.valueOf(i3.a.a(mVar.d()))}) < 1) {
            contentValues.put("backend_name", mVar.b());
            contentValues.put("priority", Integer.valueOf(i3.a.a(mVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    private List N(List list, Map map) {
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            i iVar = (i) listIterator.next();
            if (map.containsKey(Long.valueOf(iVar.c()))) {
                h.a aVarL = iVar.b().l();
                for (c cVar : (Set) map.get(Long.valueOf(iVar.c()))) {
                    aVarL.c(cVar.f11875a, cVar.f11876b);
                }
                listIterator.set(i.a(iVar.c(), iVar.d(), aVarL.d()));
            }
        }
        return list;
    }

    private List N0(SQLiteDatabase sQLiteDatabase, y2.m mVar) {
        ArrayList arrayList = new ArrayList();
        Long lD = D(sQLiteDatabase, mVar);
        if (lD == null) {
            return arrayList;
        }
        U0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{lD.toString()}, null, null, null, String.valueOf(this.f11874f.d())), n.a(this, arrayList, mVar));
        return arrayList;
    }

    private Map O0(SQLiteDatabase sQLiteDatabase, List list) {
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i10 = 0; i10 < list.size(); i10++) {
            sb.append(((i) list.get(i10)).c());
            if (i10 < list.size() - 1) {
                sb.append(AbstractJsonLexerKt.COMMA);
            }
        }
        sb.append(')');
        U0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), p.a(map));
        return map;
    }

    private static byte[] P0(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    private byte[] Q0(long j10) {
        return (byte[]) U0(v().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j10)}, null, null, "sequence_num"), o.a());
    }

    private Object R0(d dVar, b bVar) {
        long time = this.f11873c.getTime();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e10) {
                if (this.f11873c.getTime() >= ((long) this.f11874f.b()) + time) {
                    return bVar.apply(e10);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    private static w2.b S0(String str) {
        return str == null ? f11870h : w2.b.b(str);
    }

    private static String T0(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((i) it.next()).c());
            if (it.hasNext()) {
                sb.append(AbstractJsonLexerKt.COMMA);
            }
        }
        sb.append(')');
        return sb.toString();
    }

    static Object U0(Cursor cursor, b bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    static /* synthetic */ Object a0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    static /* synthetic */ Object b0(Throwable th) {
        throw new g3.a("Timed out while trying to acquire the lock.", th);
    }

    private void i(SQLiteDatabase sQLiteDatabase) {
        R0(q.b(sQLiteDatabase), r.a());
    }

    private long k(SQLiteDatabase sQLiteDatabase, y2.m mVar) {
        Long lD = D(sQLiteDatabase, mVar);
        if (lD != null) {
            return lD.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", mVar.b());
        contentValues.put("priority", Integer.valueOf(i3.a.a(mVar.d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (mVar.c() != null) {
            contentValues.put("extras", Base64.encodeToString(mVar.c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    static /* synthetic */ SQLiteDatabase q0(Throwable th) {
        throw new g3.a("Timed out while trying to open db.", th);
    }

    static /* synthetic */ Long v0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    private long x() {
        return v().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    static /* synthetic */ Long x0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    @Override // f3.c
    public i C(y2.m mVar, y2.h hVar) {
        b3.a.b("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", mVar.d(), hVar.j(), mVar.b());
        long jLongValue = ((Long) G(w.a(this, mVar, hVar))).longValue();
        if (jLongValue < 1) {
            return null;
        }
        return i.a(jLongValue, mVar, hVar);
    }

    Object G(b bVar) {
        SQLiteDatabase sQLiteDatabaseV = v();
        sQLiteDatabaseV.beginTransaction();
        try {
            Object objApply = bVar.apply(sQLiteDatabaseV);
            sQLiteDatabaseV.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseV.endTransaction();
        }
    }

    @Override // f3.c
    public Iterable Y() {
        return (Iterable) G(l.a());
    }

    @Override // g3.b
    public Object c(b.a aVar) {
        SQLiteDatabase sQLiteDatabaseV = v();
        i(sQLiteDatabaseV);
        try {
            Object objC = aVar.c();
            sQLiteDatabaseV.setTransactionSuccessful();
            return objC;
        } finally {
            sQLiteDatabaseV.endTransaction();
        }
    }

    @Override // f3.c
    public Iterable c0(y2.m mVar) {
        return (Iterable) G(k.a(this, mVar));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f11871a.close();
    }

    @Override // f3.c
    public void m0(Iterable iterable) {
        if (iterable.iterator().hasNext()) {
            G(y.a("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + T0(iterable)));
        }
    }

    @Override // f3.c
    public int n() {
        return ((Integer) G(m.a(this.f11872b.getTime() - this.f11874f.c()))).intValue();
    }

    @Override // f3.c
    public long o(y2.m mVar) {
        return ((Long) U0(v().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{mVar.b(), String.valueOf(i3.a.a(mVar.d()))}), z.a())).longValue();
    }

    @Override // f3.c
    public boolean o0(y2.m mVar) {
        return ((Boolean) G(a0.a(this, mVar))).booleanValue();
    }

    @Override // f3.c
    public void q(Iterable iterable) {
        if (iterable.iterator().hasNext()) {
            v().compileStatement("DELETE FROM events WHERE _id in " + T0(iterable)).execute();
        }
    }

    @Override // f3.c
    public void s0(y2.m mVar, long j10) {
        G(j.a(j10, mVar));
    }

    SQLiteDatabase v() {
        h0 h0Var = this.f11871a;
        h0Var.getClass();
        return (SQLiteDatabase) R0(s.b(h0Var), v.a());
    }
}
