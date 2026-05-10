package kotlinx.serialization.json;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.InheritableSerialInfo;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.TYPE})
@ExperimentalSerializationApi
@InheritableSerialInfo
@Retention(RetentionPolicy.RUNTIME)
public @interface JsonClassDiscriminator {

    public /* synthetic */ class Impl implements JsonClassDiscriminator {
        private final /* synthetic */ String discriminator;

        public Impl(String discriminator) {
            r.e(discriminator, "discriminator");
            this.discriminator = discriminator;
        }

        @Override // kotlinx.serialization.json.JsonClassDiscriminator
        public final /* synthetic */ String discriminator() {
            return this.discriminator;
        }
    }

    String discriminator();
}
