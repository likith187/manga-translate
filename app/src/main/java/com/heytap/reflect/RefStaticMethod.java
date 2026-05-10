package com.heytap.reflect;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class RefStaticMethod<T> {
    private static final String TAG = "RefStaticMethod";
    private Method mMethod;

    public RefStaticMethod(Class<?> cls, Field field) throws NoSuchMethodException {
        Class<?> cls2;
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
                Class<?>[] clsArr2 = new Class[strArrParams.length];
                boolean z10 = false;
                while (i10 < strArrParams.length) {
                    Class<?> protoType = getProtoType(strArrParams[i10]);
                    if (protoType == null) {
                        try {
                            protoType = Class.forName(strArrParams[i10]);
                        } catch (ClassNotFoundException e10) {
                            Log.e(TAG, e10.toString());
                        }
                    }
                    clsArr[i10] = protoType;
                    if ("java.util.HashSet".equals(strArrParams[i10])) {
                        try {
                            cls2 = Class.forName("android.util.ArraySet");
                        } catch (ClassNotFoundException e11) {
                            Log.e(TAG, e11.toString());
                            cls2 = protoType;
                        }
                        if (cls2 != null) {
                            clsArr2[i10] = cls2;
                        } else {
                            clsArr2[i10] = protoType;
                        }
                        z10 = true;
                    } else {
                        clsArr2[i10] = protoType;
                    }
                    i10++;
                }
                try {
                    setMethod(cls, field, clsArr, ((MethodSignature) field.getAnnotation(MethodSignature.class)).name());
                } catch (Exception e12) {
                    Log.e(TAG, e12.toString());
                    if (z10) {
                        setMethod(cls, field, clsArr2, ((MethodSignature) field.getAnnotation(MethodSignature.class)).name());
                    }
                }
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

    static Class<?> getProtoType(String str) {
        if (str.equals("int")) {
            return Integer.TYPE;
        }
        if (str.equals("long")) {
            return Long.TYPE;
        }
        if (str.equals("boolean")) {
            return Boolean.TYPE;
        }
        if (str.equals("byte")) {
            return Byte.TYPE;
        }
        if (str.equals("short")) {
            return Short.TYPE;
        }
        if (str.equals("char")) {
            return Character.TYPE;
        }
        if (str.equals("float")) {
            return Float.TYPE;
        }
        if (str.equals("double")) {
            return Double.TYPE;
        }
        if (str.equals("void")) {
            return Void.TYPE;
        }
        return null;
    }

    private void setMethod(Class<?> cls, Field field, Class<?>[] clsArr, String str) throws NoSuchMethodException {
        if (str.isEmpty()) {
            this.mMethod = cls.getDeclaredMethod(field.getName(), clsArr);
        } else {
            this.mMethod = cls.getDeclaredMethod(str, clsArr);
        }
    }

    public T call(Object... objArr) {
        try {
            return (T) this.mMethod.invoke(null, objArr);
        } catch (Exception e10) {
            Log.e(TAG, e10.toString());
            return null;
        }
    }

    public T callWithException(Object... objArr) throws Throwable {
        try {
            return (T) this.mMethod.invoke(null, objArr);
        } catch (InvocationTargetException e10) {
            if (e10.getCause() != null) {
                throw e10.getCause();
            }
            throw e10;
        }
    }
}
