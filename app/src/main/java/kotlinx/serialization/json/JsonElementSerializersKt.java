package kotlinx.serialization.json;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonElementSerializersKt {

    /* JADX INFO: renamed from: kotlinx.serialization.json.JsonElementSerializersKt$defer$1 */
    public static final class AnonymousClass1 implements SerialDescriptor {
        private final j original$delegate;

        AnonymousClass1(w8.a aVar) {
            this.original$delegate = k.b(aVar);
        }

        private final SerialDescriptor getOriginal() {
            return (SerialDescriptor) this.original$delegate.getValue();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public List<Annotation> getAnnotations() {
            return SerialDescriptor.DefaultImpls.getAnnotations(this);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public List<Annotation> getElementAnnotations(int i10) {
            return getOriginal().getElementAnnotations(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public SerialDescriptor getElementDescriptor(int i10) {
            return getOriginal().getElementDescriptor(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int getElementIndex(String name) {
            r.e(name, "name");
            return getOriginal().getElementIndex(name);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public String getElementName(int i10) {
            return getOriginal().getElementName(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int getElementsCount() {
            return getOriginal().getElementsCount();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public SerialKind getKind() {
            return getOriginal().getKind();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public String getSerialName() {
            return getOriginal().getSerialName();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isElementOptional(int i10) {
            return getOriginal().isElementOptional(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isInline() {
            return SerialDescriptor.DefaultImpls.isInline(this);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isNullable() {
            return SerialDescriptor.DefaultImpls.isNullable(this);
        }
    }

    public static final JsonDecoder asJsonDecoder(Decoder decoder) {
        r.e(decoder, "<this>");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder != null) {
            return jsonDecoder;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got " + d0.b(decoder.getClass()));
    }

    public static final JsonEncoder asJsonEncoder(Encoder encoder) {
        r.e(encoder, "<this>");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder != null) {
            return jsonEncoder;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got " + d0.b(encoder.getClass()));
    }

    public static final SerialDescriptor defer(w8.a aVar) {
        return new SerialDescriptor(aVar) { // from class: kotlinx.serialization.json.JsonElementSerializersKt.defer.1
            private final j original$delegate;

            AnonymousClass1(w8.a aVar2) {
                this.original$delegate = k.b(aVar2);
            }

            private final SerialDescriptor getOriginal() {
                return (SerialDescriptor) this.original$delegate.getValue();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public List<Annotation> getAnnotations() {
                return SerialDescriptor.DefaultImpls.getAnnotations(this);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public List<Annotation> getElementAnnotations(int i10) {
                return getOriginal().getElementAnnotations(i10);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public SerialDescriptor getElementDescriptor(int i10) {
                return getOriginal().getElementDescriptor(i10);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public int getElementIndex(String name) {
                r.e(name, "name");
                return getOriginal().getElementIndex(name);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public String getElementName(int i10) {
                return getOriginal().getElementName(i10);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public int getElementsCount() {
                return getOriginal().getElementsCount();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public SerialKind getKind() {
                return getOriginal().getKind();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public String getSerialName() {
                return getOriginal().getSerialName();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public boolean isElementOptional(int i10) {
                return getOriginal().isElementOptional(i10);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public boolean isInline() {
                return SerialDescriptor.DefaultImpls.isInline(this);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public boolean isNullable() {
                return SerialDescriptor.DefaultImpls.isNullable(this);
            }
        };
    }

    public static final void verify(Encoder encoder) {
        asJsonEncoder(encoder);
    }

    public static final void verify(Decoder decoder) {
        asJsonDecoder(decoder);
    }
}
