package com.slp.library.common;

import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import kotlin.io.j;
import kotlin.jvm.internal.r;
import kotlin.text.d;

/* JADX INFO: loaded from: classes2.dex */
public final class Utils {
    public static final Utils INSTANCE = new Utils();

    private Utils() {
    }

    public static final void appendFileText(File file, String text) {
        r.e(file, "file");
        r.e(text, "text");
        j.d(file, text, null, 2, null);
    }

    public static final void copyFile(File file, File t10) {
        r.e(file, "file");
        r.e(t10, "t");
        j.p(file, t10, true, null, 4, null);
    }

    public static final boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static final String md5(String text) throws NoSuchAlgorithmException {
        r.e(text, "text");
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        byte[] bytes = text.getBytes(d.f13110a);
        r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        messageDigest.update(bytes);
        byte[] digest = messageDigest.digest();
        r.d(digest, "digest");
        String string = "";
        for (byte b10 : digest) {
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
            r.d(str, "java.lang.String.format(this, *args)");
            sb.append(str);
            string = sb.toString();
        }
        return string;
    }

    public static final String readFileText(File file) {
        r.e(file, "file");
        if (file.exists()) {
            return j.h(file, null, 1, null);
        }
        return null;
    }

    public static final void writeFileText(File file, String text) {
        r.e(file, "file");
        r.e(text, "text");
        j.j(file, text, null, 2, null);
    }

    public static final String readFileText(String path) {
        r.e(path, "path");
        return readFileText(new File(path));
    }
}
