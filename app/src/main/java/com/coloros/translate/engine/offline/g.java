package com.coloros.translate.engine.offline;

import android.content.Context;
import com.coloros.translate.utils.l0;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public enum g {
    CE("apps_translate_res_ce", 49167360, R$string.translate_between_chinese_and_english_os15, "zhen", "enzh"),
    CJ("apps_translate_res_cj", 63267840, R$string.translate_between_chinese_and_japan_os15, "zhja", "jazh"),
    CK("apps_translate_res_ck", 85811200, R$string.translate_between_chinese_and_korean_os15, "zhko", "kozh"),
    CI("apps_translate_res_ci", 188491168, R$string.translate_between_chinese_and_italian_os15, "zhit", "itzh"),
    CF("apps_translate_res_cf", 46781440, R$string.translate_between_chinese_and_french_os15, "zhfr", "frzh"),
    CG("apps_translate_res_cg", 188199914, R$string.translate_between_chinese_and_german_os15, "zhde", "dezh"),
    CS("apps_translate_res_cs", 47842304, R$string.translate_between_chinese_and_spanish_os15, "zhes", "eszh"),
    CV("apps_translate_res_cv", 48631808, R$string.translate_between_chinese_and_vietnam_os15, "zhvi", "vizh"),
    EH("apps_translate_res_eh", 48851968, R$string.translate_between_english_and_indian_os15, "enhi", "hien"),
    EV("apps_translate_res_ev", 48851968, R$string.translate_between_english_and_vietnam_os15, "envi", "vien"),
    ET("apps_translate_res_et", 48851968, R$string.translate_between_english_and_thai_os15, "enth", "then"),
    ES("apps_translate_res_es", 48851968, R$string.translate_between_english_and_spanish_os15, "enes", "esen"),
    EI("apps_translate_res_ei", 48851968, R$string.translate_between_english_and_indonesian_os15, "enid", "iden");

    private static final Set<String> ADAPTER_LANGUAGE_CODE_LIST = new HashSet();
    private static final ArrayList<String> ALL_LANGUAGE_CODE_LIST = new ArrayList<>();
    private static final String TAG = "LanguagePackage";
    private final String mBusiness;
    private final long mDefaultSize;
    private final String mModel1;
    private final String mModel2;
    private final int mResId;

    g(String str, long j10, int i10, String str2, String str3) {
        this.mBusiness = str;
        this.mDefaultSize = j10;
        this.mResId = i10;
        this.mModel1 = str2;
        this.mModel2 = str3;
    }

    public static List<String> coverToBusinessIdList(List<String> list) {
        ArrayList arrayList = new ArrayList();
        com.coloros.translate.utils.c0.i(TAG, "onlineConfigList:" + list);
        g gVar = CE;
        if (list.contains(gVar.mModel1) || list.contains(gVar.mModel2)) {
            arrayList.add(gVar.mBusiness);
        }
        g gVar2 = CJ;
        if (list.contains(gVar2.mModel1) || list.contains(gVar2.mModel2)) {
            arrayList.add(gVar2.mBusiness);
        }
        g gVar3 = CK;
        if (list.contains(gVar3.mModel1) || list.contains(gVar3.mModel2)) {
            arrayList.add(gVar3.mBusiness);
        }
        g gVar4 = CF;
        if (list.contains(gVar4.mModel1) || list.contains(gVar4.mModel2)) {
            arrayList.add(gVar4.mBusiness);
        }
        g gVar5 = CS;
        if (list.contains(gVar5.mModel1) || list.contains(gVar5.mModel2)) {
            arrayList.add(gVar5.mBusiness);
        }
        g gVar6 = CV;
        if (list.contains(gVar6.mModel1) || list.contains(gVar6.mModel2)) {
            arrayList.add(gVar6.mBusiness);
        }
        g gVar7 = CI;
        if (list.contains(gVar7.mModel1) || list.contains(gVar7.mModel2)) {
            arrayList.add(gVar7.mBusiness);
        }
        g gVar8 = CG;
        if (list.contains(gVar8.mModel1) || list.contains(gVar8.mModel2)) {
            arrayList.add(gVar8.mBusiness);
        }
        g gVar9 = EH;
        if (list.contains(gVar9.mModel1) || list.contains(gVar9.mModel2)) {
            arrayList.add(gVar9.mBusiness);
        }
        g gVar10 = EV;
        if (list.contains(gVar10.mModel1) || list.contains(gVar10.mModel2)) {
            arrayList.add(gVar10.mBusiness);
        }
        g gVar11 = ET;
        if (list.contains(gVar11.mModel1) || list.contains(gVar11.mModel2)) {
            arrayList.add(gVar11.mBusiness);
        }
        g gVar12 = ES;
        if (list.contains(gVar12.mModel1) || list.contains(gVar12.mModel2)) {
            arrayList.add(gVar12.mBusiness);
        }
        g gVar13 = EI;
        if (list.contains(gVar13.mModel1) || list.contains(gVar13.mModel2)) {
            arrayList.add(gVar13.mBusiness);
        }
        return arrayList;
    }

    public static List<f0> generateDefaultPackageList(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(generatePackage(context, CE));
        arrayList.add(generatePackage(context, CJ));
        arrayList.add(generatePackage(context, CK));
        arrayList.add(generatePackage(context, CF));
        arrayList.add(generatePackage(context, CS));
        arrayList.add(generatePackage(context, CV));
        arrayList.add(generatePackage(context, CI));
        arrayList.add(generatePackage(context, CG));
        arrayList.add(generatePackage(context, EH));
        arrayList.add(generatePackage(context, EV));
        arrayList.add(generatePackage(context, ET));
        arrayList.add(generatePackage(context, ES));
        arrayList.add(generatePackage(context, EI));
        return arrayList;
    }

    private static f0 generatePackage(Context context, g gVar) {
        boolean zExistsNativeFile = gVar.existsNativeFile(context);
        l0.a aVar = com.coloros.translate.utils.l0.f7130a;
        int iD = aVar.d(context, gVar.mBusiness);
        return new f0(gVar.mBusiness, false, gVar.mResId, aVar.c(context, gVar.mBusiness), zExistsNativeFile, iD);
    }

    public static Set<String> getAdaptLanguageCode() {
        Set<String> set = ADAPTER_LANGUAGE_CODE_LIST;
        if (set.isEmpty()) {
            set.add(CE.mBusiness);
            set.add(CJ.mBusiness);
            set.add(CK.mBusiness);
            set.add(CI.mBusiness);
            set.add(CF.mBusiness);
            set.add(CG.mBusiness);
            set.add(CS.mBusiness);
            set.add(CV.mBusiness);
            set.add(EH.mBusiness);
            set.add(EV.mBusiness);
            set.add(ET.mBusiness);
            set.add(ES.mBusiness);
            set.add(EI.mBusiness);
        }
        return set;
    }

    public static ArrayList<String> getAllLanguageCode() {
        ArrayList<String> arrayList = ALL_LANGUAGE_CODE_LIST;
        if (arrayList.isEmpty()) {
            arrayList.add(CE.mBusiness);
            arrayList.add(CJ.mBusiness);
            arrayList.add(CK.mBusiness);
            arrayList.add(CI.mBusiness);
            arrayList.add(CF.mBusiness);
            arrayList.add(CS.mBusiness);
            arrayList.add(CV.mBusiness);
            arrayList.add(CG.mBusiness);
            arrayList.add(EH.mBusiness);
            arrayList.add(EV.mBusiness);
            arrayList.add(ET.mBusiness);
            arrayList.add(ES.mBusiness);
            arrayList.add(EI.mBusiness);
        }
        return arrayList;
    }

    public static String getCELanguageCode() {
        return CE.mBusiness;
    }

    public static String getCFLanguageCode() {
        return CF.mBusiness;
    }

    public static String getCGLanguageCode() {
        return CG.mBusiness;
    }

    public static String getCILanguageCode() {
        return CI.mBusiness;
    }

    public static String getCJLanguageCode() {
        return CJ.mBusiness;
    }

    public static String getCKLanguageCode() {
        return CK.mBusiness;
    }

    public static String getCSLanguageCode() {
        return CS.mBusiness;
    }

    public static String getCVLanguageCode() {
        return CV.mBusiness;
    }

    public static String getEHLanguageCode() {
        return EH.mBusiness;
    }

    public static String getEILanguageCode() {
        return EI.mBusiness;
    }

    public static String getESLanguageCode() {
        return ES.mBusiness;
    }

    public static String getETLanguageCode() {
        return ET.mBusiness;
    }

    public static String getEVLanguageCode() {
        return EV.mBusiness;
    }

    public static g getLanguagePackage(String str) {
        g gVar = CK;
        if (gVar.mBusiness.equals(str)) {
            return gVar;
        }
        g gVar2 = CJ;
        if (gVar2.mBusiness.equals(str)) {
            return gVar2;
        }
        g gVar3 = CE;
        if (gVar3.mBusiness.equals(str)) {
            return gVar3;
        }
        g gVar4 = CS;
        if (gVar4.mBusiness.equals(str)) {
            return gVar4;
        }
        g gVar5 = CV;
        if (gVar5.mBusiness.equals(str)) {
            return gVar5;
        }
        g gVar6 = CF;
        if (gVar6.mBusiness.equals(str)) {
            return gVar6;
        }
        g gVar7 = CI;
        if (gVar7.mBusiness.equals(str)) {
            return gVar7;
        }
        g gVar8 = CG;
        if (gVar8.mBusiness.equals(str)) {
            return gVar8;
        }
        g gVar9 = EH;
        if (gVar9.mBusiness.equals(str)) {
            return gVar9;
        }
        g gVar10 = EV;
        if (gVar10.mBusiness.equals(str)) {
            return gVar10;
        }
        g gVar11 = ET;
        if (gVar11.mBusiness.equals(str)) {
            return gVar11;
        }
        g gVar12 = ES;
        if (gVar12.mBusiness.equals(str)) {
            return gVar12;
        }
        g gVar13 = EI;
        if (gVar13.mBusiness.equals(str)) {
            return gVar13;
        }
        return null;
    }

    public static int getLanguageResIdByModel(String str, String str2) {
        for (g gVar : values()) {
            if (gVar.mModel1.equals(str) || gVar.mModel2.equals(str2)) {
                return gVar.mResId;
            }
        }
        return 0;
    }

    public static long getModelSize(String str) {
        g gVar = CK;
        if (gVar.mBusiness.equals(str)) {
            return gVar.mDefaultSize;
        }
        g gVar2 = CJ;
        if (gVar2.mBusiness.equals(str)) {
            return gVar2.mDefaultSize;
        }
        g gVar3 = CE;
        if (gVar3.mBusiness.equals(str)) {
            return gVar3.mDefaultSize;
        }
        g gVar4 = CS;
        if (gVar4.mBusiness.equals(str)) {
            return gVar4.mDefaultSize;
        }
        g gVar5 = CV;
        if (gVar5.mBusiness.equals(str)) {
            return gVar5.mDefaultSize;
        }
        g gVar6 = EH;
        if (gVar6.mBusiness.equals(str)) {
            return gVar6.mDefaultSize;
        }
        g gVar7 = CF;
        if (gVar7.mBusiness.equals(str)) {
            return gVar7.mDefaultSize;
        }
        g gVar8 = CI;
        if (gVar8.mBusiness.equals(str)) {
            return gVar8.mDefaultSize;
        }
        g gVar9 = CG;
        if (gVar9.mBusiness.equals(str)) {
            return gVar9.mDefaultSize;
        }
        return 0L;
    }

    public void deleteNativeFile(Context context) {
        String strB = h0.b();
        File file = new File(strB + this.mModel1);
        if (file.exists()) {
            com.coloros.translate.utils.y.b(file);
        }
        File file2 = new File(strB + File.separator + this.mModel2);
        if (file2.exists()) {
            com.coloros.translate.utils.y.b(file2);
        }
    }

    public boolean existsNativeFile(Context context) {
        String strB = h0.b();
        File file = new File(strB + this.mModel1);
        if (!file.exists()) {
            com.coloros.translate.utils.c0.i(TAG, "existsNativeFile false:" + file);
            return false;
        }
        File file2 = new File(strB + File.separator + this.mModel2);
        if (file2.exists()) {
            return true;
        }
        com.coloros.translate.utils.c0.i(TAG, "existsNativeFile false:" + file2);
        return false;
    }
}
