package kotlinx.serialization.encoding;

import java.util.Collection;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import w8.l;
import w8.q;

/* JADX INFO: loaded from: classes2.dex */
public final class EncodingKt {
    public static final void encodeCollection(Encoder encoder, SerialDescriptor descriptor, int i10, l block) {
        r.e(encoder, "<this>");
        r.e(descriptor, "descriptor");
        r.e(block, "block");
        CompositeEncoder compositeEncoderBeginCollection = encoder.beginCollection(descriptor, i10);
        block.invoke(compositeEncoderBeginCollection);
        compositeEncoderBeginCollection.endStructure(descriptor);
    }

    public static final void encodeStructure(Encoder encoder, SerialDescriptor descriptor, l block) {
        r.e(encoder, "<this>");
        r.e(descriptor, "descriptor");
        r.e(block, "block");
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor);
        block.invoke(compositeEncoderBeginStructure);
        compositeEncoderBeginStructure.endStructure(descriptor);
    }

    public static final <E> void encodeCollection(Encoder encoder, SerialDescriptor descriptor, Collection<? extends E> collection, q block) {
        r.e(encoder, "<this>");
        r.e(descriptor, "descriptor");
        r.e(collection, "collection");
        r.e(block, "block");
        CompositeEncoder compositeEncoderBeginCollection = encoder.beginCollection(descriptor, collection.size());
        int i10 = 0;
        for (Object obj : collection) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                o.q();
            }
            block.invoke(compositeEncoderBeginCollection, Integer.valueOf(i10), obj);
            i10 = i11;
        }
        compositeEncoderBeginCollection.endStructure(descriptor);
    }
}
