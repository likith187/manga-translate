package androidx.window.embedding;

import androidx.window.core.ExperimentalWindowApi;
import java.util.Set;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class ActivityRule extends EmbeddingRule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f4043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f4044b;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityRule)) {
            return false;
        }
        ActivityRule activityRule = (ActivityRule) obj;
        return r.a(this.f4044b, activityRule.f4044b) && this.f4043a == activityRule.f4043a;
    }

    public int hashCode() {
        return (this.f4044b.hashCode() * 31) + Boolean.hashCode(this.f4043a);
    }
}
