package kotlinx.serialization.json;

import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.ConfigPackage;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.json.internal.ReaderJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonConfiguration {
    private final boolean allowComments;
    private final boolean allowSpecialFloatingPointValues;
    private final boolean allowStructuredMapKeys;
    private final boolean allowTrailingComma;
    private final String classDiscriminator;
    private ClassDiscriminatorMode classDiscriminatorMode;
    private final boolean coerceInputValues;
    private final boolean decodeEnumsCaseInsensitive;
    private final boolean encodeDefaults;
    private final boolean explicitNulls;
    private final boolean ignoreUnknownKeys;
    private final boolean isLenient;
    private final JsonNamingStrategy namingStrategy;
    private final boolean prettyPrint;
    private final String prettyPrintIndent;
    private final boolean useAlternativeNames;
    private final boolean useArrayPolymorphism;

    public JsonConfiguration() {
        this(false, false, false, false, false, false, null, false, false, null, false, false, null, false, false, false, null, 131071, null);
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getAllowComments$annotations() {
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getAllowTrailingComma$annotations() {
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getClassDiscriminatorMode$annotations() {
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getDecodeEnumsCaseInsensitive$annotations() {
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getNamingStrategy$annotations() {
    }

    @ExperimentalSerializationApi
    public static /* synthetic */ void getPrettyPrintIndent$annotations() {
    }

    public final boolean getAllowComments() {
        return this.allowComments;
    }

    public final boolean getAllowSpecialFloatingPointValues() {
        return this.allowSpecialFloatingPointValues;
    }

    public final boolean getAllowStructuredMapKeys() {
        return this.allowStructuredMapKeys;
    }

    public final boolean getAllowTrailingComma() {
        return this.allowTrailingComma;
    }

    public final String getClassDiscriminator() {
        return this.classDiscriminator;
    }

    public final ClassDiscriminatorMode getClassDiscriminatorMode() {
        return this.classDiscriminatorMode;
    }

    public final boolean getCoerceInputValues() {
        return this.coerceInputValues;
    }

    public final boolean getDecodeEnumsCaseInsensitive() {
        return this.decodeEnumsCaseInsensitive;
    }

    public final boolean getEncodeDefaults() {
        return this.encodeDefaults;
    }

    public final boolean getExplicitNulls() {
        return this.explicitNulls;
    }

    public final boolean getIgnoreUnknownKeys() {
        return this.ignoreUnknownKeys;
    }

    public final JsonNamingStrategy getNamingStrategy() {
        return this.namingStrategy;
    }

    public final boolean getPrettyPrint() {
        return this.prettyPrint;
    }

    public final String getPrettyPrintIndent() {
        return this.prettyPrintIndent;
    }

    public final boolean getUseAlternativeNames() {
        return this.useAlternativeNames;
    }

    public final boolean getUseArrayPolymorphism() {
        return this.useArrayPolymorphism;
    }

    public final boolean isLenient() {
        return this.isLenient;
    }

    public final void setClassDiscriminatorMode(ClassDiscriminatorMode classDiscriminatorMode) {
        r.e(classDiscriminatorMode, "<set-?>");
        this.classDiscriminatorMode = classDiscriminatorMode;
    }

    public String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.encodeDefaults + ", ignoreUnknownKeys=" + this.ignoreUnknownKeys + ", isLenient=" + this.isLenient + ", allowStructuredMapKeys=" + this.allowStructuredMapKeys + ", prettyPrint=" + this.prettyPrint + ", explicitNulls=" + this.explicitNulls + ", prettyPrintIndent='" + this.prettyPrintIndent + "', coerceInputValues=" + this.coerceInputValues + ", useArrayPolymorphism=" + this.useArrayPolymorphism + ", classDiscriminator='" + this.classDiscriminator + "', allowSpecialFloatingPointValues=" + this.allowSpecialFloatingPointValues + ", useAlternativeNames=" + this.useAlternativeNames + ", namingStrategy=" + this.namingStrategy + ", decodeEnumsCaseInsensitive=" + this.decodeEnumsCaseInsensitive + ", allowTrailingComma=" + this.allowTrailingComma + ", allowComments=" + this.allowComments + ", classDiscriminatorMode=" + this.classDiscriminatorMode + ')';
    }

    public JsonConfiguration(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String prettyPrintIndent, boolean z16, boolean z17, String classDiscriminator, boolean z18, boolean z19, JsonNamingStrategy jsonNamingStrategy, boolean z20, boolean z21, boolean z22, ClassDiscriminatorMode classDiscriminatorMode) {
        r.e(prettyPrintIndent, "prettyPrintIndent");
        r.e(classDiscriminator, "classDiscriminator");
        r.e(classDiscriminatorMode, "classDiscriminatorMode");
        this.encodeDefaults = z10;
        this.ignoreUnknownKeys = z11;
        this.isLenient = z12;
        this.allowStructuredMapKeys = z13;
        this.prettyPrint = z14;
        this.explicitNulls = z15;
        this.prettyPrintIndent = prettyPrintIndent;
        this.coerceInputValues = z16;
        this.useArrayPolymorphism = z17;
        this.classDiscriminator = classDiscriminator;
        this.allowSpecialFloatingPointValues = z18;
        this.useAlternativeNames = z19;
        this.namingStrategy = jsonNamingStrategy;
        this.decodeEnumsCaseInsensitive = z20;
        this.allowTrailingComma = z21;
        this.allowComments = z22;
        this.classDiscriminatorMode = classDiscriminatorMode;
    }

    public /* synthetic */ JsonConfiguration(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String str, boolean z16, boolean z17, String str2, boolean z18, boolean z19, JsonNamingStrategy jsonNamingStrategy, boolean z20, boolean z21, boolean z22, ClassDiscriminatorMode classDiscriminatorMode, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, (i10 & 4) != 0 ? false : z12, (i10 & 8) != 0 ? false : z13, (i10 & 16) != 0 ? false : z14, (i10 & 32) != 0 ? true : z15, (i10 & 64) != 0 ? "    " : str, (i10 & 128) != 0 ? false : z16, (i10 & COUIToolTips.ALIGN_TOP) != 0 ? false : z17, (i10 & ConfigPackage.FRAME_SIZE_1) != 0 ? "type" : str2, (i10 & 1024) != 0 ? false : z18, (i10 & ConfigPackage.FRAME_SIZE_3) == 0 ? z19 : true, (i10 & ConfigPackage.FRAME_SIZE_5) != 0 ? null : jsonNamingStrategy, (i10 & ConfigPackage.FRAME_SIZE_6) != 0 ? false : z20, (i10 & ReaderJsonLexerKt.BATCH_SIZE) != 0 ? false : z21, (i10 & 32768) != 0 ? false : z22, (i10 & 65536) != 0 ? ClassDiscriminatorMode.POLYMORPHIC : classDiscriminatorMode);
    }
}
