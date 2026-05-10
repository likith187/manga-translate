package kotlinx.serialization.modules;

import c9.c;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import n8.q;
import n8.w;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class PolymorphicModuleBuilder<Base> {
    private final c baseClass;
    private final KSerializer<Base> baseSerializer;
    private l defaultDeserializerProvider;
    private l defaultSerializerProvider;
    private final List<q> subclasses;

    public PolymorphicModuleBuilder(c baseClass, KSerializer<Base> kSerializer) {
        r.e(baseClass, "baseClass");
        this.baseClass = baseClass;
        this.baseSerializer = kSerializer;
        this.subclasses = new ArrayList();
    }

    public final void buildTo(SerializersModuleBuilder builder) {
        r.e(builder, "builder");
        KSerializer<Base> kSerializer = this.baseSerializer;
        if (kSerializer != null) {
            c cVar = this.baseClass;
            SerializersModuleBuilder.registerPolymorphicSerializer$default(builder, cVar, cVar, kSerializer, false, 8, null);
        }
        for (q qVar : this.subclasses) {
            c cVar2 = (c) qVar.component1();
            KSerializer kSerializer2 = (KSerializer) qVar.component2();
            c cVar3 = this.baseClass;
            r.c(cVar2, "null cannot be cast to non-null type kotlin.reflect.KClass<Base of kotlinx.serialization.modules.PolymorphicModuleBuilder>");
            r.c(kSerializer2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            SerializersModuleBuilder.registerPolymorphicSerializer$default(builder, cVar3, cVar2, kSerializer2, false, 8, null);
        }
        l lVar = this.defaultSerializerProvider;
        if (lVar != null) {
            builder.registerDefaultPolymorphicSerializer(this.baseClass, lVar, false);
        }
        l lVar2 = this.defaultDeserializerProvider;
        if (lVar2 != null) {
            builder.registerDefaultPolymorphicDeserializer(this.baseClass, lVar2, false);
        }
    }

    /* JADX INFO: renamed from: default, reason: not valid java name */
    public final void m57default(l defaultSerializerProvider) {
        r.e(defaultSerializerProvider, "defaultSerializerProvider");
        defaultDeserializer(defaultSerializerProvider);
    }

    public final void defaultDeserializer(l defaultDeserializerProvider) {
        r.e(defaultDeserializerProvider, "defaultDeserializerProvider");
        if (this.defaultDeserializerProvider == null) {
            this.defaultDeserializerProvider = defaultDeserializerProvider;
            return;
        }
        throw new IllegalArgumentException(("Default deserializer provider is already registered for class " + this.baseClass + ": " + this.defaultDeserializerProvider).toString());
    }

    public final <T extends Base> void subclass(c subclass, KSerializer<T> serializer) {
        r.e(subclass, "subclass");
        r.e(serializer, "serializer");
        this.subclasses.add(w.a(subclass, serializer));
    }

    public /* synthetic */ PolymorphicModuleBuilder(c cVar, KSerializer kSerializer, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, (i10 & 2) != 0 ? null : kSerializer);
    }
}
