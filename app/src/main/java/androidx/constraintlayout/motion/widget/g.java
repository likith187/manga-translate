package androidx.constraintlayout.motion.widget;

import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static HashMap f1303b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap f1304a = new HashMap();

    static {
        HashMap map = new HashMap();
        f1303b = map;
        try {
            map.put("KeyAttribute", e.class.getConstructor(null));
            f1303b.put("KeyPosition", h.class.getConstructor(null));
            f1303b.put("KeyCycle", f.class.getConstructor(null));
            f1303b.put("KeyTimeCycle", j.class.getConstructor(null));
            f1303b.put("KeyTrigger", k.class.getConstructor(null));
        } catch (NoSuchMethodException e10) {
            Log.e("KeyFrames", "unable to load", e10);
        }
    }

    public g() {
    }

    public void a(m mVar) {
        ArrayList arrayList = (ArrayList) this.f1304a.get(-1);
        if (arrayList != null) {
            mVar.b(arrayList);
        }
    }

    public void b(m mVar) {
        ArrayList arrayList = (ArrayList) this.f1304a.get(Integer.valueOf(mVar.f1384c));
        if (arrayList != null) {
            mVar.b(arrayList);
        }
        ArrayList<d> arrayList2 = (ArrayList) this.f1304a.get(-1);
        if (arrayList2 != null) {
            for (d dVar : arrayList2) {
                if (dVar.f(((ConstraintLayout.b) mVar.f1383b.getLayoutParams()).constraintTag)) {
                    mVar.a(dVar);
                }
            }
        }
    }

    public void c(d dVar) {
        if (!this.f1304a.containsKey(Integer.valueOf(dVar.f1260b))) {
            this.f1304a.put(Integer.valueOf(dVar.f1260b), new ArrayList());
        }
        ArrayList arrayList = (ArrayList) this.f1304a.get(Integer.valueOf(dVar.f1260b));
        if (arrayList != null) {
            arrayList.add(dVar);
        }
    }

    public ArrayList d(int i10) {
        return (ArrayList) this.f1304a.get(Integer.valueOf(i10));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public g(android.content.Context r9, org.xmlpull.v1.XmlPullParser r10) {
        /*
            Method dump skipped, instruction units count: 272
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.g.<init>(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }
}
