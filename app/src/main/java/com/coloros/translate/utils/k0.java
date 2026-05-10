package com.coloros.translate.utils;

import android.text.TextUtils;
import com.oplus.backup.sdk.common.utils.Constants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class k0 {
    private static String a(File file) {
        String strC = null;
        if (file != null && file.exists() && !file.isDirectory()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    strC = c(fileInputStream);
                    fileInputStream.close();
                } finally {
                }
            } catch (Exception e10) {
                c0.j("ParseSauResourceXmlUtils", "getFileContent e = " + e10);
            }
        }
        return strC;
    }

    public static HashMap b(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            c0.j("ParseSauResourceXmlUtils", "getFileMd5HashMap xmlPath is empty, return");
            return null;
        }
        String strA = a(new File(str2));
        c0.i("ParseSauResourceXmlUtils", "getFileMd5HashMap xmlContentStr = " + strA);
        if (!TextUtils.isEmpty(strA)) {
            return d(str, strA);
        }
        c0.j("ParseSauResourceXmlUtils", "getFileMd5HashMap xmlContentStr is empty");
        return null;
    }

    private static String c(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStream.read(bArr, 0, 1024);
            if (i10 == -1) {
                return new String(byteArrayOutputStream.toByteArray(), "utf-8");
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    private static HashMap d(String str, String str2) {
        String strNextText = null;
        if (TextUtils.isEmpty(str2)) {
            c0.j("ParseSauResourceXmlUtils", "parserXml xml is empty");
            return null;
        }
        HashMap map = new HashMap();
        try {
            XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
            xmlPullParserNewPullParser.setInput(new StringReader(str2));
            xmlPullParserNewPullParser.nextTag();
            int eventType = xmlPullParserNewPullParser.getEventType();
            boolean z10 = false;
            String strNextText2 = null;
            while (eventType != 1) {
                if (2 == eventType) {
                    String name = xmlPullParserNewPullParser.getName();
                    if ("fileList".equals(name)) {
                        z10 = true;
                    }
                    if (z10) {
                        if ("md5".equals(name)) {
                            strNextText2 = xmlPullParserNewPullParser.nextText();
                        } else if (Constants.MessagerConstants.PATH_KEY.equals(name)) {
                            strNextText = xmlPullParserNewPullParser.nextText();
                        }
                    }
                } else if (3 == eventType) {
                    String name2 = xmlPullParserNewPullParser.getName();
                    if ("fileList".equals(name2)) {
                        break;
                    }
                    if (z10 && "file".equals(name2)) {
                        c0.i("ParseSauResourceXmlUtils", "parserXml filePath = " + strNextText + ", fileMd5 = " + strNextText2);
                        if (!TextUtils.isEmpty(strNextText) && !TextUtils.isEmpty(strNextText2)) {
                            map.put(str + strNextText, strNextText2);
                        }
                        c0.j("ParseSauResourceXmlUtils", "parserXml filePath = " + strNextText + ", fileMd5 = " + strNextText2);
                    }
                }
                eventType = xmlPullParserNewPullParser.next();
            }
        } catch (Exception e10) {
            c0.o("ParseSauResourceXmlUtils", "parserXml error: " + e10);
        }
        return map;
    }
}
