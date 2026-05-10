package x3;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f16383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f16384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TimeInterpolator f16385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f16386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f16387e;

    public i(long j10, long j11) {
        this.f16385c = null;
        this.f16386d = 0;
        this.f16387e = 1;
        this.f16383a = j10;
        this.f16384b = j11;
    }

    static i b(ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), f(valueAnimator));
        iVar.f16386d = valueAnimator.getRepeatCount();
        iVar.f16387e = valueAnimator.getRepeatMode();
        return iVar;
    }

    private static TimeInterpolator f(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        return ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) ? a.f16369b : interpolator instanceof AccelerateInterpolator ? a.f16370c : interpolator instanceof DecelerateInterpolator ? a.f16371d : interpolator;
    }

    public void a(Animator animator) {
        animator.setStartDelay(c());
        animator.setDuration(d());
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(g());
            valueAnimator.setRepeatMode(h());
        }
    }

    public long c() {
        return this.f16383a;
    }

    public long d() {
        return this.f16384b;
    }

    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.f16385c;
        return timeInterpolator != null ? timeInterpolator : a.f16369b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (c() == iVar.c() && d() == iVar.d() && g() == iVar.g() && h() == iVar.h()) {
            return e().getClass().equals(iVar.e().getClass());
        }
        return false;
    }

    public int g() {
        return this.f16386d;
    }

    public int h() {
        return this.f16387e;
    }

    public int hashCode() {
        return (((((((((int) (c() ^ (c() >>> 32))) * 31) + ((int) (d() ^ (d() >>> 32)))) * 31) + e().getClass().hashCode()) * 31) + g()) * 31) + h();
    }

    public String toString() {
        return '\n' + getClass().getName() + AbstractJsonLexerKt.BEGIN_OBJ + Integer.toHexString(System.identityHashCode(this)) + " delay: " + c() + " duration: " + d() + " interpolator: " + e().getClass() + " repeatCount: " + g() + " repeatMode: " + h() + "}\n";
    }

    public i(long j10, long j11, TimeInterpolator timeInterpolator) {
        this.f16386d = 0;
        this.f16387e = 1;
        this.f16383a = j10;
        this.f16384b = j11;
        this.f16385c = timeInterpolator;
    }
}
