package androidx.core.app;

import android.app.ActivityOptions;
import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    private static class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ActivityOptions f1917a;

        a(ActivityOptions activityOptions) {
            this.f1917a = activityOptions;
        }

        @Override // androidx.core.app.b
        public Bundle b() {
            return this.f1917a.toBundle();
        }
    }

    protected b() {
    }

    public static b a(Context context, int i10, int i11) {
        return new a(ActivityOptions.makeCustomAnimation(context, i10, i11));
    }

    public abstract Bundle b();
}
