package a0;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f51a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f52b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f53c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f54d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f55e;

        public b(Uri uri, int i10, int i11, boolean z10, int i12) {
            this.f51a = (Uri) c0.h.e(uri);
            this.f52b = i10;
            this.f53c = i11;
            this.f54d = z10;
            this.f55e = i12;
        }

        static b a(Uri uri, int i10, int i11, boolean z10, int i12) {
            return new b(uri, i10, i11, z10, i12);
        }

        public int b() {
            return this.f55e;
        }

        public int c() {
            return this.f52b;
        }

        public Uri d() {
            return this.f51a;
        }

        public int e() {
            return this.f53c;
        }

        public boolean f() {
            return this.f54d;
        }
    }

    public static class c {
        public abstract void a(int i10);

        public abstract void b(Typeface typeface);
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, b[] bVarArr) {
        return u.h.b(context, cancellationSignal, bVarArr, 0);
    }

    public static a b(Context context, CancellationSignal cancellationSignal, e eVar) {
        return d.e(context, List.of(eVar), cancellationSignal);
    }

    public static Typeface c(Context context, List list, int i10, boolean z10, int i11, Handler handler, c cVar) {
        a0.a aVar = new a0.a(cVar, h.b(handler));
        if (!z10) {
            return f.d(context, list, i10, null, aVar);
        }
        if (list.size() <= 1) {
            return f.e(context, (e) list.get(0), aVar, i10, i11);
        }
        throw new IllegalArgumentException("Fallbacks with blocking fetches are not supported for performance reasons");
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f49a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f50b;

        public a(int i10, b[] bVarArr) {
            this.f49a = i10;
            this.f50b = Collections.singletonList(bVarArr);
        }

        static a a(int i10, List list) {
            return new a(i10, list);
        }

        static a b(int i10, b[] bVarArr) {
            return new a(i10, bVarArr);
        }

        public b[] c() {
            return (b[]) this.f50b.get(0);
        }

        public List d() {
            return this.f50b;
        }

        public int e() {
            return this.f49a;
        }

        boolean f() {
            return this.f50b.size() > 1;
        }

        a(int i10, List list) {
            this.f49a = i10;
            this.f50b = list;
        }
    }
}
