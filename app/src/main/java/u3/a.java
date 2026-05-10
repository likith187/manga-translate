package u3;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Looper f15860a;

    public a(Looper looper) {
        super(looper);
        this.f15860a = Looper.getMainLooper();
    }
}
