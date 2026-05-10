package w5;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import com.oplus.aiunit.core.utils.AuthUtil;
import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            String hexString = Integer.toHexString(bArr[i10]);
            int length = hexString.length();
            if (length == 1) {
                hexString = AuthUtil.AUTH_STYLE_INNER + hexString;
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase());
            if (i10 < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    public static byte[] b(String str, String str2) {
        return (str + h(str2)).getBytes(StandardCharsets.UTF_8);
    }

    private static String c(byte[] bArr, String str) {
        CertificateFactory certificateFactory;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        X509Certificate x509Certificate = null;
        try {
            certificateFactory = CertificateFactory.getInstance("X509");
        } catch (Exception e10) {
            e10.printStackTrace();
            certificateFactory = null;
        }
        if (certificateFactory != null) {
            try {
                x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        try {
            return x509Certificate != null ? a(MessageDigest.getInstance(str).digest(x509Certificate.getEncoded())) : "";
        } catch (NoSuchAlgorithmException e12) {
            e12.printStackTrace();
            return "";
        } catch (CertificateEncodingException e13) {
            e13.printStackTrace();
            return "";
        }
    }

    public static String d(Context context, String str) {
        return f(context, "SHA1", str);
    }

    public static String e(Context context, String str) {
        return f(context, "SHA256", str);
    }

    private static String f(Context context, String str, String str2) {
        SigningInfo signingInfoG = g(context, str2);
        if (signingInfoG == null) {
            return "";
        }
        Signature[] apkContentsSigners = signingInfoG.getApkContentsSigners();
        if (apkContentsSigners.length != 1 && signingInfoG.hasMultipleSigners()) {
            d.d("has multiple signers");
            int length = apkContentsSigners.length;
            String[] strArr = new String[length];
            for (int i10 = 0; i10 < apkContentsSigners.length; i10++) {
                strArr[i10] = c(apkContentsSigners[i10].toByteArray(), str);
            }
            Arrays.sort(strArr);
            StringBuilder sb = new StringBuilder();
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 != length - 1) {
                    sb.append(strArr[i11]);
                    sb.append(":");
                } else {
                    sb.append(strArr[i11]);
                }
            }
            return sb.toString();
        }
        return c(apkContentsSigners[0].toByteArray(), str);
    }

    private static SigningInfo g(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 134217728);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            packageInfo = null;
        }
        if (packageInfo == null) {
            return null;
        }
        return packageInfo.signingInfo;
    }

    public static String h(String str) {
        return str.contains(":") ? str.replaceAll(":", "") : str;
    }
}
