package g4;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import com.coui.appcompat.list.COUIBackgroundAnimationUtil;
import com.google.android.material.R$attr;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TimeInterpolator f12057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final View f12058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f12059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final int f12060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final int f12061e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.activity.b f12062f;

    public a(View view) {
        this.f12058b = view;
        Context context = view.getContext();
        this.f12057a = i.g(context, R$attr.motionEasingStandardDecelerateInterpolator, e0.a.a(0.0f, 0.0f, 0.0f, 1.0f));
        this.f12059c = i.f(context, R$attr.motionDurationMedium2, 300);
        this.f12060d = i.f(context, R$attr.motionDurationShort3, COUIBackgroundAnimationUtil.APPEAR_DURATION);
        this.f12061e = i.f(context, R$attr.motionDurationShort2, 100);
    }

    public float a(float f10) {
        return this.f12057a.getInterpolation(f10);
    }

    protected androidx.activity.b b() {
        if (this.f12062f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        androidx.activity.b bVar = this.f12062f;
        this.f12062f = null;
        return bVar;
    }

    public androidx.activity.b c() {
        androidx.activity.b bVar = this.f12062f;
        this.f12062f = null;
        return bVar;
    }

    protected void d(androidx.activity.b bVar) {
        this.f12062f = bVar;
    }

    protected androidx.activity.b e(androidx.activity.b bVar) {
        if (this.f12062f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
        }
        androidx.activity.b bVar2 = this.f12062f;
        this.f12062f = bVar;
        return bVar2;
    }
}
