package kotlinx.serialization.modules;

import c9.c;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
final class SerializerAlreadyRegisteredException extends IllegalArgumentException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SerializerAlreadyRegisteredException(String msg) {
        super(msg);
        r.e(msg, "msg");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SerializerAlreadyRegisteredException(c baseClass, c concreteClass) {
        this("Serializer for " + concreteClass + " already registered in the scope of " + baseClass);
        r.e(baseClass, "baseClass");
        r.e(concreteClass, "concreteClass");
    }
}
