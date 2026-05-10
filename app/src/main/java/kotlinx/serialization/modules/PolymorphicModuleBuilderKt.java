package kotlinx.serialization.modules;

import c9.c;
import c9.j;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.u;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;

/* JADX INFO: loaded from: classes2.dex */
public final class PolymorphicModuleBuilderKt {
    public static final /* synthetic */ <Base, T extends Base> void subclass(PolymorphicModuleBuilder<? super Base> polymorphicModuleBuilder, KSerializer<T> serializer) {
        r.e(polymorphicModuleBuilder, "<this>");
        r.e(serializer, "serializer");
        r.i(4, "T");
        polymorphicModuleBuilder.subclass(d0.b(Object.class), serializer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <Base, T extends Base> void subclass(PolymorphicModuleBuilder<? super Base> polymorphicModuleBuilder, c clazz) {
        r.e(polymorphicModuleBuilder, "<this>");
        r.e(clazz, "clazz");
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.simple");
        polymorphicModuleBuilder.subclass(clazz, SerializersKt.serializer((j) null));
    }
}
