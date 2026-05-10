package okhttp3;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14929a = a.f14931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final m f14930b = new a.C0195a();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f14931a = new a();

        /* JADX INFO: renamed from: okhttp3.m$a$a, reason: collision with other inner class name */
        private static final class C0195a implements m {
            @Override // okhttp3.m
            public List a(u url) {
                kotlin.jvm.internal.r.e(url, "url");
                return kotlin.collections.o.h();
            }

            @Override // okhttp3.m
            public void b(u url, List cookies) {
                kotlin.jvm.internal.r.e(url, "url");
                kotlin.jvm.internal.r.e(cookies, "cookies");
            }
        }

        private a() {
        }
    }

    List a(u uVar);

    void b(u uVar, List list);
}
