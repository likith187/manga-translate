package kotlinx.serialization.json;

import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.PolymorphismValidator;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;

/* JADX INFO: loaded from: classes2.dex */
final class JsonImpl extends Json {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonImpl(JsonConfiguration configuration, SerializersModule module) {
        super(configuration, module, null);
        r.e(configuration, "configuration");
        r.e(module, "module");
        validateConfiguration();
    }

    private final void validateConfiguration() {
        if (r.a(getSerializersModule(), SerializersModuleBuildersKt.EmptySerializersModule())) {
            return;
        }
        getSerializersModule().dumpTo(new PolymorphismValidator(getConfiguration().getUseArrayPolymorphism(), getConfiguration().getClassDiscriminator()));
    }
}
