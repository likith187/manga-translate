package kotlinx.serialization.json;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.SerialInfo;

/* JADX INFO: loaded from: classes2.dex */
@Target({})
@ExperimentalSerializationApi
@SerialInfo
@Retention(RetentionPolicy.RUNTIME)
public @interface JsonNames {

    public /* synthetic */ class Impl implements JsonNames {
        private final /* synthetic */ String[] names;

        public Impl(String[] names) {
            r.e(names, "names");
            this.names = names;
        }

        @Override // kotlinx.serialization.json.JsonNames
        public final /* synthetic */ String[] names() {
            return this.names;
        }
    }

    String[] names();
}
