package com.heytap.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefInt {
    private static final String TAG = "RefInt";
    private Field mField;

    public RefInt(Class cls, Field field) throws NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(field.getName());
        this.mField = declaredField;
        declaredField.setAccessible(true);
    }

    public int get(Object obj) {
        try {
            return this.mField.getInt(obj);
        } catch (Exception e10) {
            Log.e(TAG, e10.toString());
            return 0;
        }
    }

    public int getWithException(Object obj) throws IllegalAccessException, IllegalArgumentException {
        return this.mField.getInt(obj);
    }

    public void set(Object obj, int i10) {
        try {
            this.mField.setInt(obj, i10);
        } catch (Exception e10) {
            Log.e(TAG, e10.toString());
        }
    }
}
