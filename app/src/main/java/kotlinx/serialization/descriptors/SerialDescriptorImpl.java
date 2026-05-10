package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.e0;
import kotlin.collections.i;
import kotlin.collections.j0;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.CachedNames;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptorKt;
import n8.j;
import n8.k;
import n8.w;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class SerialDescriptorImpl implements SerialDescriptor, CachedNames {
    private final j _hashCode$delegate;
    private final List<Annotation> annotations;
    private final List<Annotation>[] elementAnnotations;
    private final SerialDescriptor[] elementDescriptors;
    private final String[] elementNames;
    private final boolean[] elementOptionality;
    private final int elementsCount;
    private final SerialKind kind;
    private final Map<String, Integer> name2Index;
    private final String serialName;
    private final Set<String> serialNames;
    private final SerialDescriptor[] typeParametersDescriptors;

    public SerialDescriptorImpl(String serialName, SerialKind kind, int i10, List<? extends SerialDescriptor> typeParameters, ClassSerialDescriptorBuilder builder) {
        r.e(serialName, "serialName");
        r.e(kind, "kind");
        r.e(typeParameters, "typeParameters");
        r.e(builder, "builder");
        this.serialName = serialName;
        this.kind = kind;
        this.elementsCount = i10;
        this.annotations = builder.getAnnotations();
        this.serialNames = o.p0(builder.getElementNames$kotlinx_serialization_core());
        String[] strArr = (String[]) builder.getElementNames$kotlinx_serialization_core().toArray(new String[0]);
        this.elementNames = strArr;
        this.elementDescriptors = Platform_commonKt.compactArray(builder.getElementDescriptors$kotlinx_serialization_core());
        this.elementAnnotations = (List[]) builder.getElementAnnotations$kotlinx_serialization_core().toArray(new List[0]);
        this.elementOptionality = o.m0(builder.getElementOptionality$kotlinx_serialization_core());
        Iterable<e0> iterableA0 = i.a0(strArr);
        ArrayList arrayList = new ArrayList(o.r(iterableA0, 10));
        for (e0 e0Var : iterableA0) {
            arrayList.add(w.a(e0Var.d(), Integer.valueOf(e0Var.c())));
        }
        this.name2Index = j0.o(arrayList);
        this.typeParametersDescriptors = Platform_commonKt.compactArray(typeParameters);
        this._hashCode$delegate = k.b(new w8.a() { // from class: kotlinx.serialization.descriptors.a
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return Integer.valueOf(SerialDescriptorImpl._hashCode_delegate$lambda$1(this.f13403a));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int _hashCode_delegate$lambda$1(SerialDescriptorImpl serialDescriptorImpl) {
        return PluginGeneratedSerialDescriptorKt.hashCodeImpl(serialDescriptorImpl, serialDescriptorImpl.typeParametersDescriptors);
    }

    private final int get_hashCode() {
        return ((Number) this._hashCode$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toString$lambda$3(SerialDescriptorImpl serialDescriptorImpl, int i10) {
        return serialDescriptorImpl.getElementName(i10) + ": " + serialDescriptorImpl.getElementDescriptor(i10).getSerialName();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SerialDescriptorImpl) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (r.a(getSerialName(), serialDescriptor.getSerialName()) && Arrays.equals(this.typeParametersDescriptors, ((SerialDescriptorImpl) obj).typeParametersDescriptors) && getElementsCount() == serialDescriptor.getElementsCount()) {
                int elementsCount = getElementsCount();
                for (int i10 = 0; i10 < elementsCount; i10++) {
                    if (r.a(getElementDescriptor(i10).getSerialName(), serialDescriptor.getElementDescriptor(i10).getSerialName()) && r.a(getElementDescriptor(i10).getKind(), serialDescriptor.getElementDescriptor(i10).getKind())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getAnnotations() {
        return this.annotations;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getElementAnnotations(int i10) {
        return this.elementAnnotations[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i10) {
        return this.elementDescriptors[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String name) {
        r.e(name, "name");
        Integer num = this.name2Index.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getElementName(int i10) {
        return this.elementNames[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return this.elementsCount;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return this.kind;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.internal.CachedNames
    public Set<String> getSerialNames() {
        return this.serialNames;
    }

    public int hashCode() {
        return get_hashCode();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isElementOptional(int i10) {
        return this.elementOptionality[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.DefaultImpls.isInline(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isNullable() {
        return SerialDescriptor.DefaultImpls.isNullable(this);
    }

    public String toString() {
        return o.a0(b9.d.l(0, getElementsCount()), ", ", getSerialName() + '(', ")", 0, null, new l() { // from class: kotlinx.serialization.descriptors.b
            @Override // w8.l
            public final Object invoke(Object obj) {
                return SerialDescriptorImpl.toString$lambda$3(this.f13404a, ((Integer) obj).intValue());
            }
        }, 24, null);
    }
}
