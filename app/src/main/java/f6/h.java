package f6;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f12003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f12004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f12005c;

    public h(String str, float f10, float f11) {
        this.f12003a = str;
        this.f12005c = f11;
        this.f12004b = f10;
    }

    public boolean a(String str) {
        if (this.f12003a.equalsIgnoreCase(str)) {
            return true;
        }
        if (l6.h.m(this.f12003a, "\r")) {
            String str2 = this.f12003a;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
