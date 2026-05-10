package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.window.core.ExperimentalWindowApi;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class ActivityFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ComponentName f4041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4042b;

    public final boolean a(Activity activity) {
        r.e(activity, "activity");
        if (MatcherUtils.INSTANCE.a(activity, this.f4041a)) {
            String str = this.f4042b;
            if (str != null) {
                Intent intent = activity.getIntent();
                if (r.a(str, intent != null ? intent.getAction() : null)) {
                }
            }
            return true;
        }
        return false;
    }

    public final boolean b(Intent intent) {
        r.e(intent, "intent");
        if (!MatcherUtils.INSTANCE.b(intent.getComponent(), this.f4041a)) {
            return false;
        }
        String str = this.f4042b;
        return str == null || r.a(str, intent.getAction());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityFilter)) {
            return false;
        }
        ActivityFilter activityFilter = (ActivityFilter) obj;
        return r.a(this.f4041a, activityFilter.f4041a) && r.a(this.f4042b, activityFilter.f4042b);
    }

    public int hashCode() {
        int iHashCode = this.f4041a.hashCode() * 31;
        String str = this.f4042b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "ActivityFilter(componentName=" + this.f4041a + ", intentAction=" + this.f4042b + ')';
    }
}
