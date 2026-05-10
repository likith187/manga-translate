package kotlin.io;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class k {
    private static final int a(String str) {
        int iV;
        char c10 = File.separatorChar;
        int iV2 = kotlin.text.r.V(str, c10, 0, false, 4, null);
        if (iV2 == 0) {
            if (str.length() <= 1 || str.charAt(1) != c10 || (iV = kotlin.text.r.V(str, c10, 2, false, 4, null)) < 0) {
                return 1;
            }
            int iV3 = kotlin.text.r.V(str, c10, iV + 1, false, 4, null);
            return iV3 >= 0 ? iV3 + 1 : str.length();
        }
        if (iV2 > 0 && str.charAt(iV2 - 1) == ':') {
            return iV2 + 1;
        }
        if (iV2 == -1 && kotlin.text.r.N(str, ':', false, 2, null)) {
            return str.length();
        }
        return 0;
    }

    public static final f b(File file) {
        List listH;
        kotlin.jvm.internal.r.e(file, "<this>");
        String path = file.getPath();
        kotlin.jvm.internal.r.b(path);
        int iA = a(path);
        String strSubstring = path.substring(0, iA);
        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
        String strSubstring2 = path.substring(iA);
        kotlin.jvm.internal.r.d(strSubstring2, "substring(...)");
        if (strSubstring2.length() == 0) {
            listH = kotlin.collections.o.h();
        } else {
            List listT0 = kotlin.text.r.t0(strSubstring2, new char[]{File.separatorChar}, false, 0, 6, null);
            ArrayList arrayList = new ArrayList(kotlin.collections.o.r(listT0, 10));
            Iterator it = listT0.iterator();
            while (it.hasNext()) {
                arrayList.add(new File((String) it.next()));
            }
            listH = arrayList;
        }
        return new f(new File(strSubstring), listH);
    }
}
