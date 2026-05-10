package s4;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import q4.f;
import q4.g;

/* JADX INFO: loaded from: classes.dex */
public final class d implements r4.b {

    /* JADX INFO: renamed from: e */
    private static final q4.d f15540e = s4.a.b();

    /* JADX INFO: renamed from: f */
    private static final f f15541f = s4.b.b();

    /* JADX INFO: renamed from: g */
    private static final f f15542g = c.b();

    /* JADX INFO: renamed from: h */
    private static final b f15543h = new b(null);

    /* JADX INFO: renamed from: a */
    private final Map f15544a = new HashMap();

    /* JADX INFO: renamed from: b */
    private final Map f15545b = new HashMap();

    /* JADX INFO: renamed from: c */
    private q4.d f15546c = f15540e;

    /* JADX INFO: renamed from: d */
    private boolean f15547d = false;

    class a implements q4.a {
        a() {
        }

        @Override // q4.a
        public String a(Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                b(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }

        @Override // q4.a
        public void b(Object obj, Writer writer) {
            e eVar = new e(writer, d.this.f15544a, d.this.f15545b, d.this.f15546c, d.this.f15547d);
            eVar.f(obj, false);
            eVar.m();
        }
    }

    private static final class b implements f {

        /* JADX INFO: renamed from: a */
        private static final DateFormat f15549a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f15549a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private b() {
        }

        @Override // q4.f
        /* JADX INFO: renamed from: b */
        public void a(Date date, g gVar) {
            gVar.b(f15549a.format(date));
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public d() {
        m(String.class, f15541f);
        m(Boolean.class, f15542g);
        m(Date.class, f15543h);
    }

    static /* synthetic */ void i(Object obj, q4.e eVar) {
        throw new q4.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    public q4.a f() {
        return new a();
    }

    public d g(r4.a aVar) {
        aVar.a(this);
        return this;
    }

    public d h(boolean z10) {
        this.f15547d = z10;
        return this;
    }

    @Override // r4.b
    /* JADX INFO: renamed from: l */
    public d a(Class cls, q4.d dVar) {
        this.f15544a.put(cls, dVar);
        this.f15545b.remove(cls);
        return this;
    }

    public d m(Class cls, f fVar) {
        this.f15545b.put(cls, fVar);
        this.f15544a.remove(cls);
        return this;
    }
}
