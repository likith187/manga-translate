package l8;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static d f13636e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f13637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Stack f13638b = new Stack();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f13639c = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13640d = d.class.getName();

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13641a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f13642b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f13643c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c f13644d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f13645e;

        /* JADX INFO: Access modifiers changed from: private */
        public void c(String str) {
            long j10 = this.f13643c;
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f13643c = jCurrentTimeMillis;
            d(str, jCurrentTimeMillis - j10);
        }

        private void d(String str, long j10) {
            this.f13644d.c(this.f13641a, str, j10);
            l8.c.g(this.f13645e, String.format("%s/%s, %d", this.f13641a, str, Long.valueOf(j10)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public c e() {
            d("total", System.currentTimeMillis() - this.f13642b);
            return this.f13644d;
        }

        private b(String str, c cVar, String str2) {
            this.f13641a = str;
            this.f13644d = cVar;
            cVar.d(str);
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f13642b = jCurrentTimeMillis;
            this.f13643c = jCurrentTimeMillis;
            this.f13645e = str2;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Map f13646a = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
        public void c(String str, String str2, long j10) {
            Map map = (Map) this.f13646a.get(str);
            if (map.containsKey(str2)) {
                ((List) map.get(str2)).add(Long.valueOf(j10));
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(Long.valueOf(j10));
            map.put(str2, arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(String str) {
            if (this.f13646a.containsKey(str)) {
                return;
            }
            this.f13646a.put(str, new HashMap());
        }
    }

    private d() {
    }

    private void b() {
        try {
            this.f13637a.e();
            this.f13637a = this.f13638b.isEmpty() ? null : (b) this.f13638b.pop();
        } catch (Exception e10) {
            l8.c.d(this.f13640d, e10.toString());
        }
    }

    public static synchronized d d() {
        try {
            if (f13636e == null) {
                f13636e = new d();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f13636e;
    }

    public void a(String str) {
        try {
            this.f13637a.c(str);
        } catch (Exception e10) {
            l8.c.d(this.f13640d, e10.toString());
        }
    }

    public void c(String str) {
        try {
            b();
        } catch (Exception e10) {
            l8.c.d(this.f13640d, e10.toString());
        }
    }

    public void e(String str, String str2) {
        try {
            l8.c.g(str2, String.format("%s/start", str));
            b bVar = this.f13637a;
            if (bVar != null) {
                this.f13638b.push(bVar);
            }
            c cVar = this.f13639c;
            if (str2 == null) {
                str2 = d.class.getName();
            }
            this.f13637a = new b(str, cVar, str2);
        } catch (Exception e10) {
            l8.c.d(this.f13640d, e10.toString());
        }
    }
}
