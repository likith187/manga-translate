package t3;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class i extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Looper f15702a;

    public i(Looper looper) {
        super(looper);
        this.f15702a = Looper.getMainLooper();
    }

    public i(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.f15702a = Looper.getMainLooper();
    }
}
