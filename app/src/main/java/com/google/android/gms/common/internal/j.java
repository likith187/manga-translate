package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f7892a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Object f7893b;

        /* synthetic */ a(Object obj, l0 l0Var) {
            k.g(obj);
            this.f7893b = obj;
            this.f7892a = new ArrayList();
        }

        public a a(String str, Object obj) {
            k.g(str);
            this.f7892a.add(str + "=" + String.valueOf(obj));
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f7893b.getClass().getSimpleName());
            sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
            int size = this.f7892a.size();
            for (int i10 = 0; i10 < size; i10++) {
                sb.append((String) this.f7892a.get(i10));
                if (i10 < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append(AbstractJsonLexerKt.END_OBJ);
            return sb.toString();
        }
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int b(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static a c(Object obj) {
        return new a(obj, null);
    }
}
