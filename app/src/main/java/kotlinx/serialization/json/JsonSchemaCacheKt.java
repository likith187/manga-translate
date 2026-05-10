package kotlinx.serialization.json;

import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonSchemaCacheKt {
    public static final DescriptorSchemaCache getSchemaCache(Json json) {
        r.e(json, "<this>");
        return json.get_schemaCache$kotlinx_serialization_json();
    }

    public static /* synthetic */ void getSchemaCache$annotations(Json json) {
    }
}
