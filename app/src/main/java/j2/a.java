package j2;

import android.content.Context;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0156a f12747b = new C0156a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f12748a;

    /* JADX INFO: renamed from: j2.a$a, reason: collision with other inner class name */
    public static final class C0156a {
        public /* synthetic */ C0156a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0156a() {
        }
    }

    public a(Context mContext) {
        r.e(mContext, "mContext");
        this.f12748a = mContext;
    }

    public final void a(l callback) {
        r.e(callback, "callback");
        c0.f7098a.d("BlackListLoadManager", "update:do nothing");
    }
}
