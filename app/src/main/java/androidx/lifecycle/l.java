package androidx.lifecycle;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a */
    private c f2796a = new c(null);

    public static final class a extends Enum {
        private static final /* synthetic */ r8.a $ENTRIES;
        private static final /* synthetic */ a[] $VALUES;
        public static final C0033a Companion;
        public static final a ON_CREATE = new a("ON_CREATE", 0);
        public static final a ON_START = new a("ON_START", 1);
        public static final a ON_RESUME = new a("ON_RESUME", 2);
        public static final a ON_PAUSE = new a("ON_PAUSE", 3);
        public static final a ON_STOP = new a("ON_STOP", 4);
        public static final a ON_DESTROY = new a("ON_DESTROY", 5);
        public static final a ON_ANY = new a("ON_ANY", 6);

        /* JADX INFO: renamed from: androidx.lifecycle.l$a$a */
        public static final class C0033a {

            /* JADX INFO: renamed from: androidx.lifecycle.l$a$a$a */
            public /* synthetic */ class C0034a {

                /* JADX INFO: renamed from: a */
                public static final /* synthetic */ int[] f2797a;

                static {
                    int[] iArr = new int[b.values().length];
                    try {
                        iArr[b.CREATED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[b.STARTED.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[b.RESUMED.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[b.DESTROYED.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[b.INITIALIZED.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    f2797a = iArr;
                }
            }

            public /* synthetic */ C0033a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final a a(b state) {
                kotlin.jvm.internal.r.e(state, "state");
                int i10 = C0034a.f2797a[state.ordinal()];
                if (i10 == 1) {
                    return a.ON_DESTROY;
                }
                if (i10 == 2) {
                    return a.ON_STOP;
                }
                if (i10 != 3) {
                    return null;
                }
                return a.ON_PAUSE;
            }

            public final a b(b state) {
                kotlin.jvm.internal.r.e(state, "state");
                int i10 = C0034a.f2797a[state.ordinal()];
                if (i10 == 1) {
                    return a.ON_STOP;
                }
                if (i10 == 2) {
                    return a.ON_PAUSE;
                }
                if (i10 != 4) {
                    return null;
                }
                return a.ON_DESTROY;
            }

            public final a c(b state) {
                kotlin.jvm.internal.r.e(state, "state");
                int i10 = C0034a.f2797a[state.ordinal()];
                if (i10 == 1) {
                    return a.ON_START;
                }
                if (i10 == 2) {
                    return a.ON_RESUME;
                }
                if (i10 != 5) {
                    return null;
                }
                return a.ON_CREATE;
            }

            public final a d(b state) {
                kotlin.jvm.internal.r.e(state, "state");
                int i10 = C0034a.f2797a[state.ordinal()];
                if (i10 == 1) {
                    return a.ON_CREATE;
                }
                if (i10 == 2) {
                    return a.ON_START;
                }
                if (i10 != 3) {
                    return null;
                }
                return a.ON_RESUME;
            }

            private C0033a() {
            }
        }

        public /* synthetic */ class b {

            /* JADX INFO: renamed from: a */
            public static final /* synthetic */ int[] f2798a;

            static {
                int[] iArr = new int[a.values().length];
                try {
                    iArr[a.ON_CREATE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[a.ON_STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[a.ON_START.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[a.ON_PAUSE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[a.ON_RESUME.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[a.ON_DESTROY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[a.ON_ANY.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                f2798a = iArr;
            }
        }

        private static final /* synthetic */ a[] $values() {
            return new a[]{ON_CREATE, ON_START, ON_RESUME, ON_PAUSE, ON_STOP, ON_DESTROY, ON_ANY};
        }

        static {
            a[] aVarArr$values = $values();
            $VALUES = aVarArr$values;
            $ENTRIES = r8.b.a(aVarArr$values);
            Companion = new C0033a(null);
        }

        private a(String str, int i10) {
            super(str, i10);
        }

        public static final a downFrom(b bVar) {
            return Companion.a(bVar);
        }

        public static final a downTo(b bVar) {
            return Companion.b(bVar);
        }

        public static r8.a getEntries() {
            return $ENTRIES;
        }

        public static final a upFrom(b bVar) {
            return Companion.c(bVar);
        }

        public static final a upTo(b bVar) {
            return Companion.d(bVar);
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }

        public final b getTargetState() {
            switch (b.f2798a[ordinal()]) {
                case 1:
                case 2:
                    return b.CREATED;
                case 3:
                case 4:
                    return b.STARTED;
                case 5:
                    return b.RESUMED;
                case 6:
                    return b.DESTROYED;
                case 7:
                    throw new IllegalArgumentException(this + " has no target state");
                default:
                    throw new n8.o();
            }
        }
    }

    public static final class b extends Enum {
        private static final /* synthetic */ r8.a $ENTRIES;
        private static final /* synthetic */ b[] $VALUES;
        public static final b DESTROYED = new b("DESTROYED", 0);
        public static final b INITIALIZED = new b("INITIALIZED", 1);
        public static final b CREATED = new b("CREATED", 2);
        public static final b STARTED = new b("STARTED", 3);
        public static final b RESUMED = new b("RESUMED", 4);

        private static final /* synthetic */ b[] $values() {
            return new b[]{DESTROYED, INITIALIZED, CREATED, STARTED, RESUMED};
        }

        static {
            b[] bVarArr$values = $values();
            $VALUES = bVarArr$values;
            $ENTRIES = r8.b.a(bVarArr$values);
        }

        private b(String str, int i10) {
            super(str, i10);
        }

        public static r8.a getEntries() {
            return $ENTRIES;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }

        public final boolean isAtLeast(b state) {
            kotlin.jvm.internal.r.e(state, "state");
            return compareTo(state) >= 0;
        }
    }

    public abstract void a(r rVar);

    public abstract b b();

    public final c c() {
        return this.f2796a;
    }

    public abstract void d(r rVar);
}
