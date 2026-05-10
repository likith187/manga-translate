package kotlin.io;

import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.download.core.ErrorCode;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.y;
import kotlin.jvm.internal.s;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n extends m {

    public static final class a extends s implements w8.p {
        public static final a INSTANCE = new a();

        a() {
            super(2);
        }

        @Override // w8.p
        public final Void invoke(File file, IOException exception) throws IOException {
            kotlin.jvm.internal.r.e(file, "<anonymous parameter 0>");
            kotlin.jvm.internal.r.e(exception, "exception");
            throw exception;
        }
    }

    static final class b extends s implements w8.p {
        final /* synthetic */ w8.p $onError;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(w8.p pVar) {
            super(2);
            this.$onError = pVar;
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws q {
            invoke((File) obj, (IOException) obj2);
            return h0.INSTANCE;
        }

        public final void invoke(File f10, IOException e10) throws q {
            kotlin.jvm.internal.r.e(f10, "f");
            kotlin.jvm.internal.r.e(e10, "e");
            if (this.$onError.invoke(f10, e10) == p.TERMINATE) {
                throw new q(f10);
            }
        }
    }

    public static final boolean o(File file, File target, boolean z10, w8.p onError) {
        kotlin.jvm.internal.r.e(file, "<this>");
        kotlin.jvm.internal.r.e(target, "target");
        kotlin.jvm.internal.r.e(onError, "onError");
        if (!file.exists()) {
            return onError.invoke(file, new o(file, null, "The source file doesn't exist.", 2, null)) != p.TERMINATE;
        }
        try {
            for (File file2 : m.n(file).h(new b(onError))) {
                if (file2.exists()) {
                    File file3 = new File(target, v(file2, file));
                    if (file3.exists() && (!file2.isDirectory() || !file3.isDirectory())) {
                        if (z10) {
                            if (file3.isDirectory()) {
                                if (!s(file3)) {
                                }
                            } else if (!file3.delete()) {
                            }
                        }
                        if (onError.invoke(file3, new e(file2, file3, "The destination file already exists.")) == p.TERMINATE) {
                            return false;
                        }
                    }
                    if (file2.isDirectory()) {
                        file3.mkdirs();
                    } else if (r(file2, file3, z10, 0, 4, null).length() != file2.length() && onError.invoke(file2, new IOException("Source file wasn't copied completely, length of destination file differs.")) == p.TERMINATE) {
                        return false;
                    }
                } else if (onError.invoke(file2, new o(file2, null, "The source file doesn't exist.", 2, null)) == p.TERMINATE) {
                    return false;
                }
            }
            return true;
        } catch (q unused) {
            return false;
        }
    }

    public static /* synthetic */ boolean p(File file, File file2, boolean z10, w8.p pVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            pVar = a.INSTANCE;
        }
        return o(file, file2, z10, pVar);
    }

    public static final File q(File file, File target, boolean z10, int i10) throws IOException {
        kotlin.jvm.internal.r.e(file, "<this>");
        kotlin.jvm.internal.r.e(target, "target");
        if (!file.exists()) {
            throw new o(file, null, "The source file doesn't exist.", 2, null);
        }
        if (target.exists()) {
            if (!z10) {
                throw new e(file, target, "The destination file already exists.");
            }
            if (!target.delete()) {
                throw new e(file, target, "Tried to overwrite the destination, but failed to delete it.");
            }
        }
        if (!file.isDirectory()) {
            File parentFile = target.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(target);
                try {
                    kotlin.io.b.a(fileInputStream, fileOutputStream, i10);
                    c.a(fileOutputStream, null);
                    c.a(fileInputStream, null);
                } finally {
                }
            } finally {
            }
        } else if (!target.mkdirs()) {
            throw new g(file, target, "Failed to create target directory.");
        }
        return target;
    }

    public static /* synthetic */ File r(File file, File file2, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = ConfigPackage.FRAME_SIZE_6;
        }
        return q(file, file2, z10, i10);
    }

    public static final boolean s(File file) {
        kotlin.jvm.internal.r.e(file, "<this>");
        while (true) {
            boolean z10 = true;
            for (File file2 : m.m(file)) {
                if (!file2.delete() && file2.exists()) {
                    z10 = false;
                } else {
                    if (z10) {
                        break;
                    }
                    z10 = false;
                }
            }
            return z10;
        }
    }

    private static final List t(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            String name = file.getName();
            if (!kotlin.jvm.internal.r.a(name, ".")) {
                if (!kotlin.jvm.internal.r.a(name, "..")) {
                    arrayList.add(file);
                } else if (arrayList.isEmpty() || kotlin.jvm.internal.r.a(((File) kotlin.collections.o.c0(arrayList)).getName(), "..")) {
                    arrayList.add(file);
                } else {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
        }
        return arrayList;
    }

    private static final f u(f fVar) {
        return new f(fVar.a(), t(fVar.b()));
    }

    public static final String v(File file, File base) throws IOException {
        kotlin.jvm.internal.r.e(file, "<this>");
        kotlin.jvm.internal.r.e(base, "base");
        String strW = w(file, base);
        if (strW != null) {
            return strW;
        }
        throw new IllegalArgumentException("this and base files have different roots: " + file + " and " + base + '.');
    }

    private static final String w(File file, File file2) throws IOException {
        f fVarU = u(k.b(file));
        f fVarU2 = u(k.b(file2));
        if (!kotlin.jvm.internal.r.a(fVarU.a(), fVarU2.a())) {
            return null;
        }
        int iC = fVarU2.c();
        int iC2 = fVarU.c();
        int iMin = Math.min(iC2, iC);
        int i10 = 0;
        while (i10 < iMin && kotlin.jvm.internal.r.a(fVarU.b().get(i10), fVarU2.b().get(i10))) {
            i10++;
        }
        StringBuilder sb = new StringBuilder();
        int i11 = iC - 1;
        if (i10 <= i11) {
            while (!kotlin.jvm.internal.r.a(((File) fVarU2.b().get(i11)).getName(), "..")) {
                sb.append("..");
                if (i11 != i10) {
                    sb.append(File.separatorChar);
                }
                if (i11 != i10) {
                    i11--;
                }
            }
            return null;
        }
        if (i10 < iC2) {
            if (i10 < iC) {
                sb.append(File.separatorChar);
            }
            List listN = kotlin.collections.o.N(fVarU.b(), i10);
            String separator = File.separator;
            kotlin.jvm.internal.r.d(separator, "separator");
            y.X(listN, sb, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 2) != 0 ? ", " : separator, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 4) != 0 ? "" : null, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 8) == 0 ? null : "", (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 16) != 0 ? -1 : 0, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 32) != 0 ? "..." : null, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 64) != 0 ? null : null);
        }
        return sb.toString();
    }
}
