package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f2138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f2139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f2140c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f2141f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f2142h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Runnable f2143i;

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.f2139b = false;
        this.f2138a = -1L;
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f2140c = false;
        if (this.f2141f) {
            return;
        }
        this.f2138a = System.currentTimeMillis();
        setVisibility(0);
    }

    private void e() {
        removeCallbacks(this.f2142h);
        removeCallbacks(this.f2143i);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        e();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e();
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f2138a = -1L;
        this.f2139b = false;
        this.f2140c = false;
        this.f2141f = false;
        this.f2142h = new Runnable() { // from class: androidx.core.widget.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f2176a.c();
            }
        };
        this.f2143i = new Runnable() { // from class: androidx.core.widget.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f2177a.d();
            }
        };
    }
}
