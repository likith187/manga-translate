package kotlinx.serialization.modules;

import c9.c;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import n8.h0;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class SerializersModuleBuildersKt {

    /* JADX INFO: renamed from: kotlinx.serialization.modules.SerializersModuleBuildersKt$polymorphic$1 */
    public static final class AnonymousClass1 implements l {
        public static final AnonymousClass1 INSTANCE = ;

        public final void invoke(PolymorphicModuleBuilder polymorphicModuleBuilder) {
            r.e(polymorphicModuleBuilder, "<this>");
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((PolymorphicModuleBuilder) obj);
            return h0.INSTANCE;
        }
    }

    public static final SerializersModule EmptySerializersModule() {
        return SerializersModuleKt.getEmptySerializersModule();
    }

    public static final SerializersModule SerializersModule(l builderAction) {
        r.e(builderAction, "builderAction");
        SerializersModuleBuilder serializersModuleBuilder = new SerializersModuleBuilder();
        builderAction.invoke(serializersModuleBuilder);
        return serializersModuleBuilder.build();
    }

    public static final /* synthetic */ <T> void contextual(SerializersModuleBuilder serializersModuleBuilder, KSerializer<T> serializer) {
        r.e(serializersModuleBuilder, "<this>");
        r.e(serializer, "serializer");
        r.i(4, "T");
        serializersModuleBuilder.contextual(d0.b(Object.class), serializer);
    }

    public static final <Base> void polymorphic(SerializersModuleBuilder serializersModuleBuilder, c baseClass, KSerializer<Base> kSerializer, l builderAction) {
        r.e(serializersModuleBuilder, "<this>");
        r.e(baseClass, "baseClass");
        r.e(builderAction, "builderAction");
        PolymorphicModuleBuilder polymorphicModuleBuilder = new PolymorphicModuleBuilder(baseClass, kSerializer);
        builderAction.invoke(polymorphicModuleBuilder);
        polymorphicModuleBuilder.buildTo(serializersModuleBuilder);
    }

    public static /* synthetic */ void polymorphic$default(SerializersModuleBuilder serializersModuleBuilder, c baseClass, KSerializer kSerializer, l builderAction, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            kSerializer = null;
        }
        if ((i10 & 4) != 0) {
            builderAction = AnonymousClass1.INSTANCE;
        }
        r.e(serializersModuleBuilder, "<this>");
        r.e(baseClass, "baseClass");
        r.e(builderAction, "builderAction");
        PolymorphicModuleBuilder polymorphicModuleBuilder = new PolymorphicModuleBuilder(baseClass, kSerializer);
        builderAction.invoke(polymorphicModuleBuilder);
        polymorphicModuleBuilder.buildTo(serializersModuleBuilder);
    }

    public static final /* synthetic */ <T> SerializersModule serializersModuleOf(KSerializer<T> serializer) {
        r.e(serializer, "serializer");
        r.i(4, "T");
        return serializersModuleOf(d0.b(Object.class), serializer);
    }

    public static final <T> SerializersModule serializersModuleOf(c kClass, KSerializer<T> serializer) {
        r.e(kClass, "kClass");
        r.e(serializer, "serializer");
        SerializersModuleBuilder serializersModuleBuilder = new SerializersModuleBuilder();
        serializersModuleBuilder.contextual(kClass, serializer);
        return serializersModuleBuilder.build();
    }
}
