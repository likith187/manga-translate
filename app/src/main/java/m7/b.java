package m7;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f13864f = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f13865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f13866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f13867c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13868d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13869e;

    /* JADX INFO: renamed from: m7.b$b, reason: collision with other inner class name */
    public static class C0180b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f13870a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f13871b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f13872c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f13873d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f13874e;

        public b f() {
            return new b(this);
        }

        public C0180b g(String str) {
            this.f13874e = str;
            return this;
        }

        public C0180b h(String str) {
            this.f13872c = str;
            return this;
        }

        public C0180b i(String str) {
            this.f13873d = str;
            return this;
        }
    }

    public String a() {
        return this.f13869e;
    }

    public int b() {
        return this.f13865a;
    }

    public int c() {
        return this.f13866b;
    }

    public String d() {
        return this.f13867c;
    }

    public String e() {
        return this.f13868d;
    }

    public void f(String str) {
        this.f13869e = str;
    }

    public void g(String str) {
        this.f13867c = str;
    }

    public void h(String str) {
        this.f13868d = str;
    }

    private b() {
        this.f13867c = "";
        this.f13868d = "";
        this.f13869e = "";
    }

    private b(C0180b c0180b) {
        this.f13867c = "";
        this.f13868d = "";
        this.f13869e = "";
        this.f13865a = c0180b.f13870a;
        this.f13867c = c0180b.f13872c;
        this.f13868d = c0180b.f13873d;
        this.f13869e = c0180b.f13874e;
        this.f13866b = c0180b.f13871b;
    }
}
