package androidx.window.embedding;

import android.app.Activity;
import androidx.window.core.ExperimentalWindowApi;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class ActivityStack {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f4045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4046b;

    public ActivityStack(List activities, boolean z10) {
        r.e(activities, "activities");
        this.f4045a = activities;
        this.f4046b = z10;
    }

    public final boolean a(Activity activity) {
        r.e(activity, "activity");
        return this.f4045a.contains(activity);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityStack)) {
            return false;
        }
        ActivityStack activityStack = (ActivityStack) obj;
        return (r.a(this.f4045a, activityStack.f4045a) || this.f4046b == activityStack.f4046b) ? false : true;
    }

    public int hashCode() {
        return ((this.f4046b ? 1 : 0) * 31) + this.f4045a.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ActivityStack{");
        sb.append("activities=" + this.f4045a);
        sb.append("isEmpty=" + this.f4046b + AbstractJsonLexerKt.END_OBJ);
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
