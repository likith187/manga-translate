package kotlinx.serialization.modules;

import c9.c;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SerializersModule {
    public /* synthetic */ SerializersModule(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KSerializer getContextual$default(SerializersModule serializersModule, c cVar, List list, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContextual");
        }
        if ((i10 & 2) != 0) {
            list = o.h();
        }
        return serializersModule.getContextual(cVar, list);
    }

    @InternalSerializationApi
    public static /* synthetic */ void getHasInterfaceContextualSerializers$kotlinx_serialization_core$annotations() {
    }

    @ExperimentalSerializationApi
    public abstract void dumpTo(SerializersModuleCollector serializersModuleCollector);

    @ExperimentalSerializationApi
    public final /* synthetic */ KSerializer getContextual(c kclass) {
        r.e(kclass, "kclass");
        return getContextual(kclass, o.h());
    }

    @ExperimentalSerializationApi
    public abstract <T> KSerializer<T> getContextual(c cVar, List<? extends KSerializer<?>> list);

    public abstract boolean getHasInterfaceContextualSerializers$kotlinx_serialization_core();

    @ExperimentalSerializationApi
    public abstract <T> DeserializationStrategy<T> getPolymorphic(c cVar, String str);

    @ExperimentalSerializationApi
    public abstract <T> SerializationStrategy<T> getPolymorphic(c cVar, T t10);

    private SerializersModule() {
    }
}
