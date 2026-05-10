package l1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: c */
    public static final e f13564c = new e("COMPOSITION");

    /* JADX INFO: renamed from: a */
    private final List f13565a;

    /* JADX INFO: renamed from: b */
    private f f13566b;

    public e(String... strArr) {
        this.f13565a = Arrays.asList(strArr);
    }

    private boolean b() {
        return ((String) this.f13565a.get(r1.size() - 1)).equals("**");
    }

    private boolean f(String str) {
        return "__container".equals(str);
    }

    public e a(String str) {
        e eVar = new e(this);
        eVar.f13565a.add(str);
        return eVar;
    }

    public boolean c(String str, int i10) {
        if (i10 >= this.f13565a.size()) {
            return false;
        }
        boolean z10 = i10 == this.f13565a.size() - 1;
        String str2 = (String) this.f13565a.get(i10);
        if (!str2.equals("**")) {
            return (z10 || (i10 == this.f13565a.size() + (-2) && b())) && (str2.equals(str) || str2.equals("*"));
        }
        if (!z10 && ((String) this.f13565a.get(i10 + 1)).equals(str)) {
            return i10 == this.f13565a.size() + (-2) || (i10 == this.f13565a.size() + (-3) && b());
        }
        if (z10) {
            return true;
        }
        int i11 = i10 + 1;
        if (i11 < this.f13565a.size() - 1) {
            return false;
        }
        return ((String) this.f13565a.get(i11)).equals(str);
    }

    public f d() {
        return this.f13566b;
    }

    public int e(String str, int i10) {
        if (f(str)) {
            return 0;
        }
        if (((String) this.f13565a.get(i10)).equals("**")) {
            return (i10 != this.f13565a.size() - 1 && ((String) this.f13565a.get(i10 + 1)).equals(str)) ? 2 : 0;
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
        e eVar = (e) obj;
        if (!this.f13565a.equals(eVar.f13565a)) {
            return false;
        }
        f fVar = this.f13566b;
        return fVar != null ? fVar.equals(eVar.f13566b) : eVar.f13566b == null;
    }

    public boolean g(String str, int i10) {
        if (f(str)) {
            return true;
        }
        if (i10 >= this.f13565a.size()) {
            return false;
        }
        return ((String) this.f13565a.get(i10)).equals(str) || ((String) this.f13565a.get(i10)).equals("**") || ((String) this.f13565a.get(i10)).equals("*");
    }

    public boolean h(String str, int i10) {
        return "__container".equals(str) || i10 < this.f13565a.size() - 1 || ((String) this.f13565a.get(i10)).equals("**");
    }

    public int hashCode() {
        int iHashCode = this.f13565a.hashCode() * 31;
        f fVar = this.f13566b;
        return iHashCode + (fVar != null ? fVar.hashCode() : 0);
    }

    public e i(f fVar) {
        e eVar = new e(this);
        eVar.f13566b = fVar;
        return eVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("KeyPath{keys=");
        sb.append(this.f13565a);
        sb.append(",resolved=");
        sb.append(this.f13566b != null);
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    private e(e eVar) {
        this.f13565a = new ArrayList(eVar.f13565a);
        this.f13566b = eVar.f13566b;
    }
}
