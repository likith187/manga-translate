package com.heytap.epona;

/* JADX INFO: loaded from: classes.dex */
final class e extends RuntimeException {
    private static final String TAG = "ParcelableException";

    private e(Throwable th) {
        super(th);
    }

    static e create(ExceptionInfo exceptionInfo) {
        String name = exceptionInfo.getName();
        String message = exceptionInfo.getMessage();
        try {
            Class<?> cls = Class.forName(name);
            if (Throwable.class.isAssignableFrom(cls)) {
                return new e((Throwable) cls.getConstructor(String.class).newInstance(message));
            }
        } catch (ReflectiveOperationException e10) {
            q5.a.c(TAG, e10.toString(), new Object[0]);
        }
        return new e(new RuntimeException(name + ": " + message));
    }

    <T extends Throwable> void maybeRethrow(Class<T> cls) throws Throwable {
        if (cls.isAssignableFrom(getCause().getClass())) {
            throw getCause();
        }
    }
}
