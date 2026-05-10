package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;

/* JADX INFO: loaded from: classes2.dex */
public final class SerialDescriptorKt {
    public static final Iterable<SerialDescriptor> getElementDescriptors(SerialDescriptor serialDescriptor) {
        r.e(serialDescriptor, "<this>");
        return new SerialDescriptorKt$special$$inlined$Iterable$1(serialDescriptor);
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getElementDescriptors$annotations(SerialDescriptor serialDescriptor) {
    }

    public static final Iterable<String> getElementNames(SerialDescriptor serialDescriptor) {
        r.e(serialDescriptor, "<this>");
        return new SerialDescriptorKt$special$$inlined$Iterable$2(serialDescriptor);
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getElementNames$annotations(SerialDescriptor serialDescriptor) {
    }
}
