package kotlinx.serialization.modules;

import c9.c;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.j0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.modules.ContextualProvider;
import kotlinx.serialization.modules.SerializersModuleCollector;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class SerializersModuleBuilder implements SerializersModuleCollector {
    private boolean hasInterfaceContextualSerializers;
    private final Map<c, ContextualProvider> class2ContextualProvider = new HashMap();
    private final Map<c, Map<c, KSerializer<?>>> polyBase2Serializers = new HashMap();
    private final Map<c, l> polyBase2DefaultSerializerProvider = new HashMap();
    private final Map<c, Map<String, KSerializer<?>>> polyBase2NamedSerializers = new HashMap();
    private final Map<c, l> polyBase2DefaultDeserializerProvider = new HashMap();

    public static /* synthetic */ void registerPolymorphicSerializer$default(SerializersModuleBuilder serializersModuleBuilder, c cVar, c cVar2, KSerializer kSerializer, boolean z10, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        serializersModuleBuilder.registerPolymorphicSerializer(cVar, cVar2, kSerializer, z10);
    }

    public static /* synthetic */ void registerSerializer$default(SerializersModuleBuilder serializersModuleBuilder, c cVar, ContextualProvider contextualProvider, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        serializersModuleBuilder.registerSerializer(cVar, contextualProvider, z10);
    }

    public final SerializersModule build() {
        return new SerialModuleImpl(this.class2ContextualProvider, this.polyBase2Serializers, this.polyBase2DefaultSerializerProvider, this.polyBase2NamedSerializers, this.polyBase2DefaultDeserializerProvider, this.hasInterfaceContextualSerializers);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <T> void contextual(c kClass, KSerializer<T> serializer) {
        r.e(kClass, "kClass");
        r.e(serializer, "serializer");
        registerSerializer$default(this, kClass, new ContextualProvider.Argless(serializer), false, 4, null);
    }

    public final void include(SerializersModule module) {
        r.e(module, "module");
        module.dumpTo(this);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base, Sub extends Base> void polymorphic(c baseClass, c actualClass, KSerializer<Sub> actualSerializer) {
        r.e(baseClass, "baseClass");
        r.e(actualClass, "actualClass");
        r.e(actualSerializer, "actualSerializer");
        registerPolymorphicSerializer$default(this, baseClass, actualClass, actualSerializer, false, 8, null);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void polymorphicDefault(c cVar, l lVar) {
        SerializersModuleCollector.DefaultImpls.polymorphicDefault(this, cVar, lVar);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void polymorphicDefaultDeserializer(c baseClass, l defaultDeserializerProvider) {
        r.e(baseClass, "baseClass");
        r.e(defaultDeserializerProvider, "defaultDeserializerProvider");
        registerDefaultPolymorphicDeserializer(baseClass, defaultDeserializerProvider, false);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void polymorphicDefaultSerializer(c baseClass, l defaultSerializerProvider) {
        r.e(baseClass, "baseClass");
        r.e(defaultSerializerProvider, "defaultSerializerProvider");
        registerDefaultPolymorphicSerializer(baseClass, defaultSerializerProvider, false);
    }

    public final <Base> void registerDefaultPolymorphicDeserializer(c baseClass, l defaultDeserializerProvider, boolean z10) {
        r.e(baseClass, "baseClass");
        r.e(defaultDeserializerProvider, "defaultDeserializerProvider");
        l lVar = this.polyBase2DefaultDeserializerProvider.get(baseClass);
        if (lVar == null || r.a(lVar, defaultDeserializerProvider) || z10) {
            this.polyBase2DefaultDeserializerProvider.put(baseClass, defaultDeserializerProvider);
            return;
        }
        throw new IllegalArgumentException("Default deserializers provider for " + baseClass + " is already registered: " + lVar);
    }

    public final <Base> void registerDefaultPolymorphicSerializer(c baseClass, l defaultSerializerProvider, boolean z10) {
        r.e(baseClass, "baseClass");
        r.e(defaultSerializerProvider, "defaultSerializerProvider");
        l lVar = this.polyBase2DefaultSerializerProvider.get(baseClass);
        if (lVar == null || r.a(lVar, defaultSerializerProvider) || z10) {
            this.polyBase2DefaultSerializerProvider.put(baseClass, defaultSerializerProvider);
            return;
        }
        throw new IllegalArgumentException("Default serializers provider for " + baseClass + " is already registered: " + lVar);
    }

    public final <Base, Sub extends Base> void registerPolymorphicSerializer(c baseClass, c concreteClass, KSerializer<Sub> concreteSerializer, boolean z10) {
        Object next;
        r.e(baseClass, "baseClass");
        r.e(concreteClass, "concreteClass");
        r.e(concreteSerializer, "concreteSerializer");
        String serialName = concreteSerializer.getDescriptor().getSerialName();
        Map<c, Map<c, KSerializer<?>>> map = this.polyBase2Serializers;
        Map<c, KSerializer<?>> map2 = map.get(baseClass);
        if (map2 == null) {
            map2 = new HashMap<>();
            map.put(baseClass, map2);
        }
        Map<c, KSerializer<?>> map3 = map2;
        KSerializer<?> kSerializer = map3.get(concreteClass);
        Map<c, Map<String, KSerializer<?>>> map4 = this.polyBase2NamedSerializers;
        Map<String, KSerializer<?>> map5 = map4.get(baseClass);
        if (map5 == null) {
            map5 = new HashMap<>();
            map4.put(baseClass, map5);
        }
        Map<String, KSerializer<?>> map6 = map5;
        if (z10) {
            if (kSerializer != null) {
                map6.remove(kSerializer.getDescriptor().getSerialName());
            }
            map3.put(concreteClass, concreteSerializer);
            map6.put(serialName, concreteSerializer);
            return;
        }
        if (kSerializer != null) {
            if (!r.a(kSerializer, concreteSerializer)) {
                throw new SerializerAlreadyRegisteredException(baseClass, concreteClass);
            }
            map6.remove(kSerializer.getDescriptor().getSerialName());
        }
        KSerializer<?> kSerializer2 = map6.get(serialName);
        if (kSerializer2 == null) {
            map3.put(concreteClass, concreteSerializer);
            map6.put(serialName, concreteSerializer);
            return;
        }
        Map<c, KSerializer<?>> map7 = this.polyBase2Serializers.get(baseClass);
        r.b(map7);
        Iterator it = j0.t(map7).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((Map.Entry) next).getValue() == kSerializer2) {
                    break;
                }
            }
        }
        throw new IllegalArgumentException("Multiple polymorphic serializers for base class '" + baseClass + "' have the same serial name '" + serialName + "': '" + concreteClass + "' and '" + ((Map.Entry) next) + '\'');
    }

    public final <T> void registerSerializer(c forClass, ContextualProvider provider, boolean z10) {
        ContextualProvider contextualProvider;
        r.e(forClass, "forClass");
        r.e(provider, "provider");
        if (z10 || (contextualProvider = this.class2ContextualProvider.get(forClass)) == null || r.a(contextualProvider, provider)) {
            this.class2ContextualProvider.put(forClass, provider);
            if (PlatformKt.isInterface(forClass)) {
                this.hasInterfaceContextualSerializers = true;
                return;
            }
            return;
        }
        throw new SerializerAlreadyRegisteredException("Contextual serializer or serializer provider for " + forClass + " already registered in this module");
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <T> void contextual(c kClass, l provider) {
        r.e(kClass, "kClass");
        r.e(provider, "provider");
        registerSerializer$default(this, kClass, new ContextualProvider.WithTypeArguments(provider), false, 4, null);
    }
}
