package com.google.android.gms.internal.mlkit_language_id_common;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f8663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f8664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q4.d f8665c;

    s(Map map, Map map2, q4.d dVar) {
        this.f8663a = map;
        this.f8664b = map2;
        this.f8665c = dVar;
    }

    public final byte[] a(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new p(byteArrayOutputStream, this.f8663a, this.f8664b, this.f8665c).h(obj);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
