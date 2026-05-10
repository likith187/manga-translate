package kotlin.io;

import com.oplus.aiunit.core.ConfigPackage;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r {
    public static final long a(Reader reader, Writer out, int i10) throws IOException {
        kotlin.jvm.internal.r.e(reader, "<this>");
        kotlin.jvm.internal.r.e(out, "out");
        char[] cArr = new char[i10];
        int i11 = reader.read(cArr);
        long j10 = 0;
        while (i11 >= 0) {
            out.write(cArr, 0, i11);
            j10 += (long) i11;
            i11 = reader.read(cArr);
        }
        return j10;
    }

    public static /* synthetic */ long b(Reader reader, Writer writer, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = ConfigPackage.FRAME_SIZE_6;
        }
        return a(reader, writer, i10);
    }

    public static final String c(Reader reader) {
        kotlin.jvm.internal.r.e(reader, "<this>");
        StringWriter stringWriter = new StringWriter();
        b(reader, stringWriter, 0, 2, null);
        String string = stringWriter.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }
}
