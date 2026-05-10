package androidx.window.embedding;

import android.graphics.Rect;
import android.view.WindowMetrics;
import androidx.window.core.ExperimentalWindowApi;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public class SplitRule extends EmbeddingRule {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f4083e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f4086c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4087d;

    public static final class Api30Impl {
        public static final Api30Impl INSTANCE = new Api30Impl();

        private Api30Impl() {
        }

        public final Rect a(WindowMetrics windowMetrics) {
            r.e(windowMetrics, "windowMetrics");
            Rect bounds = windowMetrics.getBounds();
            r.d(bounds, "windowMetrics.bounds");
            return bounds;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LayoutDir {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SplitFinishBehavior {
    }

    public SplitRule() {
        this(0, 0, 0.0f, 0, 15, null);
    }

    public final boolean a(WindowMetrics parentMetrics) {
        r.e(parentMetrics, "parentMetrics");
        Rect rectA = Api30Impl.INSTANCE.a(parentMetrics);
        return (this.f4084a == 0 || rectA.width() >= this.f4084a) && (this.f4085b == 0 || Math.min(rectA.width(), rectA.height()) >= this.f4085b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitRule)) {
            return false;
        }
        SplitRule splitRule = (SplitRule) obj;
        return this.f4084a == splitRule.f4084a && this.f4085b == splitRule.f4085b && this.f4086c == splitRule.f4086c && this.f4087d == splitRule.f4087d;
    }

    public int hashCode() {
        return (((((this.f4084a * 31) + this.f4085b) * 31) + Float.hashCode(this.f4086c)) * 31) + this.f4087d;
    }

    public /* synthetic */ SplitRule(int i10, int i11, float f10, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i10, (i13 & 2) != 0 ? 0 : i11, (i13 & 4) != 0 ? 0.5f : f10, (i13 & 8) != 0 ? 3 : i12);
    }

    public SplitRule(int i10, int i11, float f10, int i12) {
        this.f4084a = i10;
        this.f4085b = i11;
        this.f4086c = f10;
        this.f4087d = i12;
    }
}
