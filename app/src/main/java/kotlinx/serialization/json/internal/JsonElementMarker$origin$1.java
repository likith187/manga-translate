package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
/* synthetic */ class JsonElementMarker$origin$1 extends o implements p {
    JsonElementMarker$origin$1(Object obj) {
        super(2, obj, JsonElementMarker.class, "readIfAbsent", "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", 0);
    }

    public final Boolean invoke(SerialDescriptor p02, int i10) {
        r.e(p02, "p0");
        return Boolean.valueOf(((JsonElementMarker) this.receiver).readIfAbsent(p02, i10));
    }

    @Override // w8.p
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke((SerialDescriptor) obj, ((Number) obj2).intValue());
    }
}
