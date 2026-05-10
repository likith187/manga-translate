package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;

/* JADX INFO: loaded from: classes2.dex */
public final class ClassSerialDescriptorBuilder {
    private List<? extends Annotation> annotations;
    private final List<List<Annotation>> elementAnnotations;
    private final List<SerialDescriptor> elementDescriptors;
    private final List<String> elementNames;
    private final List<Boolean> elementOptionality;
    private boolean isNullable;
    private final String serialName;
    private final Set<String> uniqueNames;

    public ClassSerialDescriptorBuilder(String serialName) {
        r.e(serialName, "serialName");
        this.serialName = serialName;
        this.annotations = o.h();
        this.elementNames = new ArrayList();
        this.uniqueNames = new HashSet();
        this.elementDescriptors = new ArrayList();
        this.elementAnnotations = new ArrayList();
        this.elementOptionality = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void element$default(ClassSerialDescriptorBuilder classSerialDescriptorBuilder, String str, SerialDescriptor serialDescriptor, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list = o.h();
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        classSerialDescriptorBuilder.element(str, serialDescriptor, list, z10);
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getAnnotations$annotations() {
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void isNullable$annotations() {
    }

    public final void element(String elementName, SerialDescriptor descriptor, List<? extends Annotation> annotations, boolean z10) {
        r.e(elementName, "elementName");
        r.e(descriptor, "descriptor");
        r.e(annotations, "annotations");
        if (this.uniqueNames.add(elementName)) {
            this.elementNames.add(elementName);
            this.elementDescriptors.add(descriptor);
            this.elementAnnotations.add(annotations);
            this.elementOptionality.add(Boolean.valueOf(z10));
            return;
        }
        throw new IllegalArgumentException(("Element with name '" + elementName + "' is already registered in " + this.serialName).toString());
    }

    public final List<Annotation> getAnnotations() {
        return this.annotations;
    }

    public final List<List<Annotation>> getElementAnnotations$kotlinx_serialization_core() {
        return this.elementAnnotations;
    }

    public final List<SerialDescriptor> getElementDescriptors$kotlinx_serialization_core() {
        return this.elementDescriptors;
    }

    public final List<String> getElementNames$kotlinx_serialization_core() {
        return this.elementNames;
    }

    public final List<Boolean> getElementOptionality$kotlinx_serialization_core() {
        return this.elementOptionality;
    }

    public final String getSerialName() {
        return this.serialName;
    }

    public final boolean isNullable() {
        return this.isNullable;
    }

    public final void setAnnotations(List<? extends Annotation> list) {
        r.e(list, "<set-?>");
        this.annotations = list;
    }

    public final void setNullable(boolean z10) {
        this.isNullable = z10;
    }
}
