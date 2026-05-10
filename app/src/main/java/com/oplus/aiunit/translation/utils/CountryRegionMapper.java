package com.oplus.aiunit.translation.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import com.google.gson.d;
import com.google.gson.f;
import com.google.gson.i;
import com.google.gson.l;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.j0;
import kotlin.collections.o;
import kotlin.io.c;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.w;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"StaticFieldLeak"})
public final class CountryRegionMapper {
    private static final String MAPPING_FILE_NAME = "country_region_mapping.json";
    private static String[] latestCnCountries;
    private static String[] latestEuCountries;
    private static String[] latestInCountries;
    private static String[] latestNaCountries;
    private static String[] latestSgCountries;
    private static Context savedContext;
    public static final CountryRegionMapper INSTANCE = new CountryRegionMapper();
    private static final String[] DEFAULT_SG_COUNTRIES = {"AD", "AE", "AF", "AL", "AM", "AO", "APC", "AR", "AU", "AW", "AZ", "BB", "BD", "BF", "BH", "BI", "BJ", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CF", "CG", "CI", "CK", "CL", "CM", "CO", "CR", "CU", "CV", "DJ", "DM", "DZ", "EC", "EG", "EH", "ER", "ET", "FJ", "FM", "GA", "GD", "GE", "GH", "GM", "GN", "GQ", "GT", "GW", "GY", "HK", "HN", "HT", "ID", "IL", "IQ", "IR", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LK", "LR", "LS", "LY", "MA", "MC", "MD", "MG", "MK", "MM", "MN", "MR", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NE", "NG", "NI", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PG", "PH", "PK", "PR", "PS", "PW", "PY", "QA", "RU", "RW", "SA", "SB", "SC", "SD", "SG", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SY", "SZ", "TD", "TG", "TH", "TJ", "TL", "TM", "TN", "TO", "TT", "TV", "TW", "TZ", "UA", "UG", "UY", "UZ", "VA", "VE", "VN", "VU", "WS", "YE", "ZA", "ZM", "ZW"};
    private static final String[] DEFAULT_EU_COUNTRIES = {"AT", "BA", "BE", "BG", "CH", "CY", "CZ", "DE", "DK", "EE", "ES", "EUEX", "FI", "FR", "GB", "GR", "HR", "HU", "IE", "IS", "IT", "LI", "LT", "LU", "LV", "MT", "NL", "NO", "PL", "PT", "RO", "RS", "SE", "SI", "SK", "TR"};
    private static final String[] DEFAULT_IN_COUNTRIES = {"IN"};
    private static final String[] DEFAULT_CN_COUNTRIES = {"CN"};
    private static final String[] DEFAULT_NA_COUNTRIES = {"US"};

    public static final class Region {
        public static final String CN = "cn";
        public static final String EU = "eu";
        public static final String IN = "in";
        public static final Region INSTANCE = new Region();
        public static final String NA = "us";
        public static final String SG = "sg";

        private Region() {
        }
    }

    private CountryRegionMapper() {
    }

    private final void createMappingFile(File file) {
        try {
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            l lVar = new l();
            lVar.n(Region.CN, DEFAULT_CN_COUNTRIES[0]);
            lVar.n(Region.IN, DEFAULT_IN_COUNTRIES[0]);
            lVar.n(Region.NA, DEFAULT_NA_COUNTRIES[0]);
            d dVar = new d();
            lVar.m(Region.SG, dVar.B(DEFAULT_SG_COUNTRIES));
            lVar.m(Region.EU, dVar.B(DEFAULT_EU_COUNTRIES));
            FileWriter fileWriter = new FileWriter(file);
            try {
                dVar.y(lVar, fileWriter);
                h0 h0Var = h0.INSTANCE;
                c.a(fileWriter, null);
            } finally {
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void loadDefaultCountries() {
        latestSgCountries = DEFAULT_SG_COUNTRIES;
        latestEuCountries = DEFAULT_EU_COUNTRIES;
        latestInCountries = DEFAULT_IN_COUNTRIES;
        latestCnCountries = DEFAULT_CN_COUNTRIES;
        latestNaCountries = DEFAULT_NA_COUNTRIES;
    }

    private final void loadFromFile(File file) {
        try {
            d dVar = new d();
            FileReader fileReader = new FileReader(file);
            try {
                l lVar = (l) dVar.k(fileReader, l.class);
                i iVarP = lVar.p(Region.CN);
                if (iVarP != null) {
                    r.b(iVarP);
                    if (iVarP.l()) {
                        String strH = iVarP.h();
                        r.b(strH);
                        latestCnCountries = new String[]{strH};
                    }
                }
                i iVarP2 = lVar.p(Region.IN);
                if (iVarP2 != null) {
                    r.b(iVarP2);
                    if (iVarP2.l()) {
                        String strH2 = iVarP2.h();
                        r.b(strH2);
                        latestInCountries = new String[]{strH2};
                    }
                }
                i iVarP3 = lVar.p(Region.NA);
                if (iVarP3 != null) {
                    r.b(iVarP3);
                    if (iVarP3.l()) {
                        String strH3 = iVarP3.h();
                        r.b(strH3);
                        latestNaCountries = new String[]{strH3};
                    }
                }
                i iVarP4 = lVar.p(Region.SG);
                if (iVarP4 != null) {
                    r.b(iVarP4);
                    if (iVarP4.i()) {
                        f fVarD = iVarP4.d();
                        r.b(fVarD);
                        ArrayList arrayList = new ArrayList(o.r(fVarD, 10));
                        Iterator it = fVarD.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((i) it.next()).h());
                        }
                        latestSgCountries = (String[]) arrayList.toArray(new String[0]);
                    }
                }
                i iVarP5 = lVar.p(Region.EU);
                if (iVarP5 != null) {
                    r.b(iVarP5);
                    if (iVarP5.i()) {
                        f fVarD2 = iVarP5.d();
                        r.b(fVarD2);
                        ArrayList arrayList2 = new ArrayList(o.r(fVarD2, 10));
                        Iterator it2 = fVarD2.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(((i) it2.next()).h());
                        }
                        latestEuCountries = (String[]) arrayList2.toArray(new String[0]);
                    }
                    h0 h0Var = h0.INSTANCE;
                }
                c.a(fileReader, null);
            } finally {
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            loadDefaultCountries();
        }
    }

    private final boolean validateJsonFormat(l lVar) {
        return (lVar.r(Region.CN) && lVar.p(Region.CN).l()) && (lVar.r(Region.IN) && lVar.p(Region.IN).l()) && (lVar.r(Region.NA) && lVar.p(Region.NA).l()) && (lVar.r(Region.SG) && lVar.p(Region.SG).i()) && (lVar.r(Region.EU) && lVar.p(Region.EU).i());
    }

    public final Map<String, String[]> getAllRegionCountryMap() {
        return j0.k(w.a(Region.SG, getCountriesByRegion(Region.SG)), w.a(Region.EU, getCountriesByRegion(Region.EU)), w.a(Region.IN, getCountriesByRegion(Region.IN)), w.a(Region.CN, getCountriesByRegion(Region.CN)), w.a(Region.NA, getCountriesByRegion(Region.NA)));
    }

    public final String[] getCountriesByRegion(String region) {
        r.e(region, "region");
        int iHashCode = region.hashCode();
        if (iHashCode != 3179) {
            if (iHashCode != 3248) {
                if (iHashCode != 3365) {
                    if (iHashCode != 3668) {
                        if (iHashCode == 3742 && region.equals(Region.NA)) {
                            String[] strArr = latestNaCountries;
                            return strArr == null ? DEFAULT_NA_COUNTRIES : strArr;
                        }
                    } else if (region.equals(Region.SG)) {
                        String[] strArr2 = latestSgCountries;
                        return strArr2 == null ? DEFAULT_SG_COUNTRIES : strArr2;
                    }
                } else if (region.equals(Region.IN)) {
                    String[] strArr3 = latestInCountries;
                    return strArr3 == null ? DEFAULT_IN_COUNTRIES : strArr3;
                }
            } else if (region.equals(Region.EU)) {
                String[] strArr4 = latestEuCountries;
                return strArr4 == null ? DEFAULT_EU_COUNTRIES : strArr4;
            }
        } else if (region.equals(Region.CN)) {
            String[] strArr5 = latestCnCountries;
            return strArr5 == null ? DEFAULT_CN_COUNTRIES : strArr5;
        }
        return new String[0];
    }

    public final String getRegionByCountryCode(String countryCode) {
        r.e(countryCode, "countryCode");
        if (kotlin.collections.i.y(getCountriesByRegion(Region.SG), countryCode)) {
            return Region.SG;
        }
        if (kotlin.collections.i.y(getCountriesByRegion(Region.EU), countryCode)) {
            return Region.EU;
        }
        if (kotlin.collections.i.y(getCountriesByRegion(Region.IN), countryCode)) {
            return Region.IN;
        }
        if (kotlin.collections.i.y(getCountriesByRegion(Region.CN), countryCode)) {
            return Region.CN;
        }
        if (kotlin.collections.i.y(getCountriesByRegion(Region.NA), countryCode)) {
            return Region.NA;
        }
        return null;
    }

    public final void initialize(Context context) {
        File file;
        r.e(context, "context");
        savedContext = context.getApplicationContext();
        try {
            try {
                file = new File(context.getNoBackupFilesDir(), MAPPING_FILE_NAME);
            } catch (Exception e10) {
                e10.printStackTrace();
                file = null;
            }
        } catch (Exception unused) {
            file = new File(context.getFilesDir(), MAPPING_FILE_NAME);
        }
        if (file == null) {
            loadDefaultCountries();
        } else if (file.exists()) {
            loadFromFile(file);
        } else {
            createMappingFile(file);
            loadDefaultCountries();
        }
    }

    public final void updateFromFile(String sourceJsonFilePath) {
        File file;
        r.e(sourceJsonFilePath, "sourceJsonFilePath");
        Context context = savedContext;
        if (context == null) {
            return;
        }
        try {
            File file2 = new File(sourceJsonFilePath);
            if (!file2.exists()) {
                return;
            }
            d dVar = new d();
            FileReader fileReader = new FileReader(file2);
            try {
                Object objK = dVar.k(fileReader, l.class);
                r.d(objK, "fromJson(...)");
                h0 h0Var = h0.INSTANCE;
                c.a(fileReader, null);
                if (!validateJsonFormat((l) objK)) {
                    return;
                }
                try {
                    try {
                        file = new File(context.getNoBackupFilesDir(), MAPPING_FILE_NAME);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                } catch (Exception unused) {
                    file = new File(context.getFilesDir(), MAPPING_FILE_NAME);
                }
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileWriter fileWriter = new FileWriter(file);
                try {
                    dVar.y((i) objK, fileWriter);
                    h0 h0Var2 = h0.INSTANCE;
                    c.a(fileWriter, null);
                    loadFromFile(file);
                } finally {
                }
            } finally {
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
