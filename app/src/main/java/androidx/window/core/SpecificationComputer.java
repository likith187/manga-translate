package androidx.window.core;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class SpecificationComputer<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f4026a = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ SpecificationComputer b(Companion companion, Object obj, String str, VerificationMode verificationMode, Logger logger, int i10, Object obj2) {
            if ((i10 & 2) != 0) {
                verificationMode = BuildConfig.INSTANCE.a();
            }
            if ((i10 & 4) != 0) {
                logger = AndroidLogger.INSTANCE;
            }
            return companion.a(obj, str, verificationMode, logger);
        }

        public final SpecificationComputer a(Object obj, String tag, VerificationMode verificationMode, Logger logger) {
            r.e(obj, "<this>");
            r.e(tag, "tag");
            r.e(verificationMode, "verificationMode");
            r.e(logger, "logger");
            return new ValidSpecification(obj, tag, verificationMode, logger);
        }

        private Companion() {
        }
    }

    public enum VerificationMode {
        STRICT,
        LOG,
        QUIET
    }

    public abstract Object a();

    protected final String b(Object value, String message) {
        r.e(value, "value");
        r.e(message, "message");
        return message + " value: " + value;
    }

    public abstract SpecificationComputer c(String str, l lVar);
}
