package com.coloros.translate.engine.asr.voicetranslate;

import com.coloros.translate.utils.c0;
import com.oplus.aiunit.translation.request.StartAsrRequest;
import java.util.ArrayList;
import kotlin.collections.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    public static final h INSTANCE = new h();

    private h() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final StartAsrRequest a(String str, String channel, String languageFrom, String languageTo, int i10, boolean z10, boolean z11, ArrayList arrayList, boolean z12, int i11) {
        r.e(channel, "channel");
        r.e(languageFrom, "languageFrom");
        r.e(languageTo, "languageTo");
        StartAsrRequest startAsrRequest = new StartAsrRequest();
        startAsrRequest.setWsChannel(channel);
        startAsrRequest.setRecordId(str);
        startAsrRequest.setFormat("opus");
        startAsrRequest.setAsrAudioTrack(1);
        startAsrRequest.setEnableMt(z10);
        startAsrRequest.setSrcLanguage(languageFrom);
        startAsrRequest.setTargetLanguage(languageTo);
        startAsrRequest.setEnableTts(false);
        startAsrRequest.setEnableLid(z11);
        startAsrRequest.setSceneId(Integer.valueOf(i11));
        if (z11) {
            if (arrayList == null) {
                arrayList = o.d(languageFrom, languageTo);
            }
            startAsrRequest.setSourceLanguages(arrayList);
        }
        startAsrRequest.setEnableLLM(z12);
        startAsrRequest.setAsrAudioTrack(i10);
        c0.f7098a.d("AsrForTranslateRecord", "startAsrRequest:" + startAsrRequest.toJson());
        return startAsrRequest;
    }
}
