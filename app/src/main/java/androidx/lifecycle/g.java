package androidx.lifecycle;

import androidx.lifecycle.l;

/* JADX INFO: loaded from: classes.dex */
public final class g implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f2774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f2775b;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2776a;

        static {
            int[] iArr = new int[l.a.values().length];
            try {
                iArr[l.a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[l.a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[l.a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[l.a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[l.a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[l.a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[l.a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f2776a = iArr;
        }
    }

    public g(f defaultLifecycleObserver, p pVar) {
        kotlin.jvm.internal.r.e(defaultLifecycleObserver, "defaultLifecycleObserver");
        this.f2774a = defaultLifecycleObserver;
        this.f2775b = pVar;
    }

    @Override // androidx.lifecycle.p
    public void onStateChanged(s source, l.a event) {
        kotlin.jvm.internal.r.e(source, "source");
        kotlin.jvm.internal.r.e(event, "event");
        switch (a.f2776a[event.ordinal()]) {
            case 1:
                this.f2774a.onCreate(source);
                break;
            case 2:
                this.f2774a.onStart(source);
                break;
            case 3:
                this.f2774a.onResume(source);
                break;
            case 4:
                this.f2774a.onPause(source);
                break;
            case 5:
                this.f2774a.onStop(source);
                break;
            case 6:
                this.f2774a.onDestroy(source);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
            default:
                throw new n8.o();
        }
        p pVar = this.f2775b;
        if (pVar != null) {
            pVar.onStateChanged(source, event);
        }
    }
}
