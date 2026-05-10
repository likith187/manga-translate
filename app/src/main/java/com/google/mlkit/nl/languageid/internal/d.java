package com.google.mlkit.nl.languageid.internal;

import android.content.Context;
import com.google.android.gms.common.internal.k;
import com.google.mlkit.nl.languageid.IdentifiedLanguage;
import f5.i;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class d extends i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j5.b f10786d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h5.b f10787e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f10788f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j5.a f10789g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f10790h;

    public d(Context context, j5.a aVar) {
        this.f10788f = context;
        this.f10789g = aVar;
        this.f10790h = aVar.a() == 100;
    }

    @Override // f5.i
    public final void c() {
        this.f11940a.a();
        if (this.f10786d == null) {
            j5.b bVarB = this.f10789g.b(this.f10788f, this.f10787e);
            this.f10786d = bVarB;
            bVarB.a();
        }
    }

    @Override // f5.i
    public final void e() {
        this.f11940a.a();
        j5.b bVar = this.f10786d;
        if (bVar != null) {
            bVar.release();
            this.f10786d = null;
        }
    }

    public final String j(String str, float f10) {
        String strB;
        if (this.f10786d == null) {
            c();
        }
        if (str.isEmpty()) {
            return "und";
        }
        Iterator it = ((j5.b) k.g(this.f10786d)).b(str, f10).iterator();
        while (true) {
            if (!it.hasNext()) {
                strB = "";
                break;
            }
            IdentifiedLanguage identifiedLanguage = (IdentifiedLanguage) it.next();
            if (!"unknown".equals(identifiedLanguage.b())) {
                strB = identifiedLanguage.b();
                break;
            }
        }
        return strB.isEmpty() ? "und" : "iw".equals(strB) ? "he" : strB;
    }

    final void k(h5.b bVar) {
        this.f10787e = bVar;
    }

    public final boolean l() {
        return this.f10790h;
    }
}
