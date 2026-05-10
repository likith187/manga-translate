package i4;

import android.graphics.Typeface;

/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Typeface f12567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InterfaceC0154a f12568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f12569c;

    /* JADX INFO: renamed from: i4.a$a, reason: collision with other inner class name */
    public interface InterfaceC0154a {
        void apply(Typeface typeface);
    }

    public a(InterfaceC0154a interfaceC0154a, Typeface typeface) {
        this.f12567a = typeface;
        this.f12568b = interfaceC0154a;
    }

    private void b(Typeface typeface) {
        if (this.f12569c) {
            return;
        }
        this.f12568b.apply(typeface);
    }

    public void a() {
        this.f12569c = true;
    }

    @Override // i4.f
    public void onFontRetrievalFailed(int i10) {
        b(this.f12567a);
    }

    @Override // i4.f
    public void onFontRetrieved(Typeface typeface, boolean z10) {
        b(typeface);
    }
}
