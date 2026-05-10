package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposersKt {
    public static final Composer Composer(InternalJsonWriter sb, Json json) {
        r.e(sb, "sb");
        r.e(json, "json");
        return json.getConfiguration().getPrettyPrint() ? new ComposerWithPrettyPrint(sb, json) : new Composer(sb);
    }
}
