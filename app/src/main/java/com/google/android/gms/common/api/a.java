package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.k;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AbstractC0103a f7582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f7583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f7584c;

    /* JADX INFO: renamed from: com.google.android.gms.common.api.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0103a extends e {
        public f a(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, Object obj, e.a aVar, e.b bVar) {
            return b(context, looper, eVar, obj, aVar, bVar);
        }

        public f b(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, Object obj, com.google.android.gms.common.api.internal.d dVar, com.google.android.gms.common.api.internal.j jVar) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    public interface b {
    }

    public static class c {
    }

    public interface d {
    }

    public static abstract class e {
    }

    public interface f extends b {
        void a(d.e eVar);

        Set b();

        void c(IAccountAccessor iAccountAccessor, Set set);

        void d(String str);

        boolean e();

        int g();

        boolean h();

        Feature[] i();

        boolean isConnected();

        String j();

        String k();

        void l(d.c cVar);

        void m();

        boolean n();
    }

    public static final class g extends c {
    }

    public a(String str, AbstractC0103a abstractC0103a, g gVar) {
        k.h(abstractC0103a, "Cannot construct an Api with a null ClientBuilder");
        k.h(gVar, "Cannot construct an Api with a null ClientKey");
        this.f7584c = str;
        this.f7582a = abstractC0103a;
        this.f7583b = gVar;
    }

    public final AbstractC0103a a() {
        return this.f7582a;
    }

    public final String b() {
        return this.f7584c;
    }
}
