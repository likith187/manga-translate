package x1;

import android.content.Context;
import com.coloros.translate.engine.info.AsrParams;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile CountDownLatch f16184a = new CountDownLatch(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected volatile AsrParams f16185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected volatile Context f16186c;

    protected a(Context context) {
        this.f16186c = context;
    }

    protected abstract void h();

    @Override // x1.o
    public void setConfig(AsrParams asrParams) {
        if (asrParams == null) {
            com.coloros.translate.utils.c0.j("AbsRtAsrWrapper", "setConfig , params is null");
            return;
        }
        com.coloros.translate.utils.c0.i("AbsRtAsrWrapper", "set config : ${asrParams.toString()}");
        this.f16185b = asrParams;
        h();
    }

    @Override // x1.o
    public void startRecord() {
        if (this.f16185b == null) {
            com.coloros.translate.utils.c0.i("AbsRtAsrWrapper", "mAsrParams = null , need wait ...");
            try {
                this.f16184a.await(200L, TimeUnit.SECONDS);
            } catch (InterruptedException e10) {
                com.coloros.translate.utils.c0.j("AbsRtAsrWrapper", "startRecord e = " + e10.getMessage());
            }
        }
    }

    @Override // x1.o
    public void stopRecord() {
    }
}
