package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;

/* JADX INFO: loaded from: classes2.dex */
public final class WrappedSerialDescriptor implements SerialDescriptor {
    private final /* synthetic */ SerialDescriptor $$delegate_0;
    private final String serialName;

    public WrappedSerialDescriptor(String serialName, SerialDescriptor original) {
        r.e(serialName, "serialName");
        r.e(original, "original");
        this.$$delegate_0 = original;
        this.serialName = serialName;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getAnnotations() {
        return this.$$delegate_0.getAnnotations();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public List<Annotation> getElementAnnotations(int i10) {
        return this.$$delegate_0.getElementAnnotations(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public SerialDescriptor getElementDescriptor(int i10) {
        return this.$$delegate_0.getElementDescriptor(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public int getElementIndex(String name) {
        r.e(name, "name");
        return this.$$delegate_0.getElementIndex(name);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public String getElementName(int i10) {
        return this.$$delegate_0.getElementName(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return this.$$delegate_0.getElementsCount();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return this.$$delegate_0.getKind();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public boolean isElementOptional(int i10) {
        return this.$$delegate_0.isElementOptional(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.$$delegate_0.isInline();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isNullable() {
        return this.$$delegate_0.isNullable();
    }
}
