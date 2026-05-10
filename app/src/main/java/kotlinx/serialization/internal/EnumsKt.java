package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes2.dex */
public final class EnumsKt {
    public static final <T extends Enum<T>> KSerializer<T> createAnnotatedEnumSerializer(String serialName, T[] values, String[] names, Annotation[][] entryAnnotations, Annotation[] annotationArr) {
        r.e(serialName, "serialName");
        r.e(values, "values");
        r.e(names, "names");
        r.e(entryAnnotations, "entryAnnotations");
        EnumDescriptor enumDescriptor = new EnumDescriptor(serialName, values.length);
        if (annotationArr != null) {
            for (Annotation annotation : annotationArr) {
                enumDescriptor.pushClassAnnotation(annotation);
            }
        }
        int length = values.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            T t10 = values[i10];
            int i12 = i11 + 1;
            String strName = (String) kotlin.collections.i.H(names, i11);
            if (strName == null) {
                strName = t10.name();
            }
            PluginGeneratedSerialDescriptor.addElement$default(enumDescriptor, strName, false, 2, null);
            Annotation[] annotationArr2 = (Annotation[]) kotlin.collections.i.H(entryAnnotations, i11);
            if (annotationArr2 != null) {
                for (Annotation annotation2 : annotationArr2) {
                    enumDescriptor.pushAnnotation(annotation2);
                }
            }
            i10++;
            i11 = i12;
        }
        return new EnumSerializer(serialName, values, enumDescriptor);
    }

    public static final <T extends Enum<T>> KSerializer<T> createMarkedEnumSerializer(String serialName, T[] values, String[] names, Annotation[][] annotations) {
        r.e(serialName, "serialName");
        r.e(values, "values");
        r.e(names, "names");
        r.e(annotations, "annotations");
        EnumDescriptor enumDescriptor = new EnumDescriptor(serialName, values.length);
        int length = values.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            T t10 = values[i10];
            int i12 = i11 + 1;
            String strName = (String) kotlin.collections.i.H(names, i11);
            if (strName == null) {
                strName = t10.name();
            }
            PluginGeneratedSerialDescriptor.addElement$default(enumDescriptor, strName, false, 2, null);
            Annotation[] annotationArr = (Annotation[]) kotlin.collections.i.H(annotations, i11);
            if (annotationArr != null) {
                for (Annotation annotation : annotationArr) {
                    enumDescriptor.pushAnnotation(annotation);
                }
            }
            i10++;
            i11 = i12;
        }
        return new EnumSerializer(serialName, values, enumDescriptor);
    }

    public static final <T extends Enum<T>> KSerializer<T> createSimpleEnumSerializer(String serialName, T[] values) {
        r.e(serialName, "serialName");
        r.e(values, "values");
        return new EnumSerializer(serialName, values);
    }
}
