package com.coloros.translate.engine.offline;

import android.content.Context;
import android.text.TextUtils;
import com.coloros.translate.engine.offline.f0;
import com.coloros.translate.utils.l0;
import com.oplus.backup.sdk.common.plugin.BRPluginConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: d */
    private static volatile d f5013d;

    /* JADX INFO: renamed from: a */
    private final Map f5014a = new HashMap();

    /* JADX INFO: renamed from: b */
    private final ArrayList f5015b = new ArrayList();

    /* JADX INFO: renamed from: c */
    private List f5016c;

    private d(Context context) {
        List<f0> listGenerateDefaultPackageList = g.generateDefaultPackageList(context);
        this.f5016c = listGenerateDefaultPackageList;
        for (f0 f0Var : listGenerateDefaultPackageList) {
            this.f5014a.put(f0Var.f5038g, f0Var);
        }
    }

    private String d(String str) {
        if (TextUtils.equals(str, "zhen") || TextUtils.equals(str, "enzh")) {
            return "apps_translate_res_ce";
        }
        if (TextUtils.equals(str, "zhko") || TextUtils.equals(str, "kozh")) {
            return "apps_translate_res_ck";
        }
        if (TextUtils.equals(str, "zhfr") || TextUtils.equals(str, "frzh")) {
            return "apps_translate_res_cf";
        }
        if (TextUtils.equals(str, "zhja") || TextUtils.equals(str, "jazh")) {
            return "apps_translate_res_cj";
        }
        if (TextUtils.equals(str, "zhvi") || TextUtils.equals(str, "vizh")) {
            return "apps_translate_res_cv";
        }
        if (TextUtils.equals(str, "zhes") || TextUtils.equals(str, "eszh")) {
            return "apps_translate_res_cs";
        }
        if (TextUtils.equals(str, "zhit") || TextUtils.equals(str, "itzh")) {
            return "apps_translate_res_ci";
        }
        if (TextUtils.equals(str, "zhde") || TextUtils.equals(str, "dezh")) {
            return "apps_translate_res_cg";
        }
        if (TextUtils.equals(str, "enhi") || TextUtils.equals(str, "hien")) {
            return "apps_translate_res_eh";
        }
        if (TextUtils.equals(str, "envi") || TextUtils.equals(str, "vien")) {
            return "apps_translate_res_ev";
        }
        if (TextUtils.equals(str, "enth") || TextUtils.equals(str, "then")) {
            return "apps_translate_res_et";
        }
        if (TextUtils.equals(str, "enes") || TextUtils.equals(str, "esen")) {
            return "apps_translate_res_es";
        }
        if (TextUtils.equals(str, "enid") || TextUtils.equals(str, "iden")) {
            return "apps_translate_res_ei";
        }
        return null;
    }

    private void e() {
        if (this.f5015b.isEmpty()) {
            return;
        }
        final List<String> listCoverToBusinessIdList = g.coverToBusinessIdList(this.f5015b);
        final ArrayList arrayList = new ArrayList();
        this.f5016c.forEach(new Consumer() { // from class: com.coloros.translate.engine.offline.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                d.l(listCoverToBusinessIdList, arrayList, (f0) obj);
            }
        });
        if (arrayList.isEmpty()) {
            return;
        }
        this.f5016c.removeAll(arrayList);
        arrayList.forEach(new Consumer() { // from class: com.coloros.translate.engine.offline.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f5010a.m((f0) obj);
            }
        });
    }

    public static d f(Context context) {
        if (f5013d == null) {
            synchronized (d.class) {
                try {
                    if (f5013d == null) {
                        f5013d = new d(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f5013d;
    }

    private f0 i(long j10) {
        for (f0 f0Var : this.f5016c) {
            if (f0Var.f5036e == j10) {
                return f0Var;
            }
        }
        return null;
    }

    public static /* synthetic */ void k(f0 f0Var, AtomicBoolean atomicBoolean, String str) {
        if (str.equals(f0Var.f5038g)) {
            atomicBoolean.set(true);
        }
    }

    public static /* synthetic */ void l(List list, List list2, final f0 f0Var) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        list.forEach(new Consumer() { // from class: com.coloros.translate.engine.offline.c
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                d.k(f0Var, atomicBoolean, (String) obj);
            }
        });
        if (atomicBoolean.get()) {
            return;
        }
        list2.add(f0Var);
    }

    public /* synthetic */ void m(f0 f0Var) {
        this.f5014a.remove(f0Var);
    }

    private void r(JSONArray jSONArray) {
        JSONObject jSONObject;
        this.f5015b.clear();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            try {
                jSONObject = jSONArray.getJSONObject(i10);
            } catch (Exception unused) {
                com.coloros.translate.utils.c0.o("AllOfflinePackage", "updateByJson resp fail");
                jSONObject = null;
            }
            if (jSONObject == null) {
                com.coloros.translate.utils.c0.i("AllOfflinePackage", "updateByJson resp is null");
            } else {
                try {
                    String string = jSONObject.getString("key");
                    f0 f0Var = (f0) this.f5014a.get(d(string));
                    if (f0Var != null) {
                        this.f5015b.add(string);
                        String string2 = jSONObject.getString("url");
                        f0Var.f5040i = string2;
                        int iLastIndexOf = string2.lastIndexOf("?");
                        if (iLastIndexOf == -1) {
                            iLastIndexOf = string2.length();
                        }
                        f0Var.f5041j = string2.substring(string2.lastIndexOf("/") + 1, iLastIndexOf);
                        f0Var.f5043l = jSONObject.getLong("fileSize");
                        int i11 = jSONObject.getInt(BRPluginConfig.VERSION);
                        s(i11, d(jSONObject.getString("key")), jSONObject.getLong("fileSize"));
                        f0Var.f5045n = i11;
                        f0Var.h(i11);
                    } else {
                        com.coloros.translate.utils.c0.i("AllOfflinePackage", "updateByJson packageData is null");
                    }
                } catch (Exception e10) {
                    com.coloros.translate.utils.c0.j("AllOfflinePackage", "updateByJson error" + e10.getMessage());
                }
            }
        }
        if (this.f5015b.isEmpty()) {
            return;
        }
        e();
    }

    private void s(int i10, String str, long j10) {
        l0.a aVar = com.coloros.translate.utils.l0.f7130a;
        if (i10 > aVar.d(com.coloros.translate.utils.m.f7131a, str)) {
            aVar.h(com.coloros.translate.utils.m.f7131a, str, j10);
        }
    }

    public List g() {
        return this.f5015b;
    }

    f0 h(String str) {
        return (f0) this.f5014a.get(str);
    }

    public List j(Boolean bool) {
        if (bool.booleanValue()) {
            return this.f5016c;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.f5016c.size(); i10++) {
            if (g.getAdaptLanguageCode().contains(((f0) this.f5016c.get(i10)).f5038g)) {
                arrayList.add((f0) this.f5016c.get(i10));
            }
        }
        return arrayList;
    }

    void n(Context context, t1.a aVar) {
        f0 f0VarH = h(aVar.f15673r);
        if (f0VarH == null) {
            return;
        }
        f0VarH.g(context, aVar, false);
    }

    void o(t1.a aVar, boolean z10) {
        f0 f0VarH = h(aVar.f15673r);
        if (f0VarH != null) {
            if (z10) {
                f0VarH.f5032a = f0.a.COMPRESSED;
            } else {
                f0VarH.f();
            }
        }
    }

    void p(Context context, long j10) {
        f0 f0VarI = i(j10);
        if (f0VarI == null || f0VarI.d(context)) {
            return;
        }
        f0VarI.f();
    }

    void q(Context context) {
        for (f0 f0Var : this.f5016c) {
            if (!f0Var.d(context)) {
                f0Var.f();
            }
        }
    }

    boolean t(String str) {
        if (TextUtils.isEmpty(str)) {
            com.coloros.translate.utils.c0.i("AllOfflinePackage", "updateByJson json is null");
            return false;
        }
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("data");
            if (jSONArray == null) {
                return false;
            }
            r(jSONArray);
            return true;
        } catch (Exception unused) {
            com.coloros.translate.utils.c0.o("AllOfflinePackage", "updateByJson parseObject fail, json:" + str);
            return false;
        }
    }

    void u(Context context, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            t1.a aVar = (t1.a) it.next();
            f0 f0VarH = h(aVar.f15673r);
            if (f0VarH != null) {
                arrayList.add(f0VarH.f5038g);
                f0VarH.g(context, aVar, true);
            }
        }
        for (f0 f0Var : this.f5016c) {
            if (!arrayList.contains(f0Var.f5038g) && !f0Var.d(context)) {
                f0Var.f();
            }
        }
    }
}
