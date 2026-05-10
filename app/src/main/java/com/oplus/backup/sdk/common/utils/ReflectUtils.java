package com.oplus.backup.sdk.common.utils;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public class ReflectUtils {
    private static final String TAG = "ReflectUtils";

    public static Object invoke(Object obj, Class<?> cls, String str, Class<?>[] clsArr, Object[] objArr) {
        try {
            return cls.getMethod(str, clsArr).invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            BRLog.e(TAG, "invoke, IllegalAccessException(" + e10.getMessage() + ")," + BRLog.getCallerTrace(TAG, e10.getStackTrace()));
            return null;
        } catch (IllegalArgumentException e11) {
            BRLog.e(TAG, "invoke, IllegalArgumentException(" + e11.getMessage() + ")," + BRLog.getCallerTrace(TAG, e11.getStackTrace()));
            return null;
        } catch (NoSuchMethodException e12) {
            BRLog.e(TAG, "invoke, NoSuchMethodException(" + e12.getMessage() + ")," + BRLog.getCallerTrace(TAG, e12.getStackTrace()));
            return null;
        } catch (InvocationTargetException e13) {
            BRLog.e(TAG, "invoke, InvocationTargetException(" + e13.getMessage() + ")," + BRLog.getCallerTrace(TAG, e13.getStackTrace()));
            return null;
        } catch (Exception e14) {
            BRLog.e(TAG, "invoke, Exception(" + e14.getMessage() + ")," + BRLog.getCallerTrace(TAG, e14.getStackTrace()));
            return null;
        }
    }
}
