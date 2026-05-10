package androidx.window.embedding;

import android.content.Intent;
import androidx.window.core.ExperimentalWindowApi;
import java.util.Set;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class SplitPlaceholderRule extends SplitRule {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Intent f4079f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f4080g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f4081h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Set f4082i;

    @Override // androidx.window.embedding.SplitRule
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitPlaceholderRule) || !super.equals(obj)) {
            return false;
        }
        SplitPlaceholderRule splitPlaceholderRule = (SplitPlaceholderRule) obj;
        return r.a(this.f4079f, splitPlaceholderRule.f4079f) && this.f4080g == splitPlaceholderRule.f4080g && this.f4081h == splitPlaceholderRule.f4081h && r.a(this.f4082i, splitPlaceholderRule.f4082i);
    }

    @Override // androidx.window.embedding.SplitRule
    public int hashCode() {
        return (((((((super.hashCode() * 31) + this.f4079f.hashCode()) * 31) + Boolean.hashCode(this.f4080g)) * 31) + Integer.hashCode(this.f4081h)) * 31) + this.f4082i.hashCode();
    }
}
