package z1;

import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.q;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f16608c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f16609a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f16610b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final q a(byte[] bArr, byte[] bArr2, boolean z10) {
        if (z10) {
            bArr = this.f16610b;
        }
        if (z10) {
            bArr2 = this.f16610b;
        }
        return new q(bArr, bArr2);
    }

    public final void b(int i10) {
        c0.f7098a.d("VoiceDataHandler", "setRecorderSize: " + i10);
        this.f16610b = new byte[i10];
    }
}
