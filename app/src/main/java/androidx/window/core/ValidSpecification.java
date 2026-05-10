package androidx.window.core;

import androidx.window.core.SpecificationComputer;
import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final class ValidSpecification<T> extends SpecificationComputer<T> {

    /* JADX INFO: renamed from: b */
    private final Object f4027b;

    /* JADX INFO: renamed from: c */
    private final String f4028c;

    /* JADX INFO: renamed from: d */
    private final SpecificationComputer.VerificationMode f4029d;

    /* JADX INFO: renamed from: e */
    private final Logger f4030e;

    public ValidSpecification(Object value, String tag, SpecificationComputer.VerificationMode verificationMode, Logger logger) {
        r.e(value, "value");
        r.e(tag, "tag");
        r.e(verificationMode, "verificationMode");
        r.e(logger, "logger");
        this.f4027b = value;
        this.f4028c = tag;
        this.f4029d = verificationMode;
        this.f4030e = logger;
    }

    @Override // androidx.window.core.SpecificationComputer
    public Object a() {
        return this.f4027b;
    }

    @Override // androidx.window.core.SpecificationComputer
    public SpecificationComputer c(String message, l condition) {
        r.e(message, "message");
        r.e(condition, "condition");
        return ((Boolean) condition.invoke(this.f4027b)).booleanValue() ? this : new FailedSpecification(this.f4027b, this.f4028c, message, this.f4030e, this.f4029d);
    }
}
