package kotlinx.serialization.modules;

import c9.c;
import kotlin.collections.j0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.modules.ContextualProvider;
import kotlinx.serialization.modules.SerializersModuleCollector;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class SerializersModuleKt {
    private static final SerializersModule EmptySerializersModule = new SerialModuleImpl(j0.h(), j0.h(), j0.h(), j0.h(), j0.h(), false);

    public static final SerializersModule getEmptySerializersModule() {
        return EmptySerializersModule;
    }

    public static /* synthetic */ void getEmptySerializersModule$annotations() {
    }

    public static final SerializersModule overwriteWith(SerializersModule serializersModule, SerializersModule other) {
        r.e(serializersModule, "<this>");
        r.e(other, "other");
        final SerializersModuleBuilder serializersModuleBuilder = new SerializersModuleBuilder();
        serializersModuleBuilder.include(serializersModule);
        other.dumpTo(new SerializersModuleCollector() { // from class: kotlinx.serialization.modules.SerializersModuleKt$overwriteWith$1$1
            @Override // kotlinx.serialization.modules.SerializersModuleCollector
            public <T> void contextual(c kClass, KSerializer<T> serializer) {
                r.e(kClass, "kClass");
                r.e(serializer, "serializer");
                serializersModuleBuilder.registerSerializer(kClass, new ContextualProvider.Argless(serializer), true);
            }

            @Override // kotlinx.serialization.modules.SerializersModuleCollector
            public <Base, Sub extends Base> void polymorphic(c baseClass, c actualClass, KSerializer<Sub> actualSerializer) {
                r.e(baseClass, "baseClass");
                r.e(actualClass, "actualClass");
                r.e(actualSerializer, "actualSerializer");
                serializersModuleBuilder.registerPolymorphicSerializer(baseClass, actualClass, actualSerializer, true);
            }

            @Override // kotlinx.serialization.modules.SerializersModuleCollector
            public <Base> void polymorphicDefault(c cVar, l lVar) {
                SerializersModuleCollector.DefaultImpls.polymorphicDefault(this, cVar, lVar);
            }

            @Override // kotlinx.serialization.modules.SerializersModuleCollector
            public <Base> void polymorphicDefaultDeserializer(c baseClass, l defaultDeserializerProvider) {
                r.e(baseClass, "baseClass");
                r.e(defaultDeserializerProvider, "defaultDeserializerProvider");
                serializersModuleBuilder.registerDefaultPolymorphicDeserializer(baseClass, defaultDeserializerProvider, true);
            }

            @Override // kotlinx.serialization.modules.SerializersModuleCollector
            public <Base> void polymorphicDefaultSerializer(c baseClass, l defaultSerializerProvider) {
                r.e(baseClass, "baseClass");
                r.e(defaultSerializerProvider, "defaultSerializerProvider");
                serializersModuleBuilder.registerDefaultPolymorphicSerializer(baseClass, defaultSerializerProvider, true);
            }

            @Override // kotlinx.serialization.modules.SerializersModuleCollector
            public <T> void contextual(c kClass, l provider) {
                r.e(kClass, "kClass");
                r.e(provider, "provider");
                serializersModuleBuilder.registerSerializer(kClass, new ContextualProvider.WithTypeArguments(provider), true);
            }
        });
        return serializersModuleBuilder.build();
    }

    public static final SerializersModule plus(SerializersModule serializersModule, SerializersModule other) {
        r.e(serializersModule, "<this>");
        r.e(other, "other");
        SerializersModuleBuilder serializersModuleBuilder = new SerializersModuleBuilder();
        serializersModuleBuilder.include(serializersModule);
        serializersModuleBuilder.include(other);
        return serializersModuleBuilder.build();
    }
}
