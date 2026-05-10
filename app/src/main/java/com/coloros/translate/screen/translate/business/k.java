package com.coloros.translate.screen.translate.business;

import android.content.Context;
import android.graphics.Bitmap;
import com.coloros.translate.screen.R$string;
import com.coloros.translate.screen.ScreenTranslationService;
import com.coloros.translate.screen.translate.business.d;
import com.coloros.translate.screen.utils.u;
import com.coloros.translate.screen.utils.w;
import com.coloros.translate.utils.c0;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.q;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class k implements e, d.a {

    /* JADX INFO: renamed from: i */
    public static final a f5538i = new a(null);

    /* JADX INFO: renamed from: a */
    private final Context f5539a;

    /* JADX INFO: renamed from: b */
    private final f f5540b;

    /* JADX INFO: renamed from: c */
    private final d f5541c;

    /* JADX INFO: renamed from: d */
    private final ConcurrentHashMap f5542d;

    /* JADX INFO: renamed from: e */
    private final ExecutorService f5543e;

    /* JADX INFO: renamed from: f */
    private final ExecutorService f5544f;

    /* JADX INFO: renamed from: g */
    private String f5545g;

    /* JADX INFO: renamed from: h */
    private Bitmap f5546h;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public k(Context context, f iView) {
        r.e(context, "context");
        r.e(iView, "iView");
        this.f5539a = context;
        this.f5540b = iView;
        this.f5541c = new h(context, this);
        this.f5542d = new ConcurrentHashMap();
        this.f5543e = Executors.newSingleThreadExecutor();
        this.f5544f = Executors.newSingleThreadExecutor();
    }

    public static final void h(k this$0) {
        r.e(this$0, "this$0");
        this$0.m();
        this$0.f5541c.a();
    }

    private final g i(Context context, m mVar, int i10) {
        Bitmap bitmap;
        c0.a aVar = c0.f7098a;
        aVar.d("ScreenTranslationPresenter", "createOCRData " + mVar + " retry " + i10);
        Bitmap bitmapA = com.coloros.translate.screen.utils.l.a(context, mVar.c(), Boolean.FALSE);
        if (bitmapA == null) {
            aVar.d("ScreenTranslationPresenter", "shot result is null");
            return null;
        }
        w8.a aVarA = mVar.a();
        if (aVarA != null) {
            aVarA.mo8invoke();
        }
        if (mVar.e() && bitmapA.getConfig() == Bitmap.Config.HARDWARE) {
            Bitmap bitmapCopy = bitmapA.copy(Bitmap.Config.RGB_565, true);
            bitmapA.recycle();
            r.b(bitmapCopy);
            bitmap = bitmapCopy;
        } else {
            bitmap = bitmapA;
        }
        q qVarB = com.coloros.translate.screen.utils.a.b(bitmap);
        float fFloatValue = ((Number) qVarB.getFirst()).floatValue();
        Object second = qVarB.getSecond();
        aVar.d("ScreenTranslationPresenter", "createOCRData resize scale " + fFloatValue);
        aVar.d("ScreenTranslationPresenter", "createOCRData shot: w: " + bitmap.getWidth() + ", h: " + bitmap.getHeight() + ", size: " + bitmap.getByteCount());
        Bitmap bitmap2 = (Bitmap) second;
        aVar.d("ScreenTranslationPresenter", "createOCRData scaleBitmap: w: " + (bitmap2 != null ? Integer.valueOf(bitmap2.getWidth()) : null) + ", h: " + (bitmap2 != null ? Integer.valueOf(bitmap2.getHeight()) : null) + ", size: " + (bitmap2 != null ? Integer.valueOf(bitmap2.getByteCount()) : null));
        return new g(mVar, bitmap, bitmap2, i10, fFloatValue);
    }

    private final boolean j(m mVar) {
        return mVar.e() && (b.INSTANCE.b() || w.f() || ScreenTranslationService.m());
    }

    public static final void l(k this$0, m viewRequest, int i10) {
        r.e(this$0, "this$0");
        r.e(viewRequest, "$viewRequest");
        g gVarI = this$0.i(this$0.f5539a, viewRequest, i10);
        if (gVarI == null) {
            this$0.f5540b.e(viewRequest);
        } else {
            this$0.f5542d.put(Integer.valueOf(gVarI.e().d()), gVarI);
            this$0.f5541c.b(gVarI);
        }
    }

    private final void m() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            if (!this.f5542d.isEmpty()) {
                Collection<g> collectionValues = this.f5542d.values();
                kotlin.jvm.internal.r.d(collectionValues, "<get-values>(...)");
                for (g gVar : collectionValues) {
                    gVar.g();
                    c0.f7098a.d("ScreenTranslationPresenter", "tryRelease:" + gVar.e().d());
                }
                this.f5542d.clear();
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("ScreenTranslationPresenter", "tryRelease:onFailure " + thM62exceptionOrNullimpl);
        }
    }

    @Override // com.coloros.translate.screen.translate.business.d.a
    public void a(g presenterRequest, int i10) {
        kotlin.jvm.internal.r.e(presenterRequest, "presenterRequest");
        this.f5540b.h(presenterRequest.e(), i10);
    }

    @Override // com.coloros.translate.screen.translate.business.d.a
    public void b(g presenterRequest, Bitmap bitmap, String str) {
        kotlin.jvm.internal.r.e(presenterRequest, "presenterRequest");
        kotlin.jvm.internal.r.e(bitmap, "bitmap");
        this.f5545g = str;
        this.f5546h = bitmap;
        this.f5540b.i(presenterRequest.e(), bitmap);
        m();
    }

    @Override // com.coloros.translate.screen.translate.business.e
    public void c(final m viewRequest, final int i10) {
        kotlin.jvm.internal.r.e(viewRequest, "viewRequest");
        c0.f7098a.d("ScreenTranslationPresenter", "start translate：" + viewRequest.d());
        this.f5545g = null;
        this.f5546h = null;
        if (com.coloros.translate.observer.e.INSTANCE.k()) {
            u.d(R$string.translate_unified_no_network, 0, 2, null);
            this.f5540b.o(viewRequest);
        } else if (j(viewRequest)) {
            this.f5540b.f(viewRequest);
        } else {
            m();
            this.f5543e.execute(new Runnable() { // from class: com.coloros.translate.screen.translate.business.j
                @Override // java.lang.Runnable
                public final void run() {
                    k.l(this.f5535a, viewRequest, i10);
                }
            });
        }
    }

    @Override // com.coloros.translate.screen.translate.business.d.a
    public void d(g presenterRequest, String str, String str2) {
        kotlin.jvm.internal.r.e(presenterRequest, "presenterRequest");
        this.f5540b.m(presenterRequest.e(), str, str2);
        m();
    }

    public void g() {
        this.f5544f.execute(new Runnable() { // from class: com.coloros.translate.screen.translate.business.i
            @Override // java.lang.Runnable
            public final void run() {
                k.h(this.f5534a);
            }
        });
    }

    public final void k() {
        this.f5545g = null;
        this.f5546h = null;
        g();
        m();
    }
}
