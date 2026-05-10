package q0;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class d {
    public static final Void a(String key) {
        r.e(key, "key");
        throw new IllegalArgumentException("No valid saved state was found for the key '" + key + "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly.");
    }
}
