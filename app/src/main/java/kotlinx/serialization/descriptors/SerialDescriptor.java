package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.o;
import kotlinx.serialization.ExperimentalSerializationApi;

/* JADX INFO: loaded from: classes2.dex */
public interface SerialDescriptor {

    public static final class DefaultImpls {
        public static List<Annotation> getAnnotations(SerialDescriptor serialDescriptor) {
            return o.h();
        }

        @ExperimentalSerializationApi
        public static /* synthetic */ void getAnnotations$annotations() {
        }

        @ExperimentalSerializationApi
        public static /* synthetic */ void getElementsCount$annotations() {
        }

        @ExperimentalSerializationApi
        public static /* synthetic */ void getKind$annotations() {
        }

        @ExperimentalSerializationApi
        public static /* synthetic */ void getSerialName$annotations() {
        }

        public static boolean isInline(SerialDescriptor serialDescriptor) {
            return false;
        }

        public static boolean isNullable(SerialDescriptor serialDescriptor) {
            return false;
        }

        @ExperimentalSerializationApi
        public static /* synthetic */ void isNullable$annotations() {
        }
    }

    List<Annotation> getAnnotations();

    @ExperimentalSerializationApi
    List<Annotation> getElementAnnotations(int i10);

    @ExperimentalSerializationApi
    SerialDescriptor getElementDescriptor(int i10);

    @ExperimentalSerializationApi
    int getElementIndex(String str);

    @ExperimentalSerializationApi
    String getElementName(int i10);

    int getElementsCount();

    SerialKind getKind();

    String getSerialName();

    @ExperimentalSerializationApi
    boolean isElementOptional(int i10);

    boolean isInline();

    boolean isNullable();
}
