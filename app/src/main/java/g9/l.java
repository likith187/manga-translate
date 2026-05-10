package g9;

import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.internal.h0;
import kotlinx.coroutines.internal.j0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f12152a = h0.e("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f12153b = j0.f("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f12154c = j0.e("kotlinx.coroutines.scheduler.core.pool.size", b9.d.c(h0.a(), 2), 1, 0, 8, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f12155d = j0.e("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f12156e = TimeUnit.SECONDS.toNanos(j0.f("kotlinx.coroutines.scheduler.keep.alive.sec", 60, 0, 0, 12, null));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static g f12157f = e.INSTANCE;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final i f12158g = new j(0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final i f12159h = new j(1);
}
