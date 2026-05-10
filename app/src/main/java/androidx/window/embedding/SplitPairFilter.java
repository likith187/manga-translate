package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.window.core.ExperimentalWindowApi;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class SplitPairFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ComponentName f4072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ComponentName f4073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4074c;

    public final boolean a(Activity primaryActivity, Intent secondaryActivityIntent) {
        r.e(primaryActivity, "primaryActivity");
        r.e(secondaryActivityIntent, "secondaryActivityIntent");
        ComponentName componentName = primaryActivity.getComponentName();
        MatcherUtils matcherUtils = MatcherUtils.INSTANCE;
        if (!matcherUtils.b(componentName, this.f4072a) || !matcherUtils.b(secondaryActivityIntent.getComponent(), this.f4073b)) {
            return false;
        }
        String str = this.f4074c;
        return str == null || r.a(str, secondaryActivityIntent.getAction());
    }

    public final boolean b(Activity primaryActivity, Activity secondaryActivity) {
        r.e(primaryActivity, "primaryActivity");
        r.e(secondaryActivity, "secondaryActivity");
        MatcherUtils matcherUtils = MatcherUtils.INSTANCE;
        boolean z10 = false;
        boolean z11 = matcherUtils.b(primaryActivity.getComponentName(), this.f4072a) && matcherUtils.b(secondaryActivity.getComponentName(), this.f4073b);
        if (secondaryActivity.getIntent() == null) {
            return z11;
        }
        if (z11) {
            Intent intent = secondaryActivity.getIntent();
            r.d(intent, "secondaryActivity.intent");
            if (a(primaryActivity, intent)) {
                z10 = true;
            }
        }
        return z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitPairFilter)) {
            return false;
        }
        SplitPairFilter splitPairFilter = (SplitPairFilter) obj;
        return r.a(this.f4072a, splitPairFilter.f4072a) && r.a(this.f4073b, splitPairFilter.f4073b) && r.a(this.f4074c, splitPairFilter.f4074c);
    }

    public int hashCode() {
        int iHashCode = ((this.f4072a.hashCode() * 31) + this.f4073b.hashCode()) * 31;
        String str = this.f4074c;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "SplitPairFilter{primaryActivityName=" + this.f4072a + ", secondaryActivityName=" + this.f4073b + ", secondaryActivityAction=" + this.f4074c + AbstractJsonLexerKt.END_OBJ;
    }
}
