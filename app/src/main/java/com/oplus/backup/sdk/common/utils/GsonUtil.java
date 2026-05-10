package com.oplus.backup.sdk.common.utils;

import com.google.gson.d;
import java.lang.reflect.Type;
import kotlin.jvm.internal.r;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes2.dex */
public final class GsonUtil {
    public static final GsonUtil INSTANCE = new GsonUtil();
    private static final j gson$delegate = k.b(GsonUtil$gson$2.INSTANCE);

    private GsonUtil() {
    }

    public static final <T> T fromJson(String str, Type type) {
        r.e(type, "type");
        return (T) INSTANCE.getGson().n(str, type);
    }

    private final d getGson() {
        return (d) gson$delegate.getValue();
    }

    public static final String toJson(Object any) {
        r.e(any, "any");
        String strV = INSTANCE.getGson().v(any);
        r.d(strV, "gson.toJson(any)");
        return strV;
    }
}
