package k7;

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

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {
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
        i7.b bVar = new i7.b();
        bVar.c("MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEvE0DoqARwzQKOb/b0cx7B0BQ4Ux8mTdND8rX9KHproZAuOP/M049VdcJ53sjVujUF1URD4IGMtkId2QYwXoDHw==");
        bVar.d("OK");
        arrayList.add(bVar);
        return arrayList;
    }

    private static byte[] c(Context context, String str, byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        byte[] bArrB = b.b(str, b.e(context, str));
        byte[] bArr5 = new byte[bArrB.length + i10 + 10];
        h.a(bArr, 0, bArr5, 0, 1);
        h.a(bArr2, 0, bArr5, 1, 1);
        h.a(bArrB, 0, bArr5, 2, bArrB.length);
        h.a(bArr3, 0, bArr5, bArrB.length + 2, 4);
        h.a(bArr4, 0, bArr5, bArrB.length + 6, i10);
        h.a(h.d(i10), 0, bArr5, bArrB.length + i10 + 6, 4);
        return bArr5;
    }

    private static boolean d(String str, Signature signature, byte[] bArr, byte[] bArr2) throws SignatureException, InvalidKeyException {
        PublicKey publicKeyA = a(a.a(str), "EC");
        if (publicKeyA == null) {
            return false;
        }
        signature.initVerify(publicKeyA);
        signature.update(bArr);
        return signature.verify(bArr2);
    }

    public static boolean e(Context context, String str, byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        byte[] bArrC = c(context, str, bArr, i10, bArr2, bArr3, bArr4);
        boolean z10 = false;
        try {
            Signature signature = Signature.getInstance("SHA256withECDSA");
            List listB = b();
            boolean zD = false;
            for (int i11 = 0; i11 < listB.size(); i11++) {
                try {
                    if ("OK".equals(((i7.b) listB.get(i11)).b()) && (zD = d(((i7.b) listB.get(i11)).a(), signature, bArrC, bArr5))) {
                        return true;
                    }
                } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e10) {
                    e = e10;
                    z10 = zD;
                    e.printStackTrace();
                    d.c("Verify signing get an exception is " + e.getMessage());
                    return z10;
                }
            }
            return zD;
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e11) {
            e = e11;
        }
    }
}
