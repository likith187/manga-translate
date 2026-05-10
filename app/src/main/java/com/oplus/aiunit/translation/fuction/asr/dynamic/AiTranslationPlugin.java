package com.oplus.aiunit.translation.fuction.asr.dynamic;

import android.content.Context;
import com.oplus.aisubsystem.core.plugin.AiPlugin;
import com.oplus.plugin.dynamic.api.PluginSettings;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class AiTranslationPlugin extends AiPlugin {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiTranslationPlugin(Context context) {
        super(context, (PluginSettings) null, 2, (DefaultConstructorMarker) null);
        r.e(context, "context");
    }

    public String getPluginName() {
        return "ai_omni";
    }
}
