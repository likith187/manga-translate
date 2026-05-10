package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class o extends g {
    public /* synthetic */ o(File file, File file2, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i10 & 2) != 0 ? null : file2, (i10 & 4) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(File file, File file2, String str) {
        super(file, file2, str);
        kotlin.jvm.internal.r.e(file, "file");
    }
}
