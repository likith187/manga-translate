package w5;

import android.content.Context;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f16152a = Signature.class.getSimpleName();

    private static PublicKey a(byte[] bArr, String str) {
        try {
            return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(bArr));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e10) {
            e10.printStackTrace();
            d.c("convertPublicKey get exception - " + e10.getMessage());
            return null;
        }
    }

    private static List b() {
        ArrayList arrayList = new ArrayList();
        u5.b bVar = new u5.b();
        bVar.c("MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEvE0DoqARwzQKOb/b0cx7B0BQ4Ux8mTdND8rX9KHproZAuOP/M049VdcJ53sjVujUF1URD4IGMtkId2QYwXoDHw==");
        bVar.d("OK");
        arrayList.add(bVar);
        return arrayList;
    }

    public static boolean c(Context context, String str, byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        PublicKey publicKeyA;
        byte[] bArrB = b.b(str, b.d(context, str));
        byte[] bArr6 = new byte[bArrB.length + i10 + 10];
        boolean z10 = false;
        h.a(bArr, 0, bArr6, 0, 1);
        h.a(bArr2, 0, bArr6, 1, 1);
        h.a(bArrB, 0, bArr6, 2, bArrB.length);
        h.a(bArr3, 0, bArr6, bArrB.length + 2, 4);
        h.a(bArr4, 0, bArr6, bArrB.length + 6, i10);
        h.a(h.d(i10), 0, bArr6, bArrB.length + i10 + 6, 4);
        try {
            Signature signature = Signature.getInstance("SHA256withECDSA");
            List listB = b();
            boolean zVerify = false;
            for (int i11 = 0; i11 < listB.size(); i11++) {
                try {
                    if ("OK".equals(((u5.b) listB.get(i11)).b()) && (publicKeyA = a(a.a(((u5.b) listB.get(i11)).a()), "EC")) != null) {
                        signature.initVerify(publicKeyA);
                        signature.update(bArr6);
                        zVerify = signature.verify(bArr5);
                        if (zVerify) {
                            return zVerify;
                        }
                    }
                } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e10) {
                    e = e10;
                    z10 = zVerify;
                    e.printStackTrace();
                    d.c("Verify signing get an exception is " + e.getMessage());
                    return z10;
                }
            }
            return zVerify;
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e11) {
            e = e11;
        }
    }
}
