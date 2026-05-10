package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import n8.b0;
import n8.e0;
import n8.x;
import n8.z;

/* JADX INFO: loaded from: classes2.dex */
@SuppressAnimalSniffer
public final class ComposerForUnsignedNumbers extends Composer {
    private final boolean forceQuoting;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerForUnsignedNumbers(InternalJsonWriter writer, boolean z10) {
        super(writer);
        r.e(writer, "writer");
        this.forceQuoting = z10;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(int i10) {
        boolean z10 = this.forceQuoting;
        String unsignedString = Integer.toUnsignedString(z.b(i10));
        if (z10) {
            printQuoted(unsignedString);
        } else {
            print(unsignedString);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(long j10) {
        boolean z10 = this.forceQuoting;
        String unsignedString = Long.toUnsignedString(b0.b(j10));
        if (z10) {
            printQuoted(unsignedString);
        } else {
            print(unsignedString);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(byte b10) {
        boolean z10 = this.forceQuoting;
        String strE = x.e(x.b(b10));
        if (z10) {
            printQuoted(strE);
        } else {
            print(strE);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(short s10) {
        boolean z10 = this.forceQuoting;
        String strE = e0.e(e0.b(s10));
        if (z10) {
            printQuoted(strE);
        } else {
            print(strE);
        }
    }
}
