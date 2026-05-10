package androidx.room;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: m */
    private static final String[] f3503m = {"UPDATE", "DELETE", "INSERT"};

    /* JADX INFO: renamed from: b */
    final String[] f3505b;

    /* JADX INFO: renamed from: c */
    private Map f3506c;

    /* JADX INFO: renamed from: d */
    final h f3507d;

    /* JADX INFO: renamed from: g */
    volatile s0.f f3510g;

    /* JADX INFO: renamed from: h */
    private b f3511h;

    /* JADX INFO: renamed from: i */
    private final androidx.room.d f3512i;

    /* JADX INFO: renamed from: k */
    private f f3514k;

    /* JADX INFO: renamed from: e */
    AtomicBoolean f3508e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f */
    private volatile boolean f3509f = false;

    /* JADX INFO: renamed from: j */
    final i.b f3513j = new i.b();

    /* JADX INFO: renamed from: l */
    Runnable f3515l = new a();

    /* JADX INFO: renamed from: a */
    final HashMap f3504a = new HashMap();

    class a implements Runnable {
        a() {
        }

        private Set a() {
            HashSet hashSet = new HashSet();
            Cursor cursorP = e.this.f3507d.p(new s0.a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (cursorP.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(cursorP.getInt(0)));
                } catch (Throwable th) {
                    cursorP.close();
                    throw th;
                }
            }
            cursorP.close();
            if (!hashSet.isEmpty()) {
                e.this.f3510g.H();
            }
            return hashSet;
        }

        @Override // java.lang.Runnable
        public void run() {
            Lock lockH = e.this.f3507d.h();
            Set setA = null;
            try {
                try {
                    lockH.lock();
                } catch (SQLiteException | IllegalStateException e10) {
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e10);
                }
                if (!e.this.c()) {
                    lockH.unlock();
                    return;
                }
                if (!e.this.f3508e.compareAndSet(true, false)) {
                    lockH.unlock();
                    return;
                }
                if (e.this.f3507d.k()) {
                    lockH.unlock();
                    return;
                }
                h hVar = e.this.f3507d;
                if (hVar.f3554g) {
                    s0.b bVarC = hVar.i().c();
                    bVarC.m();
                    try {
                        setA = a();
                        bVarC.g0();
                        bVarC.l();
                    } catch (Throwable th) {
                        bVarC.l();
                        throw th;
                    }
                } else {
                    setA = a();
                }
                lockH.unlock();
                if (setA == null || setA.isEmpty()) {
                    return;
                }
                synchronized (e.this.f3513j) {
                    try {
                        Iterator it = e.this.f3513j.iterator();
                        while (it.hasNext()) {
                            ((d) ((Map.Entry) it.next()).getValue()).a(setA);
                        }
                    } finally {
                    }
                }
            } finally {
                lockH.unlock();
            }
        }
    }

    static class b {

        /* JADX INFO: renamed from: a */
        final long[] f3517a;

        /* JADX INFO: renamed from: b */
        final boolean[] f3518b;

        /* JADX INFO: renamed from: c */
        final int[] f3519c;

        /* JADX INFO: renamed from: d */
        boolean f3520d;

        /* JADX INFO: renamed from: e */
        boolean f3521e;

        b(int i10) {
            long[] jArr = new long[i10];
            this.f3517a = jArr;
            boolean[] zArr = new boolean[i10];
            this.f3518b = zArr;
            this.f3519c = new int[i10];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        int[] a() {
            synchronized (this) {
                try {
                    if (this.f3520d && !this.f3521e) {
                        int length = this.f3517a.length;
                        int i10 = 0;
                        while (true) {
                            int i11 = 1;
                            if (i10 >= length) {
                                this.f3521e = true;
                                this.f3520d = false;
                                return this.f3519c;
                            }
                            boolean z10 = this.f3517a[i10] > 0;
                            boolean[] zArr = this.f3518b;
                            if (z10 != zArr[i10]) {
                                int[] iArr = this.f3519c;
                                if (!z10) {
                                    i11 = 2;
                                }
                                iArr[i10] = i11;
                            } else {
                                this.f3519c[i10] = 0;
                            }
                            zArr[i10] = z10;
                            i10++;
                        }
                    }
                    return null;
                } finally {
                }
            }
        }

        boolean b(int... iArr) {
            boolean z10;
            synchronized (this) {
                try {
                    z10 = false;
                    for (int i10 : iArr) {
                        long[] jArr = this.f3517a;
                        long j10 = jArr[i10];
                        jArr[i10] = 1 + j10;
                        if (j10 == 0) {
                            z10 = true;
                            this.f3520d = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z10;
        }

        boolean c(int... iArr) {
            boolean z10;
            synchronized (this) {
                try {
                    z10 = false;
                    for (int i10 : iArr) {
                        long[] jArr = this.f3517a;
                        long j10 = jArr[i10];
                        jArr[i10] = j10 - 1;
                        if (j10 == 1) {
                            z10 = true;
                            this.f3520d = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z10;
        }

        void d() {
            synchronized (this) {
                this.f3521e = false;
            }
        }
    }

    public static abstract class c {

        /* JADX INFO: renamed from: a */
        final String[] f3522a;

        public c(String[] strArr) {
            this.f3522a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        abstract boolean a();

        public abstract void b(Set set);
    }

    static class d {

        /* JADX INFO: renamed from: a */
        final int[] f3523a;

        /* JADX INFO: renamed from: b */
        private final String[] f3524b;

        /* JADX INFO: renamed from: c */
        final c f3525c;

        /* JADX INFO: renamed from: d */
        private final Set f3526d;

        d(c cVar, int[] iArr, String[] strArr) {
            this.f3525c = cVar;
            this.f3523a = iArr;
            this.f3524b = strArr;
            if (iArr.length != 1) {
                this.f3526d = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(strArr[0]);
            this.f3526d = Collections.unmodifiableSet(hashSet);
        }

        void a(Set set) {
            int length = this.f3523a.length;
            Set hashSet = null;
            for (int i10 = 0; i10 < length; i10++) {
                if (set.contains(Integer.valueOf(this.f3523a[i10]))) {
                    if (length == 1) {
                        hashSet = this.f3526d;
                    } else {
                        if (hashSet == null) {
                            hashSet = new HashSet(length);
                        }
                        hashSet.add(this.f3524b[i10]);
                    }
                }
            }
            if (hashSet != null) {
                this.f3525c.b(hashSet);
            }
        }

        void b(String[] strArr) {
            Set set = null;
            if (this.f3524b.length == 1) {
                int length = strArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    if (strArr[i10].equalsIgnoreCase(this.f3524b[0])) {
                        set = this.f3526d;
                        break;
                    }
                    i10++;
                }
            } else {
                HashSet hashSet = new HashSet();
                for (String str : strArr) {
                    String[] strArr2 = this.f3524b;
                    int length2 = strArr2.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 < length2) {
                            String str2 = strArr2[i11];
                            if (str2.equalsIgnoreCase(str)) {
                                hashSet.add(str2);
                                break;
                            }
                            i11++;
                        }
                    }
                }
                if (hashSet.size() > 0) {
                    set = hashSet;
                }
            }
            if (set != null) {
                this.f3525c.b(set);
            }
        }
    }

    public e(h hVar, Map map, Map map2, String... strArr) {
        this.f3507d = hVar;
        this.f3511h = new b(strArr.length);
        this.f3506c = map2;
        this.f3512i = new androidx.room.d(hVar);
        int length = strArr.length;
        this.f3505b = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = strArr[i10];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f3504a.put(lowerCase, Integer.valueOf(i10));
            String str2 = (String) map.get(strArr[i10]);
            if (str2 != null) {
                this.f3505b[i10] = str2.toLowerCase(locale);
            } else {
                this.f3505b[i10] = lowerCase;
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = str3.toLowerCase(locale2);
            if (this.f3504a.containsKey(lowerCase2)) {
                String lowerCase3 = ((String) entry.getKey()).toLowerCase(locale2);
                HashMap map3 = this.f3504a;
                map3.put(lowerCase3, map3.get(lowerCase2));
            }
        }
    }

    private static void b(StringBuilder sb, String str, String str2) {
        sb.append("`");
        sb.append("room_table_modification_trigger_");
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        sb.append("`");
    }

    private String[] h(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f3506c.containsKey(lowerCase)) {
                hashSet.addAll((Collection) this.f3506c.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    private void j(s0.b bVar, int i10) {
        bVar.y("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i10 + ", 0)");
        String str = this.f3505b[i10];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f3503m) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            b(sb, str, str2);
            sb.append(" AFTER ");
            sb.append(str2);
            sb.append(" ON `");
            sb.append(str);
            sb.append("` BEGIN UPDATE ");
            sb.append("room_table_modification_log");
            sb.append(" SET ");
            sb.append("invalidated");
            sb.append(" = 1");
            sb.append(" WHERE ");
            sb.append("table_id");
            sb.append(" = ");
            sb.append(i10);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            bVar.y(sb.toString());
        }
    }

    private void k(s0.b bVar, int i10) {
        String str = this.f3505b[i10];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f3503m) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            b(sb, str, str2);
            bVar.y(sb.toString());
        }
    }

    public void a(c cVar) {
        d dVar;
        String[] strArrH = h(cVar.f3522a);
        int[] iArr = new int[strArrH.length];
        int length = strArrH.length;
        for (int i10 = 0; i10 < length; i10++) {
            Integer num = (Integer) this.f3504a.get(strArrH[i10].toLowerCase(Locale.US));
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + strArrH[i10]);
            }
            iArr[i10] = num.intValue();
        }
        d dVar2 = new d(cVar, iArr, strArrH);
        synchronized (this.f3513j) {
            dVar = (d) this.f3513j.g(cVar, dVar2);
        }
        if (dVar == null && this.f3511h.b(iArr)) {
            l();
        }
    }

    boolean c() {
        if (!this.f3507d.o()) {
            return false;
        }
        if (!this.f3509f) {
            this.f3507d.i().c();
        }
        if (this.f3509f) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    void d(s0.b bVar) {
        synchronized (this) {
            try {
                if (this.f3509f) {
                    Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                    return;
                }
                bVar.y("PRAGMA temp_store = MEMORY;");
                bVar.y("PRAGMA recursive_triggers='ON';");
                bVar.y("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                m(bVar);
                this.f3510g = bVar.J("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
                this.f3509f = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e(String... strArr) {
        synchronized (this.f3513j) {
            try {
                for (Map.Entry entry : this.f3513j) {
                    if (!((c) entry.getKey()).a()) {
                        ((d) entry.getValue()).b(strArr);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void f() {
        if (this.f3508e.compareAndSet(false, true)) {
            this.f3507d.j().execute(this.f3515l);
        }
    }

    public void g(c cVar) {
        d dVar;
        synchronized (this.f3513j) {
            dVar = (d) this.f3513j.h(cVar);
        }
        if (dVar == null || !this.f3511h.c(dVar.f3523a)) {
            return;
        }
        l();
    }

    void i(Context context, String str) {
        this.f3514k = new f(context, str, this, this.f3507d.j());
    }

    void l() {
        if (this.f3507d.o()) {
            m(this.f3507d.i().c());
        }
    }

    void m(s0.b bVar) {
        if (bVar.W()) {
            return;
        }
        while (true) {
            try {
                Lock lockH = this.f3507d.h();
                lockH.lock();
                try {
                    int[] iArrA = this.f3511h.a();
                    if (iArrA == null) {
                        return;
                    }
                    int length = iArrA.length;
                    bVar.m();
                    for (int i10 = 0; i10 < length; i10++) {
                        try {
                            int i11 = iArrA[i10];
                            if (i11 == 1) {
                                j(bVar, i10);
                            } else if (i11 == 2) {
                                k(bVar, i10);
                            }
                        } finally {
                        }
                    }
                    bVar.g0();
                    bVar.l();
                    this.f3511h.d();
                } finally {
                    lockH.unlock();
                }
            } catch (SQLiteException | IllegalStateException e10) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e10);
                return;
            }
        }
    }
}
