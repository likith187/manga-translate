package com.google.android.gms.common.api;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes.dex */
public final class g extends UnsupportedOperationException {
    private final Feature zza;

    public g(Feature feature) {
        this.zza = feature;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "Missing ".concat(String.valueOf(this.zza));
    }
}
