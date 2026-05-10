package kotlinx.serialization;

import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public final class MissingFieldException extends SerializationException {
    private final List<String> missingFields;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissingFieldException(List<String> missingFields, String str, Throwable th) {
        super(str, th);
        r.e(missingFields, "missingFields");
        this.missingFields = missingFields;
    }

    public final List<String> getMissingFields() {
        return this.missingFields;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MissingFieldException(List<String> missingFields, String serialName) {
        String str;
        r.e(missingFields, "missingFields");
        r.e(serialName, "serialName");
        if (missingFields.size() == 1) {
            str = "Field '" + missingFields.get(0) + "' is required for type with serial name '" + serialName + "', but it was missing";
        } else {
            str = "Fields " + missingFields + " are required for type with serial name '" + serialName + "', but they were missing";
        }
        this(missingFields, str, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MissingFieldException(String missingField, String serialName) {
        this(o.b(missingField), "Field '" + missingField + "' is required for type with serial name '" + serialName + "', but it was missing", null);
        r.e(missingField, "missingField");
        r.e(serialName, "serialName");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MissingFieldException(String missingField) {
        this(o.b(missingField), "Field '" + missingField + "' is required, but it was missing", null);
        r.e(missingField, "missingField");
    }
}
