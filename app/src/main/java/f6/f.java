package f6;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: c */
    public static final f f12000c = new f("COMPOSITION");

    /* JADX INFO: renamed from: a */
    private final List f12001a;

    /* JADX INFO: renamed from: b */
    private g f12002b;

    public f(String... strArr) {
        this.f12001a = Arrays.asList(strArr);
    }

    private boolean b() {
        return ((String) this.f12001a.get(r1.size() - 1)).equals("**");
    }

    private boolean f(String str) {
        return "__container".equals(str);
    }

    public f a(String str) {
        f fVar = new f(this);
        fVar.f12001a.add(str);
        return fVar;
    }

    public boolean c(String str, int i10) {
        if (i10 >= this.f12001a.size()) {
            return false;
        }
        boolean z10 = i10 == this.f12001a.size() - 1;
        String str2 = (String) this.f12001a.get(i10);
        if (!str2.equals("**")) {
            return (z10 || (i10 == this.f12001a.size() + (-2) && b())) && (str2.equals(str) || str2.equals("*"));
        }
        if (!z10 && ((String) this.f12001a.get(i10 + 1)).equals(str)) {
            return i10 == this.f12001a.size() + (-2) || (i10 == this.f12001a.size() + (-3) && b());
        }
        if (z10) {
            return true;
        }
        int i11 = i10 + 1;
        if (i11 < this.f12001a.size() - 1) {
            return false;
        }
        return ((String) this.f12001a.get(i11)).equals(str);
    }

    public g d() {
        return this.f12002b;
    }

    public int e(String str, int i10) {
        if (f(str)) {
            return 0;
        }
        if (((String) this.f12001a.get(i10)).equals("**")) {
            return (i10 != this.f12001a.size() - 1 && ((String) this.f12001a.get(i10 + 1)).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        if (!this.f12001a.equals(fVar.f12001a)) {
            return false;
        }
        g gVar = this.f12002b;
        return gVar != null ? gVar.equals(fVar.f12002b) : fVar.f12002b == null;
    }

    public boolean g(String str, int i10) {
        if (f(str)) {
            return true;
        }
        if (i10 >= this.f12001a.size()) {
            return false;
        }
        return ((String) this.f12001a.get(i10)).equals(str) || ((String) this.f12001a.get(i10)).equals("**") || ((String) this.f12001a.get(i10)).equals("*");
    }

    public boolean h(String str, int i10) {
        return "__container".equals(str) || i10 < this.f12001a.size() - 1 || ((String) this.f12001a.get(i10)).equals("**");
    }

    public int hashCode() {
        int iHashCode = this.f12001a.hashCode() * 31;
        g gVar = this.f12002b;
        return iHashCode + (gVar != null ? gVar.hashCode() : 0);
    }

    public f i(g gVar) {
        f fVar = new f(this);
        fVar.f12002b = gVar;
        return fVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("KeyPath{keys=");
        sb.append(this.f12001a);
        sb.append(",resolved=");
        sb.append(this.f12002b != null);
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    private f(f fVar) {
        this.f12001a = new ArrayList(fVar.f12001a);
        this.f12002b = fVar.f12002b;
    }
}
