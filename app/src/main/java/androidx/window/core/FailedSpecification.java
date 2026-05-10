package androidx.window.core;

import androidx.window.core.SpecificationComputer;
import kotlin.collections.i;
import kotlin.jvm.internal.r;
import n8.o;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final class FailedSpecification<T> extends SpecificationComputer<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f4013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4014c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Logger f4016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SpecificationComputer.VerificationMode f4017f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final WindowStrictModeException f4018g;

    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4019a;

        static {
            int[] iArr = new int[SpecificationComputer.VerificationMode.values().length];
            iArr[SpecificationComputer.VerificationMode.STRICT.ordinal()] = 1;
            iArr[SpecificationComputer.VerificationMode.LOG.ordinal()] = 2;
            iArr[SpecificationComputer.VerificationMode.QUIET.ordinal()] = 3;
            f4019a = iArr;
        }
    }

    public FailedSpecification(Object value, String tag, String message, Logger logger, SpecificationComputer.VerificationMode verificationMode) {
        r.e(value, "value");
        r.e(tag, "tag");
        r.e(message, "message");
        r.e(logger, "logger");
        r.e(verificationMode, "verificationMode");
        this.f4013b = value;
        this.f4014c = tag;
        this.f4015d = message;
        this.f4016e = logger;
        this.f4017f = verificationMode;
        WindowStrictModeException windowStrictModeException = new WindowStrictModeException(b(value, message));
        StackTraceElement[] stackTrace = windowStrictModeException.getStackTrace();
        r.d(stackTrace, "stackTrace");
        Object[] array = i.A(stackTrace, 2).toArray(new StackTraceElement[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        windowStrictModeException.setStackTrace((StackTraceElement[]) array);
        this.f4018g = windowStrictModeException;
    }

    @Override // androidx.window.core.SpecificationComputer
    public Object a() throws WindowStrictModeException {
        int i10 = WhenMappings.f4019a[this.f4017f.ordinal()];
        if (i10 == 1) {
            throw this.f4018g;
        }
        if (i10 == 2) {
            this.f4016e.a(this.f4014c, b(this.f4013b, this.f4015d));
            return null;
        }
        if (i10 == 3) {
            return null;
        }
        throw new o();
    }

    @Override // androidx.window.core.SpecificationComputer
    public SpecificationComputer c(String message, l condition) {
        r.e(message, "message");
        r.e(condition, "condition");
        return this;
    }
}
