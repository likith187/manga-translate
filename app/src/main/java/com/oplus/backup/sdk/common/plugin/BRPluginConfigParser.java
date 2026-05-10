package com.oplus.backup.sdk.common.plugin;

import android.os.Bundle;
import com.google.gson.f;
import com.google.gson.i;
import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.o;
import com.oplus.backup.sdk.common.utils.BRLog;
import com.oplus.backup.sdk.common.utils.Constants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BRPluginConfigParser {
    public static final String JSON_ENCODE = "json";
    private static final String TAG = "BRPluginConfigParser";

    private static Bundle fromJson(i iVar) {
        Bundle bundle = new Bundle();
        if (!iVar.k()) {
            return null;
        }
        for (Map.Entry entry : ((l) iVar).o()) {
            String str = (String) entry.getKey();
            i iVar2 = (i) entry.getValue();
            f fVar = iVar2.i() ? (f) iVar2 : null;
            o oVar = iVar2.l() ? (o) iVar2 : null;
            if (fVar != null && fVar.size() <= 0) {
                bundle.putStringArray(str, new String[0]);
            } else if (fVar != null && fVar.n(0).l()) {
                int size = fVar.size();
                String[] strArr = new String[size];
                for (int i10 = 0; i10 < size; i10++) {
                    o oVar2 = (o) fVar.n(i10);
                    if (oVar2.q()) {
                        strArr[i10] = oVar2.h();
                    }
                }
                bundle.putStringArray(str, strArr);
            } else if (oVar != null) {
                if (oVar.n()) {
                    bundle.putBoolean(str, oVar.a());
                } else if (oVar.p()) {
                    bundle.putDouble(str, oVar.m().doubleValue());
                } else if (oVar.q()) {
                    bundle.putString(str, oVar.h());
                } else {
                    BRLog.d(TAG, "unable to transform json to bundle " + str);
                }
            }
        }
        return bundle;
    }

    private static String getValue(String str, String str2) {
        int iIndexOf = str.indexOf(str2);
        if (iIndexOf == -1) {
            return null;
        }
        int iIndexOf2 = str.indexOf("=", iIndexOf) + 1;
        int iIndexOf3 = str.indexOf(Constants.DataMigration.SPLIT_TAG, iIndexOf2);
        if (iIndexOf3 == -1) {
            iIndexOf3 = str.length();
        }
        return str.substring(iIndexOf2, iIndexOf3);
    }

    public static BRPluginConfig parse(InputStream inputStream) {
        String inputStream2 = readInputStream(inputStream);
        String value = getValue(inputStream2, "encode");
        String value2 = getValue(inputStream2, BRPluginConfig.VERSION);
        String value3 = getValue(inputStream2, "context");
        if (value3 != null) {
            value3 = value3.replaceAll("\r|\n", "");
        }
        return parse(value, value2, value3);
    }

    private static String readFile(File file) {
        FileInputStream fileInputStream = null;
        if (file == null) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
        } catch (FileNotFoundException e10) {
            BRLog.e(TAG, "new FileInputStream failed, " + e10.getMessage());
        }
        return readInputStream(fileInputStream);
    }

    private static String readInputStream(InputStream inputStream) {
        StringBuilder sb;
        if (inputStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            try {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    stringBuffer.append(line);
                } catch (IOException e10) {
                    BRLog.e(TAG, "readInputStream, e =" + e10.getMessage());
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e11) {
                            e = e11;
                            sb = new StringBuilder();
                            sb.append("close failed, ");
                            sb.append(e.getMessage());
                            BRLog.w(TAG, sb.toString());
                        }
                    }
                    bufferedReader.close();
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e12) {
                        BRLog.w(TAG, "close failed, " + e12.getMessage());
                        throw th;
                    }
                }
                bufferedReader.close();
                throw th;
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception e13) {
                e = e13;
                sb = new StringBuilder();
                sb.append("close failed, ");
                sb.append(e.getMessage());
                BRLog.w(TAG, sb.toString());
            }
        }
        bufferedReader.close();
        return stringBuffer.toString();
    }

    public static BRPluginConfig parse(File file) {
        String file2 = readFile(file);
        String value = getValue(file2, "encode");
        String value2 = getValue(file2, BRPluginConfig.VERSION);
        String value3 = getValue(file2, "context");
        if (value3 != null) {
            return parse(value, value2, value3.replaceAll("\r|\n", ""));
        }
        return null;
    }

    protected static BRPluginConfig parse(String str, String str2, String str3) {
        Bundle bundleFromJson;
        BRLog.d(TAG, str + ", " + str2 + ", " + str3);
        if (!JSON_ENCODE.equals(str)) {
            return null;
        }
        try {
            bundleFromJson = fromJson(new n().a(str3));
        } catch (Exception e10) {
            BRLog.w(TAG, "parse failed: " + e10.getMessage());
            bundleFromJson = null;
        }
        if (bundleFromJson != null) {
            return new BRPluginConfig(bundleFromJson);
        }
        return null;
    }
}
