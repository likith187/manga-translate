package t2;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f15693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f15694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f15695c;

    public c(int i10, int i11, int i12) {
        this.f15693a = i10;
        this.f15694b = i11;
        this.f15695c = i12;
    }

    public int a() {
        return this.f15694b;
    }

    int b() {
        return this.f15695c;
    }

    public int c() {
        return this.f15693a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f15693a == cVar.f15693a && this.f15694b == cVar.f15694b;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f15693a), Integer.valueOf(this.f15694b), Integer.valueOf(this.f15695c));
    }

    public String toString() {
        return "UIScreenSize{W-Dp=" + this.f15693a + ", H-Dp=" + this.f15694b + ", SW-Dp=" + this.f15695c + "}";
    }
}
