package androidx.window.core;

import java.math.BigInteger;
import kotlin.jvm.internal.s;
import w8.a;

/* JADX INFO: loaded from: classes.dex */
final class Version$bigInteger$2 extends s implements a {
    final /* synthetic */ Version this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Version$bigInteger$2(Version version) {
        super(0);
        this.this$0 = version;
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final BigInteger mo8invoke() {
        return BigInteger.valueOf(this.this$0.d()).shiftLeft(32).or(BigInteger.valueOf(this.this$0.e())).shiftLeft(32).or(BigInteger.valueOf(this.this$0.f()));
    }
}
