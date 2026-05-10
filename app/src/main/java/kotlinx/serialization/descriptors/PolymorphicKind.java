package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.ExperimentalSerializationApi;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public abstract class PolymorphicKind extends SerialKind {

    public static final class OPEN extends PolymorphicKind {
        public static final OPEN INSTANCE = new OPEN();

        private OPEN() {
            super(null);
        }
    }

    public static final class SEALED extends PolymorphicKind {
        public static final SEALED INSTANCE = new SEALED();

        private SEALED() {
            super(null);
        }
    }

    public /* synthetic */ PolymorphicKind(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private PolymorphicKind() {
        super(null);
    }
}
