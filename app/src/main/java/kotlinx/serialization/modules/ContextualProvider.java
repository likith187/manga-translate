package kotlinx.serialization.modules;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ContextualProvider {

    public static final class Argless extends ContextualProvider {
        private final KSerializer<?> serializer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Argless(KSerializer<?> serializer) {
            super(null);
            r.e(serializer, "serializer");
            this.serializer = serializer;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Argless) && r.a(((Argless) obj).serializer, this.serializer);
        }

        public final KSerializer<?> getSerializer() {
            return this.serializer;
        }

        public int hashCode() {
            return this.serializer.hashCode();
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        public KSerializer<?> invoke(List<? extends KSerializer<?>> typeArgumentsSerializers) {
            r.e(typeArgumentsSerializers, "typeArgumentsSerializers");
            return this.serializer;
        }
    }

    public static final class WithTypeArguments extends ContextualProvider {
        private final l provider;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithTypeArguments(l provider) {
            super(null);
            r.e(provider, "provider");
            this.provider = provider;
        }

        public final l getProvider() {
            return this.provider;
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        public KSerializer<?> invoke(List<? extends KSerializer<?>> typeArgumentsSerializers) {
            r.e(typeArgumentsSerializers, "typeArgumentsSerializers");
            return (KSerializer) this.provider.invoke(typeArgumentsSerializers);
        }
    }

    public /* synthetic */ ContextualProvider(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract KSerializer<?> invoke(List<? extends KSerializer<?>> list);

    private ContextualProvider() {
    }
}
