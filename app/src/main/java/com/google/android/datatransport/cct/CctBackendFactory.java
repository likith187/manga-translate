package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import z2.h;
import z2.m;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class CctBackendFactory implements z2.d {
    @Override // z2.d
    public m create(h hVar) {
        return new d(hVar.b(), hVar.e(), hVar.d());
    }
}
