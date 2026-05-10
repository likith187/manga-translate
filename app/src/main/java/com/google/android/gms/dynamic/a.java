package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public final class a extends IObjectWrapper.Stub {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f8052a;

    private a(Object obj) {
        this.f8052a = obj;
    }

    public static Object a(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper instanceof a) {
            return ((a) iObjectWrapper).f8052a;
        }
        IBinder iBinderAsBinder = iObjectWrapper.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        Field field = null;
        int i10 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i10++;
                field = field2;
            }
        }
        if (i10 != 1) {
            throw new IllegalArgumentException("Unexpected number of IObjectWrapper declared fields: " + declaredFields.length);
        }
        k.g(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return field.get(iBinderAsBinder);
        } catch (IllegalAccessException e10) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e10);
        } catch (NullPointerException e11) {
            throw new IllegalArgumentException("Binder object is null.", e11);
        }
    }

    public static IObjectWrapper b(Object obj) {
        return new a(obj);
    }
}
