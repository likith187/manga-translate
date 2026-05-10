package x2;

import x2.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    public static abstract class a {
        public abstract k a();

        public abstract a b(x2.a aVar);

        public abstract a c(b bVar);
    }

    public enum b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);

        private final int value;

        b(int i10) {
            this.value = i10;
        }
    }

    public static a a() {
        return new e.b();
    }

    public abstract x2.a b();

    public abstract b c();
}
