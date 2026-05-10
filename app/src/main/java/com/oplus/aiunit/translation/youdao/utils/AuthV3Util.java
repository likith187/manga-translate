package com.oplus.aiunit.translation.youdao.utils;

import com.oplus.aiunit.core.utils.AuthUtil;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AuthV3Util {
    public static void addAuthParams(String str, String str2, Map<String, String[]> map, String str3) throws NoSuchAlgorithmException {
        String[] strArr = map.get("q");
        if (strArr == null) {
            strArr = map.get("img");
        }
        StringBuilder sb = new StringBuilder();
        for (String str4 : strArr) {
            sb.append(str4);
        }
        String strValueOf = String.valueOf(System.currentTimeMillis() / 1000);
        String strCalculateSign = calculateSign(str, str2, sb.toString(), str3, strValueOf);
        map.put("appKey", new String[]{str});
        map.put("salt", new String[]{str3});
        map.put("curtime", new String[]{strValueOf});
        map.put("signType", new String[]{"v3"});
        map.put("sign", new String[]{strCalculateSign});
    }

    public static String calculateSign(String str, String str2, String str3, String str4, String str5) throws NoSuchAlgorithmException {
        return encrypt(str + getInput(str3) + str4 + str5 + str2);
    }

    private static String encrypt(String str) throws NoSuchAlgorithmException {
        byte[] bytes = str.getBytes();
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(bytes);
        byte[] bArrDigest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b10 : bArrDigest) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() == 1) {
                sb.append(AuthUtil.AUTH_STYLE_INNER);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    private static String getInput(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length <= 20) {
            return str;
        }
        return str.substring(0, 10) + length + str.substring(length - 10, length);
    }
}
