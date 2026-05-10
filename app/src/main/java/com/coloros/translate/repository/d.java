package com.coloros.translate.repository;

import com.coloros.translate.R;
import com.coloros.translate.repository.a;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.w;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlinx.coroutines.d0;
import kotlinx.coroutines.g;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.o0;
import n8.h0;
import n8.j;
import n8.k;
import w8.l;
import w8.p;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a */
    public static final a f5439a = new a(null);

    /* JADX INFO: renamed from: b */
    private static final j f5440b = k.b(C0074d.INSTANCE);

    /* JADX INFO: renamed from: c */
    private static final j f5441c = k.b(c.INSTANCE);

    /* JADX INFO: renamed from: d */
    private static final b f5442d = new b();

    public static final class a {

        /* JADX INFO: renamed from: com.coloros.translate.repository.d$a$a */
        static final class C0073a extends s implements l {
            public static final C0073a INSTANCE = new C0073a();

            C0073a() {
                super(1);
            }

            @Override // w8.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return h0.INSTANCE;
            }

            public final void invoke(boolean z10) {
                c0.f7098a.i("RepositoryFactory", "checkAiDownload download");
                d.f5439a.d().b();
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final com.coloros.translate.repository.a d() {
            return (com.coloros.translate.repository.a) d.f5441c.getValue();
        }

        public final boolean b() {
            d().h();
            d().i(d.f5442d);
            if (d().c()) {
                return e.a(C0073a.INSTANCE);
            }
            c0.f7098a.i("RepositoryFactory", "checkAiDownload false");
            d().b();
            return false;
        }

        public final i2.a c() {
            return i2.a.INSTANCE;
        }

        public final com.coloros.translate.repository.remote.c e() {
            return (com.coloros.translate.repository.remote.c) d.f5440b.getValue();
        }

        private a() {
        }
    }

    public static final class b implements a.b {

        static final class a extends kotlin.coroutines.jvm.internal.l implements p {
            int label;

            a(kotlin.coroutines.d dVar) {
                super(2, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object objF = kotlin.coroutines.intrinsics.b.f();
                int i10 = this.label;
                if (i10 == 0) {
                    n8.s.b(obj);
                    this.label = 1;
                    if (k0.a(200L, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n8.s.b(obj);
                }
                d.f5439a.e().J();
                return h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
            }
        }

        b() {
        }

        @Override // com.coloros.translate.repository.a.b
        public void a(String errorMessage) {
            r.e(errorMessage, "errorMessage");
            c0.f7098a.i("RepositoryFactory", "downloadFail errorMessage:" + errorMessage);
            if (r.a(errorMessage, "download_aiunit_scene_data_is_null")) {
                w.h(R.string.plugin_down_fail, 0, 2, null);
            } else if (r.a(errorMessage, "download_aiunit_not_support")) {
                w.h(R.string.plugin_down_fail, 0, 2, null);
            }
        }

        @Override // com.coloros.translate.repository.a.b
        public void b() {
            c0.f7098a.i("RepositoryFactory", "downloadSuccess");
            g.b(d0.a(o0.b()), null, null, new a(null), 3, null);
        }
    }

    static final class c extends s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final com.coloros.translate.repository.a mo8invoke() {
            return new com.coloros.translate.repository.a();
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.repository.d$d */
    static final class C0074d extends s implements w8.a {
        public static final C0074d INSTANCE = new C0074d();

        C0074d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final com.coloros.translate.repository.remote.c mo8invoke() {
            return new com.coloros.translate.repository.remote.c();
        }
    }
}
