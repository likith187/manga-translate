package z2;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h3.a f16622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h3.a f16623c;

    i(Context context, h3.a aVar, h3.a aVar2) {
        this.f16621a = context;
        this.f16622b = aVar;
        this.f16623c = aVar2;
    }

    h a(String str) {
        return h.a(this.f16621a, this.f16622b, this.f16623c, str);
    }
}
