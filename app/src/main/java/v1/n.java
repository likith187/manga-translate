package v1;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f15919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f15920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f15921c;

    public n(o type, String lexeme, Object obj) {
        r.e(type, "type");
        r.e(lexeme, "lexeme");
        this.f15919a = type;
        this.f15920b = lexeme;
        this.f15921c = obj;
    }

    public final String a() {
        return this.f15920b;
    }

    public final Object b() {
        return this.f15921c;
    }

    public final o c() {
        return this.f15919a;
    }

    public String toString() {
        return this.f15919a + ' ' + this.f15920b + ' ' + this.f15921c;
    }
}
