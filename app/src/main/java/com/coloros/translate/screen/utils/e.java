package com.coloros.translate.screen.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static final e INSTANCE = new e();

    private e() {
    }

    private static final String a(Context context) {
        return context.getPackageName() + "_preferences";
    }

    public static final Object b(Context context, String key, Object obj) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(key, "key");
        return c(context, a(context), key, obj);
    }

    public static final Object c(Context context, String fileName, String key, Object obj) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(fileName, "fileName");
        kotlin.jvm.internal.r.e(key, "key");
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, 0);
        kotlin.jvm.internal.r.d(sharedPreferences, "getSharedPreferences(...)");
        return obj instanceof Integer ? Integer.valueOf(sharedPreferences.getInt(key, ((Number) obj).intValue())) : obj instanceof Boolean ? Boolean.valueOf(sharedPreferences.getBoolean(key, ((Boolean) obj).booleanValue())) : obj instanceof Float ? Float.valueOf(sharedPreferences.getFloat(key, ((Number) obj).floatValue())) : obj instanceof Long ? Long.valueOf(sharedPreferences.getLong(key, ((Number) obj).longValue())) : obj instanceof String ? sharedPreferences.getString(key, (String) obj) : obj;
    }

    public static final void d(Context context, String key, Object obj) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(key, "key");
        e(context, a(context), key, obj);
    }

    public static final void e(Context context, String fileName, String key, Object obj) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(fileName, "fileName");
        kotlin.jvm.internal.r.e(key, "key");
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, 0);
        kotlin.jvm.internal.r.d(sharedPreferences, "getSharedPreferences(...)");
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        kotlin.jvm.internal.r.d(editorEdit, "edit(...)");
        if (obj instanceof Integer) {
            editorEdit.putInt(key, ((Number) obj).intValue());
        } else if (obj instanceof Boolean) {
            editorEdit.putBoolean(key, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            editorEdit.putFloat(key, ((Number) obj).floatValue());
        } else if (obj instanceof Long) {
            editorEdit.putLong(key, ((Number) obj).longValue());
        } else if (obj instanceof String) {
            editorEdit.putString(key, (String) obj);
        }
        editorEdit.apply();
    }
}
