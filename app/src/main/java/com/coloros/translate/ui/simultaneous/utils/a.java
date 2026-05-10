package com.coloros.translate.ui.simultaneous.utils;

import java.util.LinkedList;
import java.util.regex.Pattern;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final j f6764a = k.b(c.INSTANCE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final j f6765b = k.b(b.INSTANCE);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final j f6766c = k.b(C0094a.INSTANCE);

    /* JADX INFO: renamed from: com.coloros.translate.ui.simultaneous.utils.a$a, reason: collision with other inner class name */
    static final class C0094a extends s implements w8.a {
        public static final C0094a INSTANCE = new C0094a();

        C0094a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Pattern mo8invoke() {
            return Pattern.compile(a.INSTANCE.e(), 66);
        }
    }

    static final class b extends s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final String mo8invoke() {
            StringBuffer stringBuffer = new StringBuffer("⭕|⭐|[☀-⟿]|[🀀-🏿]|[🐀-\u1f7ff]|[🤀-\u1fbff]|[☀-⟿]|[\ue000-\uf8ff]");
            stringBuffer.append("|");
            int size = a.INSTANCE.f().size();
            for (int i10 = 0; i10 < size; i10++) {
                stringBuffer.append((String) a.INSTANCE.f().get(i10));
                if (i10 < r3.f().size() - 1) {
                    stringBuffer.append("|");
                }
            }
            stringBuffer.append("|[←-↙]|[■-□]|[▲-△]|[▼-▽]|[◆-◇]|[◎-●]|[◢-◥]|\\u203b|\\u25cb|\\u534d|\\u2121|\\u2299|\\u32a3|\\u2122|\\u3231|\\u56cd|\\u00ae|\\u00a9|\\u21aa|\\u21a3|\\u21d4");
            String string = stringBuffer.toString();
            r.d(string, "toString(...)");
            return string;
        }
    }

    static final class c extends s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final LinkedList<String> mo8invoke() {
            LinkedList<String> linkedList = new LinkedList<>();
            linkedList.add("\\ufe0f");
            linkedList.add("\\u25fd");
            linkedList.add("\\u25fe");
            linkedList.add("\\u2b1b");
            linkedList.add("\\u2b1c");
            linkedList.add("\\u23e9");
            linkedList.add("\\u23ea");
            linkedList.add("\\u23eb");
            linkedList.add("\\u23ec");
            linkedList.add("\\u231b");
            linkedList.add("\\u23f3");
            linkedList.add("\\u23f9");
            linkedList.add("\\u23f8");
            linkedList.add("\\u23fa");
            linkedList.add("\\u231a");
            linkedList.add("\\u23f0");
            linkedList.add("\\u20e3");
            return linkedList;
        }
    }

    private a() {
    }

    public static final boolean c(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return false;
        }
        return INSTANCE.d().matcher(charSequence).find();
    }

    private final Pattern d() {
        Object value = f6766c.getValue();
        r.d(value, "getValue(...)");
        return (Pattern) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String e() {
        return (String) f6765b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinkedList f() {
        return (LinkedList) f6764a.getValue();
    }
}
