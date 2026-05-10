package com.coloros.translate.engine.asr.voicetranslate;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.coloros.translate.utils.c0;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static final i INSTANCE = new i();

    private i() {
    }

    public static final void a(Context context, String exceptName) {
        String str;
        r.e(exceptName, "exceptName");
        if (TextUtils.isEmpty(exceptName)) {
            str = null;
        } else {
            str = "translation_asr_seq_num_" + exceptName;
        }
        e(context, "translation_asr_seq_num_", str);
    }

    public static final void b(Context context, String name) {
        r.e(name, "name");
        if (TextUtils.isEmpty(name)) {
            c0.f7098a.q("VoiceFilePrefUtils", "clearLastSeqNumWithName, name is empty");
            return;
        }
        f(context, "translation_asr_seq_num_" + name);
    }

    public static final long c(Context context, String postKey) {
        r.e(postKey, "postKey");
        if (TextUtils.isEmpty(postKey)) {
            return -1L;
        }
        return d(context, "translation_asr_seq_num_" + postKey, -1L);
    }

    public static final long d(Context context, String str, long j10) {
        Object objM59constructorimpl;
        SharedPreferences sharedPreferencesI = i(context);
        long j11 = 0;
        if (sharedPreferencesI != null) {
            try {
                r.a aVar = n8.r.Companion;
                j11 = sharedPreferencesI.getLong(str, j10);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.d("VoiceFilePrefUtils", "getLongValue:" + thM62exceptionOrNullimpl.getMessage());
            }
        }
        return j11;
    }

    public static final void e(Context context, String str, String str2) {
        Object objM59constructorimpl;
        if (TextUtils.isEmpty(str)) {
            c0.f7098a.q("VoiceFilePrefUtils", "removeItemWithPrefix, but prefix is empty");
            return;
        }
        SharedPreferences sharedPreferencesI = i(context);
        if (sharedPreferencesI != null) {
            try {
                r.a aVar = n8.r.Companion;
                SharedPreferences.Editor editorEdit = sharedPreferencesI.edit();
                Map<String, ?> all = sharedPreferencesI.getAll();
                kotlin.jvm.internal.r.b(all);
                Iterator<Map.Entry<String, ?>> it = all.entrySet().iterator();
                while (it.hasNext()) {
                    String key = it.next().getKey();
                    kotlin.jvm.internal.r.b(key);
                    kotlin.jvm.internal.r.b(str);
                    if (kotlin.text.r.F(key, str, false, 2, null) && !kotlin.jvm.internal.r.a(key, str2)) {
                        editorEdit.remove(key);
                    }
                }
                editorEdit.apply();
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.d("VoiceFilePrefUtils", "removeItemExceptName:" + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    public static final void f(Context context, String str) {
        Object objM59constructorimpl;
        if (TextUtils.isEmpty(str)) {
            c0.f7098a.q("VoiceFilePrefUtils", "removeItemWithPrefix, name is empty");
            return;
        }
        SharedPreferences sharedPreferencesI = i(context);
        if (sharedPreferencesI != null) {
            try {
                r.a aVar = n8.r.Companion;
                SharedPreferences.Editor editorEdit = sharedPreferencesI.edit();
                editorEdit.remove(str);
                editorEdit.apply();
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.d("VoiceFilePrefUtils", "removeItemWithPrefix:" + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    public static final void g(Context context, String postKey, long j10) {
        kotlin.jvm.internal.r.e(postKey, "postKey");
        if (TextUtils.isEmpty(postKey)) {
            return;
        }
        h(context, "translation_asr_seq_num_" + postKey, j10);
    }

    public static final void h(Context context, String str, long j10) {
        SharedPreferences sharedPreferencesI = i(context);
        if (sharedPreferencesI != null) {
            SharedPreferences.Editor editorEdit = sharedPreferencesI.edit();
            editorEdit.putLong(str, j10);
            editorEdit.apply();
        }
    }

    private static final SharedPreferences i(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context);
    }
}
