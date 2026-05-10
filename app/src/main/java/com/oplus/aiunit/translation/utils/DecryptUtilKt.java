package com.oplus.aiunit.translation.utils;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.collections.i;
import kotlin.jvm.internal.r;
import kotlin.text.d;

/* JADX INFO: loaded from: classes2.dex */
public final class DecryptUtilKt {
    public static final int AES_BLOCK_SIZE = 16;

    public static final String decrypt(String ciphertextB64, byte[] key) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        r.e(ciphertextB64, "ciphertextB64");
        r.e(key, "key");
        byte[] bArrDecode = Base64.getDecoder().decode(ciphertextB64);
        r.b(bArrDecode);
        byte[] bArrO = i.o(bArrDecode, 0, 16);
        byte[] bArrO2 = i.o(bArrDecode, 16, bArrDecode.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(key, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKeySpec, new IvParameterSpec(bArrO));
        byte[] bArrDoFinal = cipher.doFinal(bArrO2);
        r.b(bArrDoFinal);
        return new String(bArrDoFinal, d.f13110a);
    }
}
