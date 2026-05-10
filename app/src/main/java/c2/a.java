package c2;

import android.os.IBinder;
import com.coloros.translate.engine.ITranslateListener;
import com.coloros.translate.utils.c0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0054a f4283c = new C0054a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f4284a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap f4285b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c2.a$a, reason: collision with other inner class name */
    public static final class C0054a {
        public /* synthetic */ C0054a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0054a() {
        }
    }

    public final class b implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f4286a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private IBinder f4287b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ a f4288c;

        public b(a aVar, String mRequestId, IBinder iBinder) {
            r.e(mRequestId, "mRequestId");
            this.f4288c = aVar;
            this.f4286a = mRequestId;
            this.f4287b = iBinder;
            if (iBinder != null) {
                aVar.f4284a.put(this.f4286a, this);
            }
        }

        public final void a() {
            Object objM59constructorimpl;
            Object objM59constructorimpl2;
            c0.f7098a.d("StreamTextCallBackManager", "unbindDied mRequestId:" + this.f4286a);
            a aVar = this.f4288c;
            try {
                r.a aVar2 = n8.r.Companion;
                aVar.f4284a.remove(this.f4286a);
                objM59constructorimpl = n8.r.m59constructorimpl((ITranslateListener) aVar.f4285b.remove(this.f4286a));
            } catch (Throwable th) {
                r.a aVar3 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("StreamTextCallBackManager", "unbindDied error:" + thM62exceptionOrNullimpl.getMessage());
            }
            try {
                IBinder iBinder = this.f4287b;
                objM59constructorimpl2 = n8.r.m59constructorimpl(iBinder != null ? Boolean.valueOf(iBinder.unlinkToDeath(this, 0)) : null);
            } catch (Throwable th2) {
                r.a aVar4 = n8.r.Companion;
                objM59constructorimpl2 = n8.r.m59constructorimpl(s.a(th2));
            }
            Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
            if (thM62exceptionOrNullimpl2 != null) {
                c0.f7098a.e("StreamTextCallBackManager", "unbindDied error2:" + thM62exceptionOrNullimpl2.getMessage());
            }
            this.f4287b = null;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            a();
            this.f4288c.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        c0.f7098a.d("StreamTextCallBackManager", "doBinderDied");
        if (this.f4284a.isEmpty()) {
            h();
        }
    }

    private final void h() {
        c0.f7098a.e("StreamTextCallBackManager", "realAllDoBinderDied");
    }

    public final void d(int i10) {
        Object objM59constructorimpl;
        c0.f7098a.d("StreamTextCallBackManager", "aiunitDiedCallBack");
        try {
            r.a aVar = n8.r.Companion;
            Collection<ITranslateListener> collectionValues = this.f4285b.values();
            kotlin.jvm.internal.r.d(collectionValues, "<get-values>(...)");
            for (ITranslateListener iTranslateListener : collectionValues) {
                try {
                    r.a aVar2 = n8.r.Companion;
                    iTranslateListener.onError("", "aiunit died", i10);
                    objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar3 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("StreamTextCallBackManager", "aiunitDiedCallBack error:" + thM62exceptionOrNullimpl.getMessage());
                }
            }
            n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th2) {
            r.a aVar4 = n8.r.Companion;
            n8.r.m59constructorimpl(s.a(th2));
        }
        j();
    }

    public final ArrayList f() {
        ArrayList arrayList = new ArrayList();
        Set setKeySet = this.f4285b.keySet();
        kotlin.jvm.internal.r.d(setKeySet, "<get-keys>(...)");
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        c0.f7098a.d("StreamTextCallBackManager", "getAllStreamCancelId size:" + arrayList.size());
        return arrayList;
    }

    public final ITranslateListener g(String requestId) {
        kotlin.jvm.internal.r.e(requestId, "requestId");
        ITranslateListener iTranslateListener = (ITranslateListener) this.f4285b.get(requestId);
        if (iTranslateListener == null) {
            c0.f7098a.q("StreamTextCallBackManager", "getListener requestId:" + requestId + " listener == null");
        }
        return iTranslateListener;
    }

    public final void i(String requestId, ITranslateListener iTranslateListener) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(requestId, "requestId");
        if (iTranslateListener == null) {
            c0.f7098a.e("StreamTextCallBackManager", "registerListener requestId:" + requestId + " reject");
            return;
        }
        c0.f7098a.d("StreamTextCallBackManager", "registerListener requestId:" + requestId);
        b bVar = (b) this.f4284a.get(requestId);
        if (bVar != null) {
            bVar.a();
        }
        this.f4285b.put(requestId, iTranslateListener);
        try {
            r.a aVar = n8.r.Companion;
            IBinder iBinderAsBinder = iTranslateListener.asBinder();
            iBinderAsBinder.linkToDeath(new b(this, requestId, iBinderAsBinder), 0);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("StreamTextCallBackManager", "registerListener error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void j() {
        Object objM59constructorimpl;
        c0.f7098a.d("StreamTextCallBackManager", "removeAllBinderCallBack");
        try {
            r.a aVar = n8.r.Companion;
            Collection<b> collectionValues = this.f4284a.values();
            kotlin.jvm.internal.r.d(collectionValues, "<get-values>(...)");
            for (b bVar : collectionValues) {
                try {
                    r.a aVar2 = n8.r.Companion;
                    bVar.a();
                    objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar3 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("StreamTextCallBackManager", "removeAllBinderCallBack error:" + thM62exceptionOrNullimpl.getMessage());
                }
            }
            n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th2) {
            r.a aVar4 = n8.r.Companion;
            n8.r.m59constructorimpl(s.a(th2));
        }
        this.f4284a.clear();
        this.f4285b.clear();
    }

    public final void k(String requestId) {
        kotlin.jvm.internal.r.e(requestId, "requestId");
        c0.f7098a.d("StreamTextCallBackManager", "unRegisterListener requestId:" + requestId);
        b bVar = (b) this.f4284a.get(requestId);
        if (bVar != null) {
            bVar.a();
        }
        this.f4285b.remove(requestId);
    }
}
