package com.coloros.translate.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {
    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            c0.i("ColorNetworkUtil", "isNetworkConnected, network is not connected!");
            return false;
        }
        c0.i("ColorNetworkUtil", "isNetworkConnected, network is connected!");
        return true;
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 0;
    }
}
