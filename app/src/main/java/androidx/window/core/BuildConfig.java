package androidx.window.core;

import androidx.window.core.SpecificationComputer;

/* JADX INFO: loaded from: classes.dex */
public final class BuildConfig {
    public static final BuildConfig INSTANCE = new BuildConfig();

    /* JADX INFO: renamed from: a */
    private static final SpecificationComputer.VerificationMode f4006a = SpecificationComputer.VerificationMode.QUIET;

    private BuildConfig() {
    }

    public final SpecificationComputer.VerificationMode a() {
        return f4006a;
    }
}
