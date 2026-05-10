package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f3730b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f3729a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList f3731c = new ArrayList();

    public v(View view) {
        this.f3730b = view;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f3730b == vVar.f3730b && this.f3729a.equals(vVar.f3729a);
    }

    public int hashCode() {
        return (this.f3730b.hashCode() * 31) + this.f3729a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f3730b + "\n") + "    values:";
        for (String str2 : this.f3729a.keySet()) {
            str = str + "    " + str2 + ": " + this.f3729a.get(str2) + "\n";
        }
        return str;
    }
}
