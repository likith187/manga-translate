package com.google.android.gms.internal.mlkit_language_id_common;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class t implements q4.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8698a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f8699b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private q4.c f8700c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f8701d;

    t(p pVar) {
        this.f8701d = pVar;
    }

    private final void d() {
        if (this.f8698a) {
            throw new q4.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f8698a = true;
    }

    final void a(q4.c cVar, boolean z10) {
        this.f8698a = false;
        this.f8700c = cVar;
        this.f8699b = z10;
    }

    @Override // q4.g
    public final q4.g b(String str) throws IOException {
        d();
        this.f8701d.e(this.f8700c, str, this.f8699b);
        return this;
    }

    @Override // q4.g
    public final q4.g c(boolean z10) throws IOException {
        d();
        this.f8701d.f(this.f8700c, z10 ? 1 : 0, this.f8699b);
        return this;
    }
}
