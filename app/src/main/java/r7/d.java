package r7;

import android.content.Context;
import android.util.ArrayMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f15449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f15450b;

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f15451a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f15452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f15453c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15454d;

        public b(String str, String str2, String str3) {
            this.f15451a = str;
            this.f15452b = str2;
            this.f15453c = str3;
        }

        public int e() {
            int i10 = this.f15454d;
            this.f15454d = i10 + 1;
            return i10;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d f15455a = new d();
    }

    public static d e() {
        return c.f15455a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String f() {
        return "context is empty.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(Context context, o7.c cVar) {
        i(context, cVar.e(), cVar.o(), cVar.m());
    }

    private void i(final Context context, String str, String str2, String str3) {
        String str4 = str + str2 + str3;
        b bVar = (b) this.f15449a.get(str4);
        if (bVar == null) {
            b bVar2 = new b(str, str2, str3);
            bVar2.e();
            this.f15449a.put(str4, bVar2);
        } else {
            bVar.e();
        }
        int i10 = this.f15450b + 1;
        this.f15450b = i10;
        if (i10 >= 100) {
            h(context);
        } else {
            if (i10 != 1 || h.c().d(1)) {
                return;
            }
            h.c().g(1, new Runnable() { // from class: r7.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f15447a.h(context);
                }
            }, 300000L);
        }
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void h(Context context) {
        for (b bVar : this.f15449a.values()) {
            o7.c cVar = new o7.c(context, "21000", "001", "chatty_event");
            ArrayMap arrayMap = new ArrayMap();
            arrayMap.put("app_id", String.valueOf(bVar.f15451a));
            arrayMap.put("log_tag", bVar.f15452b);
            arrayMap.put("event_id", bVar.f15453c);
            arrayMap.put("times", String.valueOf(bVar.f15454d));
            cVar.q(arrayMap);
            n7.e.c(context, cVar);
        }
        this.f15450b = 0;
        this.f15449a.clear();
        h.c().h(1);
    }

    public void j(final o7.c cVar) {
        final Context applicationContext = cVar.f().getApplicationContext();
        if (applicationContext == null) {
            s7.f.b("ChattyEventTracker", new s7.g() { // from class: r7.a
                @Override // s7.g
                public final Object get() {
                    return d.f();
                }
            });
        } else {
            h.b(new Runnable() { // from class: r7.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f15444a.g(applicationContext, cVar);
                }
            });
        }
    }

    private d() {
        this.f15449a = new ArrayMap();
    }
}
