package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public abstract class SerialKind {

    @ExperimentalSerializationApi
    public static final class CONTEXTUAL extends SerialKind {
        public static final CONTEXTUAL INSTANCE = new CONTEXTUAL();

        private CONTEXTUAL() {
            super(null);
        }
    }

    @ExperimentalSerializationApi
    public static final class ENUM extends SerialKind {
        public static final ENUM INSTANCE = new ENUM();

        private ENUM() {
            super(null);
        }
    }

    public /* synthetic */ SerialKind(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        String strC = d0.b(getClass()).c();
        r.b(strC);
        return strC;
    }

    private SerialKind() {
    }
}
