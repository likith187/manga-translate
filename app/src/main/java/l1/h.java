package l1;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f13569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f13570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f13571c;

    public h(String str, float f10, float f11) {
        this.f13569a = str;
        this.f13571c = f11;
        this.f13570b = f10;
    }

    public boolean a(String str) {
        if (this.f13569a.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.f13569a.endsWith("\r")) {
            String str2 = this.f13569a;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
