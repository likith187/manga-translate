package com.coloros.translate.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    private static void a(String str) {
        File file = new File(str);
        if ((!file.exists() || file.isDirectory()) && file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public static void b(Context context, String str, String str2) {
        c0.i("AssetsCopy", "releaseAssets()" + str + ", " + str2);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (str2.endsWith("/")) {
            str2 = str2.substring(0, str2.length() - 1);
        }
        if (TextUtils.isEmpty(str) || str.equals("/")) {
            str = "";
        } else if (str.endsWith("/")) {
            str = str.substring(0, str.length() - 1);
        }
        try {
            AssetManager assets = context.getResources().getAssets();
            String[] list = assets.list(str);
            if (list == null || list.length <= 0) {
                c((str2 + File.separator + str).replace("text/", ""), assets.open(str));
                return;
            }
            for (String str3 : list) {
                if (!TextUtils.isEmpty(str)) {
                    str3 = str + File.separator + str3;
                }
                String[] list2 = assets.list(str3);
                String strReplace = (str2 + File.separator + str3).replace("text/", "");
                if (TextUtils.isEmpty(str3) || list2.length <= 0) {
                    c(strReplace, assets.open(str3));
                } else {
                    a(strReplace);
                    b(context, str3, str2);
                }
            }
        } catch (Exception e10) {
            c0.i("AssetsCopy", "AssetsCopy() " + e10.getMessage());
        }
    }

    private static boolean c(String str, InputStream inputStream) throws IOException {
        FileOutputStream fileOutputStream;
        byte[] bArr;
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                bArr = new byte[4112];
            } finally {
            }
        } catch (FileNotFoundException e10) {
            c0.j("AssetsCopy", e10.getMessage());
            return false;
        }
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                fileOutputStream.flush();
                fileOutputStream.close();
                return true;
            }
            fileOutputStream.write(bArr, 0, i10);
            c0.j("AssetsCopy", e10.getMessage());
            return false;
        }
    }
}
