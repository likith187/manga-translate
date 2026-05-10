package j6;

/* JADX INFO: loaded from: classes2.dex */
public enum f {
    JSON(".json"),
    ZIP(".zip");

    public final String extension;

    f(String str) {
        this.extension = str;
    }

    public String tempExtension() {
        return ".temp" + this.extension;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.extension;
    }
}
