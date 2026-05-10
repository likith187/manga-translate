package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@SuppressAnimalSniffer
public final class ComposerForUnquotedLiterals extends Composer {
    private final boolean forceQuoting;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerForUnquotedLiterals(InternalJsonWriter writer, boolean z10) {
        super(writer);
        r.e(writer, "writer");
        this.forceQuoting = z10;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void printQuoted(String value) {
        r.e(value, "value");
        if (this.forceQuoting) {
            super.printQuoted(value);
        } else {
            super.print(value);
        }
    }
}
