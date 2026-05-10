package o7;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import s7.g;

/* JADX INFO: loaded from: classes2.dex */
public class b extends c {
    public b(Context context) {
        super(context);
    }

    @Override // o7.c, o7.f
    public int g() {
        return 1010;
    }

    public void s(List list) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(s7.e.a((Map) it.next()));
        }
        String string = jSONArray.toString();
        if (string.length() < 262144) {
            this.f14450g = string;
            d("mapList", string);
            return;
        }
        final String str = "DataOverSizeException :" + e() + ", " + o() + ", " + m();
        str.getClass();
        s7.f.f("CommonBatchBean", new g() { // from class: o7.a
            @Override // s7.g
            public final Object get() {
                return str.toString();
            }
        });
        throw new m7.a(str);
    }
}
