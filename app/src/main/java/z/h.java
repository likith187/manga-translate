package z;

import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class h implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LocaleList f16585a;

    h(Object obj) {
        this.f16585a = (LocaleList) obj;
    }

    @Override // z.g
    public String a() {
        return this.f16585a.toLanguageTags();
    }

    @Override // z.g
    public Object b() {
        return this.f16585a;
    }

    public boolean equals(Object obj) {
        return this.f16585a.equals(((g) obj).b());
    }

    @Override // z.g
    public Locale get(int i10) {
        return this.f16585a.get(i10);
    }

    public int hashCode() {
        return this.f16585a.hashCode();
    }

    @Override // z.g
    public boolean isEmpty() {
        return this.f16585a.isEmpty();
    }

    @Override // z.g
    public int size() {
        return this.f16585a.size();
    }

    public String toString() {
        return this.f16585a.toString();
    }
}
