package androidx.window.embedding;

import androidx.window.core.ExperimentalWindowApi;
import java.util.Set;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class SplitPairRule extends SplitRule {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f4075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f4076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f4077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Set f4078i;

    @Override // androidx.window.embedding.SplitRule
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitPairRule) || !super.equals(obj)) {
            return false;
        }
        SplitPairRule splitPairRule = (SplitPairRule) obj;
        return r.a(this.f4078i, splitPairRule.f4078i) && this.f4075f == splitPairRule.f4075f && this.f4076g == splitPairRule.f4076g && this.f4077h == splitPairRule.f4077h;
    }

    @Override // androidx.window.embedding.SplitRule
    public int hashCode() {
        return (((((((super.hashCode() * 31) + this.f4078i.hashCode()) * 31) + Integer.hashCode(this.f4075f)) * 31) + Integer.hashCode(this.f4076g)) * 31) + Boolean.hashCode(this.f4077h);
    }
}
