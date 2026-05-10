package kotlin.io;

import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f13044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f13045b;

    public f(File root, List segments) {
        kotlin.jvm.internal.r.e(root, "root");
        kotlin.jvm.internal.r.e(segments, "segments");
        this.f13044a = root;
        this.f13045b = segments;
    }

    public final File a() {
        return this.f13044a;
    }

    public final List b() {
        return this.f13045b;
    }

    public final int c() {
        return this.f13045b.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return kotlin.jvm.internal.r.a(this.f13044a, fVar.f13044a) && kotlin.jvm.internal.r.a(this.f13045b, fVar.f13045b);
    }

    public int hashCode() {
        return (this.f13044a.hashCode() * 31) + this.f13045b.hashCode();
    }

    public String toString() {
        return "FilePathComponents(root=" + this.f13044a + ", segments=" + this.f13045b + ')';
    }
}
