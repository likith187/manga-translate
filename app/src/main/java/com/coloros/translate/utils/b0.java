package com.coloros.translate.utils;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public abstract class b0 {
    public static final Object a(String str, Type type) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(type, "type");
        try {
            return a0.INSTANCE.a().n(str, type);
        } catch (Exception e10) {
            c0.f7098a.f("GsonUtil", "toJson", e10);
            return null;
        }
    }

    public static final String b(Object obj) {
        kotlin.jvm.internal.r.e(obj, "<this>");
        try {
            String strV = a0.INSTANCE.a().v(obj);
            kotlin.jvm.internal.r.b(strV);
            return strV;
        } catch (Exception e10) {
            c0.f7098a.f("GsonUtil", "toJson", e10);
            return "";
        }
    }
}
