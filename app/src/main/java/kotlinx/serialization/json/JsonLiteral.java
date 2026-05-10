package kotlinx.serialization.json;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.internal.StringOpsKt;
import kotlinx.serialization.json.internal.SuppressAnimalSniffer;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonLiteral extends JsonPrimitive {
    private final SerialDescriptor coerceToInlineType;
    private final String content;
    private final boolean isString;

    public /* synthetic */ JsonLiteral(Object obj, boolean z10, SerialDescriptor serialDescriptor, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, z10, (i10 & 4) != 0 ? null : serialDescriptor);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || JsonLiteral.class != obj.getClass()) {
            return false;
        }
        JsonLiteral jsonLiteral = (JsonLiteral) obj;
        return isString() == jsonLiteral.isString() && r.a(getContent(), jsonLiteral.getContent());
    }

    public final SerialDescriptor getCoerceToInlineType$kotlinx_serialization_json() {
        return this.coerceToInlineType;
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public String getContent() {
        return this.content;
    }

    @SuppressAnimalSniffer
    public int hashCode() {
        return (Boolean.hashCode(isString()) * 31) + getContent().hashCode();
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public boolean isString() {
        return this.isString;
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public String toString() {
        if (!isString()) {
            return getContent();
        }
        StringBuilder sb = new StringBuilder();
        StringOpsKt.printQuoted(sb, getContent());
        String string = sb.toString();
        r.d(string, "toString(...)");
        return string;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonLiteral(Object body, boolean z10, SerialDescriptor serialDescriptor) {
        super(null);
        r.e(body, "body");
        this.isString = z10;
        this.coerceToInlineType = serialDescriptor;
        this.content = body.toString();
        if (serialDescriptor != null && !serialDescriptor.isInline()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }
}
