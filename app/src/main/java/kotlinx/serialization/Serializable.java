package kotlinx.serialization;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.TYPE, ElementType.TYPE_USE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface Serializable {
    Class<? extends KSerializer<?>> with() default KSerializer.class;
}
