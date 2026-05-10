package s7;

import java.util.Map;
import m7.i;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {
    public static JSONObject a(Map map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null && !map.isEmpty()) {
            try {
                for (String str : map.keySet()) {
                    jSONObject.put(str, map.get(str));
                }
            } catch (Exception e10) {
                f.b("CastUtil", new i(e10));
            }
        }
        return jSONObject;
    }
}
