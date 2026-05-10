package p0;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f15143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f15144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set f15145d;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f15146a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15147b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15148c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f15149d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f15150e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f15151f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f15152g;

        public a(String str, String str2, boolean z10, int i10, String str3, int i11) {
            this.f15146a = str;
            this.f15147b = str2;
            this.f15149d = z10;
            this.f15150e = i10;
            this.f15148c = a(str2);
            this.f15151f = str3;
            this.f15152g = i11;
        }

        private static int a(String str) {
            if (str == null) {
                return 5;
            }
            String upperCase = str.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                return 2;
            }
            if (upperCase.contains("BLOB")) {
                return 5;
            }
            return (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            String str3;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f15150e != aVar.f15150e || !this.f15146a.equals(aVar.f15146a) || this.f15149d != aVar.f15149d) {
                return false;
            }
            if (this.f15152g == 1 && aVar.f15152g == 2 && (str3 = this.f15151f) != null && !str3.equals(aVar.f15151f)) {
                return false;
            }
            if (this.f15152g == 2 && aVar.f15152g == 1 && (str2 = aVar.f15151f) != null && !str2.equals(this.f15151f)) {
                return false;
            }
            int i10 = this.f15152g;
            return (i10 == 0 || i10 != aVar.f15152g || ((str = this.f15151f) == null ? aVar.f15151f == null : str.equals(aVar.f15151f))) && this.f15148c == aVar.f15148c;
        }

        public int hashCode() {
            return (((((this.f15146a.hashCode() * 31) + this.f15148c) * 31) + (this.f15149d ? 1231 : 1237)) * 31) + this.f15150e;
        }

        public String toString() {
            return "Column{name='" + this.f15146a + "', type='" + this.f15147b + "', affinity='" + this.f15148c + "', notNull=" + this.f15149d + ", primaryKeyPosition=" + this.f15150e + ", defaultValue='" + this.f15151f + '\'' + AbstractJsonLexerKt.END_OBJ;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f15153a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15154b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f15155c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List f15156d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f15157e;

        public b(String str, String str2, String str3, List list, List list2) {
            this.f15153a = str;
            this.f15154b = str2;
            this.f15155c = str3;
            this.f15156d = Collections.unmodifiableList(list);
            this.f15157e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f15153a.equals(bVar.f15153a) && this.f15154b.equals(bVar.f15154b) && this.f15155c.equals(bVar.f15155c) && this.f15156d.equals(bVar.f15156d)) {
                return this.f15157e.equals(bVar.f15157e);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.f15153a.hashCode() * 31) + this.f15154b.hashCode()) * 31) + this.f15155c.hashCode()) * 31) + this.f15156d.hashCode()) * 31) + this.f15157e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f15153a + "', onDelete='" + this.f15154b + "', onUpdate='" + this.f15155c + "', columnNames=" + this.f15156d + ", referenceColumnNames=" + this.f15157e + AbstractJsonLexerKt.END_OBJ;
        }
    }

    static class c implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f15158a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f15159b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f15160c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final String f15161f;

        c(int i10, int i11, String str, String str2) {
            this.f15158a = i10;
            this.f15159b = i11;
            this.f15160c = str;
            this.f15161f = str2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            int i10 = this.f15158a - cVar.f15158a;
            return i10 == 0 ? this.f15159b - cVar.f15159b : i10;
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f15162a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f15163b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f15164c;

        public d(String str, boolean z10, List list) {
            this.f15162a = str;
            this.f15163b = z10;
            this.f15164c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f15163b == dVar.f15163b && this.f15164c.equals(dVar.f15164c)) {
                return this.f15162a.startsWith("index_") ? dVar.f15162a.startsWith("index_") : this.f15162a.equals(dVar.f15162a);
            }
            return false;
        }

        public int hashCode() {
            return ((((this.f15162a.startsWith("index_") ? -1184239155 : this.f15162a.hashCode()) * 31) + (this.f15163b ? 1 : 0)) * 31) + this.f15164c.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f15162a + "', unique=" + this.f15163b + ", columns=" + this.f15164c + AbstractJsonLexerKt.END_OBJ;
        }
    }

    public e(String str, Map map, Set set, Set set2) {
        this.f15142a = str;
        this.f15143b = Collections.unmodifiableMap(map);
        this.f15144c = Collections.unmodifiableSet(set);
        this.f15145d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    public static e a(s0.b bVar, String str) {
        return new e(str, b(bVar, str), d(bVar, str), f(bVar, str));
    }

    private static Map b(s0.b bVar, String str) {
        Cursor cursorY0 = bVar.y0("PRAGMA table_info(`" + str + "`)");
        HashMap map = new HashMap();
        try {
            if (cursorY0.getColumnCount() > 0) {
                int columnIndex = cursorY0.getColumnIndex("name");
                int columnIndex2 = cursorY0.getColumnIndex("type");
                int columnIndex3 = cursorY0.getColumnIndex("notnull");
                int columnIndex4 = cursorY0.getColumnIndex("pk");
                int columnIndex5 = cursorY0.getColumnIndex("dflt_value");
                while (cursorY0.moveToNext()) {
                    String string = cursorY0.getString(columnIndex);
                    map.put(string, new a(string, cursorY0.getString(columnIndex2), cursorY0.getInt(columnIndex3) != 0, cursorY0.getInt(columnIndex4), cursorY0.getString(columnIndex5), 2));
                }
            }
            return map;
        } finally {
            cursorY0.close();
        }
    }

    private static List c(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < count; i10++) {
            cursor.moveToPosition(i10);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static Set d(s0.b bVar, String str) {
        HashSet hashSet = new HashSet();
        Cursor cursorY0 = bVar.y0("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = cursorY0.getColumnIndex("id");
            int columnIndex2 = cursorY0.getColumnIndex("seq");
            int columnIndex3 = cursorY0.getColumnIndex("table");
            int columnIndex4 = cursorY0.getColumnIndex("on_delete");
            int columnIndex5 = cursorY0.getColumnIndex("on_update");
            List<c> listC = c(cursorY0);
            int count = cursorY0.getCount();
            for (int i10 = 0; i10 < count; i10++) {
                cursorY0.moveToPosition(i10);
                if (cursorY0.getInt(columnIndex2) == 0) {
                    int i11 = cursorY0.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (c cVar : listC) {
                        if (cVar.f15158a == i11) {
                            arrayList.add(cVar.f15160c);
                            arrayList2.add(cVar.f15161f);
                        }
                    }
                    hashSet.add(new b(cursorY0.getString(columnIndex3), cursorY0.getString(columnIndex4), cursorY0.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            cursorY0.close();
            return hashSet;
        } catch (Throwable th) {
            cursorY0.close();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    private static d e(s0.b bVar, String str, boolean z10) {
        Cursor cursorY0 = bVar.y0("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = cursorY0.getColumnIndex("seqno");
            int columnIndex2 = cursorY0.getColumnIndex("cid");
            int columnIndex3 = cursorY0.getColumnIndex("name");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                TreeMap treeMap = new TreeMap();
                while (cursorY0.moveToNext()) {
                    if (cursorY0.getInt(columnIndex2) >= 0) {
                        treeMap.put(Integer.valueOf(cursorY0.getInt(columnIndex)), cursorY0.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                d dVar = new d(str, z10, arrayList);
                cursorY0.close();
                return dVar;
            }
            cursorY0.close();
            return null;
        } catch (Throwable th) {
            cursorY0.close();
            throw th;
        }
    }

    private static Set f(s0.b bVar, String str) {
        Cursor cursorY0 = bVar.y0("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = cursorY0.getColumnIndex("name");
            int columnIndex2 = cursorY0.getColumnIndex("origin");
            int columnIndex3 = cursorY0.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                HashSet hashSet = new HashSet();
                while (cursorY0.moveToNext()) {
                    if ("c".equals(cursorY0.getString(columnIndex2))) {
                        String string = cursorY0.getString(columnIndex);
                        boolean z10 = true;
                        if (cursorY0.getInt(columnIndex3) != 1) {
                            z10 = false;
                        }
                        d dVarE = e(bVar, string, z10);
                        if (dVarE == null) {
                            return null;
                        }
                        hashSet.add(dVarE);
                    }
                }
                return hashSet;
            }
            return null;
        } finally {
            cursorY0.close();
        }
    }

    public boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        String str = this.f15142a;
        if (str == null ? eVar.f15142a != null : !str.equals(eVar.f15142a)) {
            return false;
        }
        Map map = this.f15143b;
        if (map == null ? eVar.f15143b != null : !map.equals(eVar.f15143b)) {
            return false;
        }
        Set set2 = this.f15144c;
        if (set2 == null ? eVar.f15144c != null : !set2.equals(eVar.f15144c)) {
            return false;
        }
        Set set3 = this.f15145d;
        if (set3 == null || (set = eVar.f15145d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public int hashCode() {
        String str = this.f15142a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Map map = this.f15143b;
        int iHashCode2 = (iHashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set set = this.f15144c;
        return iHashCode2 + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        return "TableInfo{name='" + this.f15142a + "', columns=" + this.f15143b + ", foreignKeys=" + this.f15144c + ", indices=" + this.f15145d + AbstractJsonLexerKt.END_OBJ;
    }
}
