package androidx.window.layout;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public interface FoldingFeature extends DisplayFeature {

    public static final class OcclusionType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f4100b = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final OcclusionType f4101c = new OcclusionType("NONE");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final OcclusionType f4102d = new OcclusionType("FULL");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f4103a;

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        private OcclusionType(String str) {
            this.f4103a = str;
        }

        public String toString() {
            return this.f4103a;
        }
    }

    public static final class Orientation {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f4104b = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Orientation f4105c = new Orientation("VERTICAL");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final Orientation f4106d = new Orientation("HORIZONTAL");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f4107a;

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        private Orientation(String str) {
            this.f4107a = str;
        }

        public String toString() {
            return this.f4107a;
        }
    }

    public static final class State {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f4108b = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final State f4109c = new State("FLAT");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final State f4110d = new State("HALF_OPENED");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f4111a;

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        private State(String str) {
            this.f4111a = str;
        }

        public String toString() {
            return this.f4111a;
        }
    }

    Orientation a();

    State getState();
}
