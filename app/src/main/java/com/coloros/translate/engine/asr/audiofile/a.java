package com.coloros.translate.engine.asr.audiofile;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    private a() {
    }

    public static final e a(String audioType) {
        r.e(audioType, "audioType");
        if (r.a(audioType, "mp3")) {
            return new b(audioType);
        }
        return null;
    }
}
