package com.heytap.reflect;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class RefMethod<T> {
    private static final String TAG = "RefMethod";
    private Method mMethod;

    public RefMethod(Class<?> cls, Field field) throws NoSuchMethodException {
        if (!field.isAnnotationPresent(MethodName.class)) {
            int i10 = 0;
            if (!field.isAnnotationPresent(MethodSignature.class)) {
                Method[] declaredMethods = cls.getDeclaredMethods();
                int length = declaredMethods.length;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    Method method = declaredMethods[i10];
                    if (method.getName().equals(field.getName())) {
                        this.mMethod = method;
                        method.setAccessible(true);
                        break;
                    }
                    i10++;
                }
            } else {
                String[] strArrParams = ((MethodSignature) field.getAnnotation(MethodSignature.class)).params();
                Class<?>[] clsArr = new Class[strArrParams.length];
                while (i10 < strArrParams.length) {
                    Class<?> protoType = RefStaticMethod.getProtoType(strArrParams[i10]);
                    if (protoType == null) {
                        try {
                            protoType = Class.forName(strArrParams[i10]);
                        } catch (ClassNotFoundException e10) {
                            Log.e(TAG, e10.toString());
                        }
                    }
                    clsArr[i10] = protoType;
                    i10++;
                }
                setMethod(cls, field, clsArr, ((MethodSignature) field.getAnnotation(MethodSignature.class)).name());
                this.mMethod.setAccessible(true);
            }
        } else {
            setMethod(cls, field, ((MethodName) field.getAnnotation(MethodName.class)).params(), ((MethodName) field.getAnnotation(MethodName.class)).name());
            this.mMethod.setAccessible(true);
        }
        if (this.mMethod == null) {
            throw new NoSuchMethodException(field.getName());
        }
    }

    private void setMethod(Class<?> cls, Field field, Class<?>[] clsArr, String str) throws NoSuchMethodException {
        if (str.isEmpty()) {
            this.mMethod = cls.getDeclaredMethod(field.getName(), clsArr);
        } else {
            this.mMethod = cls.getDeclaredMethod(str, clsArr);
        }
    }

    public T call(Object obj, Object... objArr) {
        try {
            return (T) this.mMethod.invoke(obj, objArr);
        } catch (InvocationTargetException e10) {
            if (e10.getCause() != null) {
                Log.e(TAG, e10.getCause().toString());
                return null;
            }
            Log.e(TAG, e10.toString());
            return null;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public T callWithException(Object obj, Object... objArr) throws Throwable {
        try {
            return (T) this.mMethod.invoke(obj, objArr);
        } catch (InvocationTargetException e10) {
            if (e10.getCause() != null) {
                throw e10.getCause();
            }
            throw e10;
        }
    }

    public Class<?>[] paramList() {
        return this.mMethod.getParameterTypes();
    }
}
