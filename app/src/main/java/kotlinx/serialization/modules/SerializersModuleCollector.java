package kotlinx.serialization.modules;

import c9.c;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.modules.SerializersModuleCollector;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public interface SerializersModuleCollector {

    public static final class DefaultImpls {
        public static <T> void contextual(SerializersModuleCollector serializersModuleCollector, c kClass, final KSerializer<T> serializer) {
            r.e(kClass, "kClass");
            r.e(serializer, "serializer");
            serializersModuleCollector.contextual(kClass, new l() { // from class: kotlinx.serialization.modules.a
                @Override // w8.l
                public final Object invoke(Object obj) {
                    return SerializersModuleCollector.DefaultImpls.contextual$lambda$0(serializer, (List) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static KSerializer contextual$lambda$0(KSerializer kSerializer, List it) {
            r.e(it, "it");
            return kSerializer;
        }

        public static <Base> void polymorphicDefault(SerializersModuleCollector serializersModuleCollector, c baseClass, l defaultDeserializerProvider) {
            r.e(baseClass, "baseClass");
            r.e(defaultDeserializerProvider, "defaultDeserializerProvider");
            serializersModuleCollector.polymorphicDefaultDeserializer(baseClass, defaultDeserializerProvider);
        }
    }

    <T> void contextual(c cVar, KSerializer<T> kSerializer);

    <T> void contextual(c cVar, l lVar);

    <Base, Sub extends Base> void polymorphic(c cVar, c cVar2, KSerializer<Sub> kSerializer);

    <Base> void polymorphicDefault(c cVar, l lVar);

    <Base> void polymorphicDefaultDeserializer(c cVar, l lVar);

    <Base> void polymorphicDefaultSerializer(c cVar, l lVar);
}
