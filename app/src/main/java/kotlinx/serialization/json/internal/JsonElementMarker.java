package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ElementMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonElementMarker {
    private boolean isUnmarkedNull;
    private final ElementMarker origin;

    public JsonElementMarker(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        this.origin = new ElementMarker(descriptor, new JsonElementMarker$origin$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean readIfAbsent(SerialDescriptor serialDescriptor, int i10) {
        boolean z10 = !serialDescriptor.isElementOptional(i10) && serialDescriptor.getElementDescriptor(i10).isNullable();
        this.isUnmarkedNull = z10;
        return z10;
    }

    public final boolean isUnmarkedNull$kotlinx_serialization_json() {
        return this.isUnmarkedNull;
    }

    public final void mark$kotlinx_serialization_json(int i10) {
        this.origin.mark(i10);
    }

    public final int nextUnmarkedIndex$kotlinx_serialization_json() {
        return this.origin.nextUnmarkedIndex();
    }
}
