package androidx.loader.app;

import androidx.appcompat.app.t;
import androidx.collection.j;
import androidx.lifecycle.s;
import androidx.lifecycle.s0;
import androidx.lifecycle.u0;
import androidx.lifecycle.w0;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class b extends androidx.loader.app.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f2870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f2871b;

    static class a extends s0 {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final u0.c f2872d = new C0036a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private j f2873b = new j();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2874c = false;

        /* JADX INFO: renamed from: androidx.loader.app.b$a$a, reason: collision with other inner class name */
        static class C0036a implements u0.c {
            C0036a() {
            }

            @Override // androidx.lifecycle.u0.c
            public s0 a(Class cls) {
                return new a();
            }
        }

        a() {
        }

        static a f(w0 w0Var) {
            return (a) new u0(w0Var, f2872d).b(a.class);
        }

        @Override // androidx.lifecycle.s0
        protected void d() {
            super.d();
            if (this.f2873b.i() <= 0) {
                this.f2873b.b();
            } else {
                t.a(this.f2873b.j(0));
                throw null;
            }
        }

        public void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f2873b.i() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("    ");
                if (this.f2873b.i() <= 0) {
                    return;
                }
                t.a(this.f2873b.j(0));
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f2873b.g(0));
                printWriter.print(": ");
                throw null;
            }
        }

        void g() {
            if (this.f2873b.i() <= 0) {
                return;
            }
            t.a(this.f2873b.j(0));
            throw null;
        }
    }

    b(s sVar, w0 w0Var) {
        this.f2870a = sVar;
        this.f2871b = a.f(w0Var);
    }

    @Override // androidx.loader.app.a
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f2871b.e(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.loader.app.a
    public void c() {
        this.f2871b.g();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        c0.b.a(this.f2870a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
