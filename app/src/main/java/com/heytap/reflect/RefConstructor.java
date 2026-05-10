package com.heytap.reflect;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefConstructor<T> {
    private static final String TAG = "RefConstructor";
    private Constructor<?> mConstructor;

    public RefConstructor(Class<?> cls, Field field) throws NoSuchMethodException {
        if (field.isAnnotationPresent(MethodName.class)) {
            this.mConstructor = cls.getDeclaredConstructor(((MethodName) field.getAnnotation(MethodName.class)).params());
        } else if (field.isAnnotationPresent(MethodSignature.class)) {
            String[] strArrParams = ((MethodSignature) field.getAnnotation(MethodSignature.class)).params();
            Class<?>[] clsArr = new Class[strArrParams.length];
            int i10 = 0;
            while (i10 < strArrParams.length) {
                try {
                    clsArr[i10] = Class.forName(strArrParams[i10]);
                    i10++;
                } catch (Exception e10) {
                    Log.e(TAG, e10.toString());
                }
            }
            this.mConstructor = cls.getDeclaredConstructor(clsArr);
        } else {
            this.mConstructor = cls.getDeclaredConstructor(null);
        }
        Constructor<?> constructor = this.mConstructor;
        if (constructor == null || constructor.isAccessible()) {
            return;
        }
        this.mConstructor.setAccessible(true);
    }

    public T newInstance() {
        try {
            return (T) this.mConstructor.newInstance(null);
        } catch (Exception e10) {
            Log.e(TAG, e10.toString());
            return null;
        }
    }

    public T newInstance(Object... objArr) {
        try {
            return (T) this.mConstructor.newInstance(objArr);
        } catch (Exception e10) {
            Log.e(TAG, e10.toString());
            return null;
        }
    }
}
