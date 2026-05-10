package d0;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f11491a;

    static class a extends AccessibilityNodeProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final i f11492a;

        a(i iVar) {
            this.f11492a = iVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i10) {
            h hVarB = this.f11492a.b(i10);
            if (hVarB == null) {
                return null;
            }
            return hVarB.L0();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List findAccessibilityNodeInfosByText(String str, int i10) {
            List listC = this.f11492a.c(str, i10);
            if (listC == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = listC.size();
            for (int i11 = 0; i11 < size; i11++) {
                arrayList.add(((h) listC.get(i11)).L0());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i10) {
            h hVarD = this.f11492a.d(i10);
            if (hVarD == null) {
                return null;
            }
            return hVarD.L0();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i10, int i11, Bundle bundle) {
            return this.f11492a.f(i10, i11, bundle);
        }
    }

    static class b extends a {
        b(i iVar) {
            super(iVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public void addExtraDataToAccessibilityNodeInfo(int i10, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.f11492a.a(i10, h.M0(accessibilityNodeInfo), str, bundle);
        }
    }

    public i() {
        this.f11491a = new b(this);
    }

    public void a(int i10, h hVar, String str, Bundle bundle) {
    }

    public h b(int i10) {
        return null;
    }

    public List c(String str, int i10) {
        return null;
    }

    public h d(int i10) {
        return null;
    }

    public Object e() {
        return this.f11491a;
    }

    public boolean f(int i10, int i11, Bundle bundle) {
        return false;
    }

    public i(Object obj) {
        this.f11491a = obj;
    }
}
