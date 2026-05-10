package androidx.window.layout;

import androidx.window.core.Bounds;
import androidx.window.layout.FoldingFeature;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class HardwareFoldingFeature implements FoldingFeature {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Companion f4112d = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bounds f4113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Type f4114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final FoldingFeature.State f4115c;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Bounds bounds) {
            r.e(bounds, "bounds");
            if (bounds.d() == 0 && bounds.a() == 0) {
                throw new IllegalArgumentException("Bounds must be non zero");
            }
            if (bounds.b() != 0 && bounds.c() != 0) {
                throw new IllegalArgumentException("Bounding rectangle must start at the top or left window edge for folding features");
            }
        }

        private Companion() {
        }
    }

    public static final class Type {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f4116b = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Type f4117c = new Type("FOLD");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Type f4118d = new Type("HINGE");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f4119a;

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Type a() {
                return Type.f4117c;
            }

            public final Type b() {
                return Type.f4118d;
            }

            private Companion() {
            }
        }

        private Type(String str) {
            this.f4119a = str;
        }

        public String toString() {
            return this.f4119a;
        }
    }

    public HardwareFoldingFeature(Bounds featureBounds, Type type, FoldingFeature.State state) {
        r.e(featureBounds, "featureBounds");
        r.e(type, "type");
        r.e(state, "state");
        this.f4113a = featureBounds;
        this.f4114b = type;
        this.f4115c = state;
        f4112d.a(featureBounds);
    }

    @Override // androidx.window.layout.FoldingFeature
    public FoldingFeature.Orientation a() {
        return this.f4113a.d() > this.f4113a.a() ? FoldingFeature.Orientation.f4106d : FoldingFeature.Orientation.f4105c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!r.a(HardwareFoldingFeature.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.window.layout.HardwareFoldingFeature");
        }
        HardwareFoldingFeature hardwareFoldingFeature = (HardwareFoldingFeature) obj;
        return r.a(this.f4113a, hardwareFoldingFeature.f4113a) && r.a(this.f4114b, hardwareFoldingFeature.f4114b) && r.a(getState(), hardwareFoldingFeature.getState());
    }

    @Override // androidx.window.layout.FoldingFeature
    public FoldingFeature.State getState() {
        return this.f4115c;
    }

    public int hashCode() {
        return (((this.f4113a.hashCode() * 31) + this.f4114b.hashCode()) * 31) + getState().hashCode();
    }

    public String toString() {
        return HardwareFoldingFeature.class.getSimpleName() + " { " + this.f4113a + ", type=" + this.f4114b + ", state=" + getState() + " }";
    }
}
