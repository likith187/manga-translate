package kotlinx.serialization.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class PrimitiveArrayDescriptor extends ListLikeDescriptor {
    private final String serialName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrimitiveArrayDescriptor(SerialDescriptor primitive) {
        super(primitive, null);
        r.e(primitive, "primitive");
        this.serialName = primitive.getSerialName() + "Array";
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }
}
