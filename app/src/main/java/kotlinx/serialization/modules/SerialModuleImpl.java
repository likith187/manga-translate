package kotlinx.serialization.modules;

import c9.c;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.i0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.modules.ContextualProvider;
import n8.o;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class SerialModuleImpl extends SerializersModule {
    private final Map<c, ContextualProvider> class2ContextualFactory;
    private final boolean hasInterfaceContextualSerializers;
    private final Map<c, l> polyBase2DefaultDeserializerProvider;
    private final Map<c, l> polyBase2DefaultSerializerProvider;
    private final Map<c, Map<String, KSerializer<?>>> polyBase2NamedSerializers;
    public final Map<c, Map<c, KSerializer<?>>> polyBase2Serializers;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SerialModuleImpl(Map<c, ? extends ContextualProvider> class2ContextualFactory, Map<c, ? extends Map<c, ? extends KSerializer<?>>> polyBase2Serializers, Map<c, ? extends l> polyBase2DefaultSerializerProvider, Map<c, ? extends Map<String, ? extends KSerializer<?>>> polyBase2NamedSerializers, Map<c, ? extends l> polyBase2DefaultDeserializerProvider, boolean z10) {
        super(null);
        r.e(class2ContextualFactory, "class2ContextualFactory");
        r.e(polyBase2Serializers, "polyBase2Serializers");
        r.e(polyBase2DefaultSerializerProvider, "polyBase2DefaultSerializerProvider");
        r.e(polyBase2NamedSerializers, "polyBase2NamedSerializers");
        r.e(polyBase2DefaultDeserializerProvider, "polyBase2DefaultDeserializerProvider");
        this.class2ContextualFactory = class2ContextualFactory;
        this.polyBase2Serializers = polyBase2Serializers;
        this.polyBase2DefaultSerializerProvider = polyBase2DefaultSerializerProvider;
        this.polyBase2NamedSerializers = polyBase2NamedSerializers;
        this.polyBase2DefaultDeserializerProvider = polyBase2DefaultDeserializerProvider;
        this.hasInterfaceContextualSerializers = z10;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public void dumpTo(SerializersModuleCollector collector) {
        r.e(collector, "collector");
        for (Map.Entry<c, ContextualProvider> entry : this.class2ContextualFactory.entrySet()) {
            c key = entry.getKey();
            ContextualProvider value = entry.getValue();
            if (value instanceof ContextualProvider.Argless) {
                r.c(key, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                KSerializer<?> serializer = ((ContextualProvider.Argless) value).getSerializer();
                r.c(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
                collector.contextual(key, serializer);
            } else {
                if (!(value instanceof ContextualProvider.WithTypeArguments)) {
                    throw new o();
                }
                collector.contextual(key, ((ContextualProvider.WithTypeArguments) value).getProvider());
            }
        }
        for (Map.Entry<c, Map<c, KSerializer<?>>> entry2 : this.polyBase2Serializers.entrySet()) {
            c key2 = entry2.getKey();
            for (Map.Entry<c, KSerializer<?>> entry3 : entry2.getValue().entrySet()) {
                c key3 = entry3.getKey();
                KSerializer<?> value2 = entry3.getValue();
                r.c(key2, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                r.c(key3, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                r.c(value2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                collector.polymorphic(key2, key3, value2);
            }
        }
        for (Map.Entry<c, l> entry4 : this.polyBase2DefaultSerializerProvider.entrySet()) {
            c key4 = entry4.getKey();
            l value3 = entry4.getValue();
            r.c(key4, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            r.c(value3, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"value\")] kotlin.Any, kotlinx.serialization.SerializationStrategy<kotlin.Any>?>");
            collector.polymorphicDefaultSerializer(key4, (l) i0.d(value3, 1));
        }
        for (Map.Entry<c, l> entry5 : this.polyBase2DefaultDeserializerProvider.entrySet()) {
            c key5 = entry5.getKey();
            l value4 = entry5.getValue();
            r.c(key5, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            r.c(value4, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"className\")] kotlin.String?, kotlinx.serialization.DeserializationStrategy<kotlin.Any>?>");
            collector.polymorphicDefaultDeserializer(key5, (l) i0.d(value4, 1));
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public <T> KSerializer<T> getContextual(c kClass, List<? extends KSerializer<?>> typeArgumentsSerializers) {
        r.e(kClass, "kClass");
        r.e(typeArgumentsSerializers, "typeArgumentsSerializers");
        ContextualProvider contextualProvider = this.class2ContextualFactory.get(kClass);
        KSerializer<?> kSerializerInvoke = contextualProvider != null ? contextualProvider.invoke(typeArgumentsSerializers) : null;
        if (kSerializerInvoke != null) {
            return (KSerializer<T>) kSerializerInvoke;
        }
        return null;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public boolean getHasInterfaceContextualSerializers$kotlinx_serialization_core() {
        return this.hasInterfaceContextualSerializers;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public <T> SerializationStrategy<T> getPolymorphic(c baseClass, T value) {
        r.e(baseClass, "baseClass");
        r.e(value, "value");
        if (!baseClass.b(value)) {
            return null;
        }
        Map<c, KSerializer<?>> map = this.polyBase2Serializers.get(baseClass);
        KSerializer<?> kSerializer = map != null ? map.get(d0.b(value.getClass())) : null;
        if (kSerializer == null) {
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        l lVar = this.polyBase2DefaultSerializerProvider.get(baseClass);
        l lVar2 = i0.i(lVar, 1) ? lVar : null;
        if (lVar2 != null) {
            return (SerializationStrategy) lVar2.invoke(value);
        }
        return null;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public <T> DeserializationStrategy<T> getPolymorphic(c baseClass, String str) {
        r.e(baseClass, "baseClass");
        Map<String, KSerializer<?>> map = this.polyBase2NamedSerializers.get(baseClass);
        KSerializer<?> kSerializer = map != null ? map.get(str) : null;
        if (kSerializer == null) {
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        l lVar = this.polyBase2DefaultDeserializerProvider.get(baseClass);
        l lVar2 = i0.i(lVar, 1) ? lVar : null;
        if (lVar2 != null) {
            return (DeserializationStrategy) lVar2.invoke(str);
        }
        return null;
    }
}
