package androidx.lifecycle;

import android.os.Bundle;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import q0.e;

/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f2784c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f2785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k0.b f2786b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h0 a(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                bundle = bundle2;
            }
            if (bundle == null) {
                return new h0();
            }
            ClassLoader classLoader = h0.class.getClassLoader();
            kotlin.jvm.internal.r.b(classLoader);
            bundle.setClassLoader(classLoader);
            return new h0(q0.b.g(q0.b.a(bundle)));
        }

        private a() {
        }
    }

    public h0(Map initialState) {
        kotlin.jvm.internal.r.e(initialState, "initialState");
        this.f2785a = new LinkedHashMap();
        this.f2786b = new k0.b(initialState);
    }

    public final e.b a() {
        return this.f2786b.b();
    }

    public h0() {
        this.f2785a = new LinkedHashMap();
        this.f2786b = new k0.b(null, 1, null);
    }
}
