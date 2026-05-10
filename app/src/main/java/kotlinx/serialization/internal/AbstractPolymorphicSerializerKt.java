package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes2.dex */
public final class AbstractPolymorphicSerializerKt {
    public static final Void throwSubtypeNotRegistered(String str, c9.c baseClass) {
        String str2;
        r.e(baseClass, "baseClass");
        String str3 = "in the polymorphic scope of '" + baseClass.c() + '\'';
        if (str == null) {
            str2 = "Class discriminator was missing and no default serializers were registered " + str3 + '.';
        } else {
            str2 = "Serializer for subclass '" + str + "' is not found " + str3 + ".\nCheck if class with serial name '" + str + "' exists and serializer is registered in a corresponding SerializersModule.\nTo be registered automatically, class '" + str + "' has to be '@Serializable', and the base class '" + baseClass.c() + "' has to be sealed and '@Serializable'.";
        }
        throw new SerializationException(str2);
    }

    public static final Void throwSubtypeNotRegistered(c9.c subClass, c9.c baseClass) {
        r.e(subClass, "subClass");
        r.e(baseClass, "baseClass");
        String strC = subClass.c();
        if (strC == null) {
            strC = String.valueOf(subClass);
        }
        throwSubtypeNotRegistered(strC, baseClass);
        throw new n8.i();
    }
}
