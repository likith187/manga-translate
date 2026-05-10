package androidx.window.embedding;

import android.app.Activity;
import androidx.window.core.ExperimentalWindowApi;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class SplitInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ActivityStack f4069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ActivityStack f4070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f4071c;

    public SplitInfo(ActivityStack primaryActivityStack, ActivityStack secondaryActivityStack, float f10) {
        r.e(primaryActivityStack, "primaryActivityStack");
        r.e(secondaryActivityStack, "secondaryActivityStack");
        this.f4069a = primaryActivityStack;
        this.f4070b = secondaryActivityStack;
        this.f4071c = f10;
    }

    public final boolean a(Activity activity) {
        r.e(activity, "activity");
        return this.f4069a.a(activity) || this.f4070b.a(activity);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitInfo)) {
            return false;
        }
        SplitInfo splitInfo = (SplitInfo) obj;
        return r.a(this.f4069a, splitInfo.f4069a) && r.a(this.f4070b, splitInfo.f4070b) && this.f4071c == splitInfo.f4071c;
    }

    public int hashCode() {
        return (((this.f4069a.hashCode() * 31) + this.f4070b.hashCode()) * 31) + Float.hashCode(this.f4071c);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SplitInfo:{");
        sb.append("primaryActivityStack=" + this.f4069a + AbstractJsonLexerKt.COMMA);
        sb.append("secondaryActivityStack=" + this.f4070b + AbstractJsonLexerKt.COMMA);
        sb.append("splitRatio=" + this.f4071c + AbstractJsonLexerKt.END_OBJ);
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
