package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public class g extends IOException {
    private final File file;
    private final File other;
    private final String reason;

    public /* synthetic */ g(File file, File file2, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i10 & 2) != 0 ? null : file2, (i10 & 4) != 0 ? null : str);
    }

    public final File getFile() {
        return this.file;
    }

    public final File getOther() {
        return this.other;
    }

    public final String getReason() {
        return this.reason;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(File file, File file2, String str) {
        super(d.b(file, file2, str));
        kotlin.jvm.internal.r.e(file, "file");
        this.file = file;
        this.other = file2;
        this.reason = str;
    }
}
