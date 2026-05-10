package com.coui.appcompat.unitconversionutil;

import android.content.Context;
import android.util.Log;
import com.coui.appcompat.log.COUILog;
import com.support.appcompat.R$bool;
import com.support.appcompat.R$string;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class COUIUnitConversionUtils {
    private static final boolean COUI_DEBUG;
    private static final double HUNDRED = 100.0d;
    private static final double MILLION = 1000000.0d;
    private static final String NOPOINT = "0";
    private static final String ONEPOINT = "0.0";
    private static final float ONE_MILLION = 1.0E-7f;
    private static final double POINT_NINE_EIGHT = 0.98d;
    private static final String SIXPOINT = "0.00000";
    private static final double SPECIAL = 1024.0d;
    private static final int SQUARE_FIVE = 5;
    private static final int SQUARE_FOUR = 4;
    private static final int SQUARE_THREE = 3;
    private static final String TAG = "COUIUnitConversionUtils";
    private static final double TEN = 10.0d;
    private static final double THOUSAND = 1000.0d;
    private static final String TWOPOINT = "0.00";
    private String mByteShort;
    private String mByteSpeed;
    private Context mContext;
    private String mGigaByteShort;
    private String mGigaByteSpeed;
    private boolean mIfShowNormal;
    private String mKiloByteShort;
    private String mKiloByteSpeed;
    private String mMegaByteShort;
    private String mMegaByteSpeed;
    private String mMoreDownLoad;
    private String mMostDownLoad;
    private String mPetaByteShort;
    private String mPetaByteSpeed;
    private String mSpecialPoint;
    private String mTeraByteShort;
    private String mTeraByteSpeed;

    static {
        COUI_DEBUG = COUILog.LOG_DEBUG || COUILog.isLoggable(TAG, 3);
    }

    public COUIUnitConversionUtils(Context context) {
        this.mMoreDownLoad = null;
        this.mMostDownLoad = null;
        this.mSpecialPoint = "0.98";
        this.mContext = context;
        this.mIfShowNormal = context.getResources().getBoolean(R$bool.show_direction_normal);
        this.mMoreDownLoad = context.getResources().getString(R$string.more_time_download);
        this.mMostDownLoad = context.getResources().getString(R$string.most_time_download);
        this.mSpecialPoint = formatLocaleNumber(POINT_NINE_EIGHT, TWOPOINT);
        this.mByteShort = this.mContext.getResources().getString(R$string.byteShort);
        this.mKiloByteShort = this.mContext.getResources().getString(R$string.kilobyteShort);
        this.mMegaByteShort = this.mContext.getResources().getString(R$string.megabyteShort);
        this.mGigaByteShort = this.mContext.getResources().getString(R$string.gigabyteShort);
        this.mTeraByteShort = this.mContext.getResources().getString(R$string.terabyteShort);
        this.mPetaByteShort = this.mContext.getResources().getString(R$string.petabyteShort);
        this.mByteSpeed = this.mContext.getResources().getString(R$string.byteSpeed);
        this.mKiloByteSpeed = this.mContext.getResources().getString(R$string.kiloByteSpeed);
        this.mMegaByteSpeed = this.mContext.getResources().getString(R$string.megaByteSpeed);
        this.mGigaByteSpeed = this.mContext.getResources().getString(R$string.gigaByteSpeed);
        this.mTeraByteSpeed = this.mContext.getResources().getString(R$string.teraByteSpeed);
        this.mPetaByteSpeed = this.mContext.getResources().getString(R$string.petaByteSpeed);
    }

    private String formatLocaleNumber(double d10, String str) {
        return new DecimalFormat(str, new DecimalFormatSymbols(this.mContext.getResources().getConfiguration().locale)).format(d10);
    }

    private String formatNumber(double d10, String str, boolean z10) {
        DecimalFormat decimalFormat = new DecimalFormat(str, new DecimalFormatSymbols(Locale.CHINA));
        if (z10) {
            decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        } else {
            decimalFormat.setRoundingMode(RoundingMode.FLOOR);
        }
        return decimalFormat.format(d10);
    }

    private String getChineseDownloadValue(long j10) {
        if (0 <= j10 && j10 < 10000.0d) {
            if (j10 == 0) {
                j10++;
            }
            return j10 + " ";
        }
        double d10 = j10;
        if (10000.0d <= d10 && d10 < 100000.0d) {
            double dDoubleValue = Double.valueOf(formatNumber(d10 / 10000.0d, ONEPOINT, true)).doubleValue();
            int i10 = (int) dDoubleValue;
            if (dDoubleValue == i10) {
                return i10 + this.mMoreDownLoad;
            }
            return dDoubleValue + this.mMoreDownLoad;
        }
        if (100000.0d <= d10 && d10 < MILLION) {
            double dDoubleValue2 = Double.valueOf(formatNumber(d10 / 10000.0d, ONEPOINT, true)).doubleValue();
            int i11 = (int) dDoubleValue2;
            if (dDoubleValue2 == i11) {
                return i11 + this.mMoreDownLoad;
            }
            return dDoubleValue2 + this.mMoreDownLoad;
        }
        if (MILLION <= d10 && d10 < 1.0E7d) {
            return ((int) Double.valueOf(formatNumber(d10 / 10000.0d, TWOPOINT, true)).doubleValue()) + this.mMoreDownLoad;
        }
        if (1.0E7d <= d10 && d10 < 1.0E8d) {
            return ((int) Double.valueOf(formatNumber(d10 / 10000.0d, TWOPOINT, true)).doubleValue()) + this.mMoreDownLoad;
        }
        if (d10 < 1.0E8d) {
            throw new IllegalArgumentException("the value of the incoming is wrong");
        }
        return formatNumber(Double.valueOf(formatNumber(d10 / 1.0E8d, SIXPOINT, true)).doubleValue(), ONEPOINT, false) + this.mMostDownLoad;
    }

    private String getChineseStripValue(long j10) {
        if (0 <= j10 && j10 < 10000.0d) {
            return j10 + " ";
        }
        double d10 = j10;
        if (10000.0d > d10 || d10 >= MILLION) {
            if (MILLION > d10 || d10 >= 1.0E8d) {
                throw new IllegalArgumentException("the value of the incoming is wrong");
            }
            return formatNumber(d10 / 10000.0d, "0", true) + this.mMoreDownLoad;
        }
        double dDoubleValue = Double.valueOf(formatNumber(d10 / 10000.0d, ONEPOINT, true)).doubleValue();
        int i10 = (int) dDoubleValue;
        if (dDoubleValue == i10) {
            return i10 + this.mMoreDownLoad;
        }
        return dDoubleValue + this.mMoreDownLoad;
    }

    private String getEnglishDownloadValue(long j10) {
        if (0 <= j10 && j10 < 10000.0d) {
            if (j10 == 0) {
                j10++;
            }
            return j10 + " ";
        }
        double d10 = j10;
        if (10000.0d <= d10 && d10 < 100000.0d) {
            return ((int) (Double.valueOf(formatNumber(d10 / 10000.0d, ONEPOINT, true)).doubleValue() * TEN)) + this.mMoreDownLoad;
        }
        if (100000.0d <= d10 && d10 < MILLION) {
            return ((int) (Double.valueOf(formatNumber(d10 / 10000.0d, ONEPOINT, true)).doubleValue() * TEN)) + this.mMoreDownLoad;
        }
        if (MILLION <= d10 && d10 < 1.0E7d) {
            String number = formatNumber(d10 / 10000.0d, TWOPOINT, true);
            double dDoubleValue = Double.valueOf(number).doubleValue() / HUNDRED;
            int i10 = (int) dDoubleValue;
            if (Math.abs(dDoubleValue - ((double) i10)) < 1.0000000116860974E-7d) {
                return i10 + this.mMostDownLoad;
            }
            return Double.valueOf(number) + this.mMostDownLoad;
        }
        if (1.0E7d > d10 || d10 >= 1.0E8d) {
            if (d10 < 1.0E8d) {
                throw new IllegalArgumentException("the value of the incoming is wrong");
            }
            return ((int) (Double.valueOf(formatNumber(Double.valueOf(formatNumber(d10 / 1.0E8d, SIXPOINT, true)).doubleValue(), ONEPOINT, false)).doubleValue() * HUNDRED)) + this.mMostDownLoad;
        }
        String number2 = formatNumber(d10 / 10000.0d, TWOPOINT, true);
        double dDoubleValue2 = Double.valueOf(number2).doubleValue() / HUNDRED;
        int i11 = (int) dDoubleValue2;
        if (Math.abs(dDoubleValue2 - ((double) i11)) < 1.0000000116860974E-7d) {
            return i11 + this.mMostDownLoad;
        }
        return Double.valueOf(number2) + this.mMostDownLoad;
    }

    private String getEnglishStripValue(long j10) {
        if (0 <= j10 && j10 < 10000.0d) {
            return j10 + " ";
        }
        double d10 = j10;
        if (10000.0d <= d10 && d10 < MILLION) {
            return ((int) (Double.valueOf(formatNumber(d10 / 10000.0d, ONEPOINT, true)).doubleValue() * TEN)) + this.mMoreDownLoad;
        }
        if (MILLION > d10 || d10 >= 1.0E8d) {
            throw new IllegalArgumentException("the value of the incoming is wrong");
        }
        return ((int) (Double.valueOf(formatNumber(d10 / 10000.0d, "0", true)).doubleValue() * TEN)) + this.mMoreDownLoad;
    }

    private String getStringComposite(String str, String str2) {
        if (COUI_DEBUG) {
            Log.d(TAG, "getStringComposite content:" + str + ",unit:" + str + ",mIfShowNormal:" + this.mIfShowNormal);
        }
        if (this.mIfShowNormal) {
            return str + str2;
        }
        return str2 + " " + str;
    }

    private boolean isChinese() {
        String country = this.mContext.getResources().getConfiguration().locale.getCountry();
        if (country != null) {
            return country.equalsIgnoreCase("CN") || country.equalsIgnoreCase("TW") || country.equalsIgnoreCase("HK");
        }
        return false;
    }

    public String getDownLoadValue(long j10) throws IllegalArgumentException {
        return isChinese() ? getChineseDownloadValue(j10) : getEnglishDownloadValue(j10);
    }

    public String getSpeedValue(long j10) throws IllegalArgumentException {
        if (0 <= j10) {
            double d10 = j10;
            if (d10 < THOUSAND) {
                String number = formatNumber(d10, "0", true);
                long j11 = Long.parseLong(number);
                String localeNumber = formatLocaleNumber(Double.valueOf(number).doubleValue(), "0");
                double d11 = j11;
                if (THOUSAND <= d11 && d11 < SPECIAL) {
                    return getUnitValue(j11);
                }
                return localeNumber + this.mByteSpeed;
            }
        }
        double d12 = j10;
        if (THOUSAND <= d12 && d12 < 1024000.0d) {
            String number2 = formatNumber(d12 / SPECIAL, "0", true);
            long j12 = Long.parseLong(number2) * 1024;
            String localeNumber2 = formatLocaleNumber(Double.valueOf(number2).doubleValue(), "0");
            double d13 = j12;
            if (1024000.0d <= d13 && d13 < Math.pow(SPECIAL, 2.0d) * HUNDRED) {
                return getUnitValue(j12);
            }
            return localeNumber2 + this.mKiloByteSpeed;
        }
        if (1024000.0d <= d12 && d12 < Math.pow(SPECIAL, 2.0d) * HUNDRED) {
            String number3 = formatNumber(d12 / Math.pow(SPECIAL, 2.0d), ONEPOINT, true);
            long jDoubleValue = (long) (Double.valueOf(number3).doubleValue() * Math.pow(SPECIAL, 2.0d));
            String localeNumber3 = formatLocaleNumber(Double.valueOf(number3).doubleValue(), ONEPOINT);
            double d14 = jDoubleValue;
            if (Math.pow(SPECIAL, 2.0d) * HUNDRED <= d14 && d14 < Math.pow(SPECIAL, 2.0d) * THOUSAND) {
                return getUnitValue(jDoubleValue);
            }
            return localeNumber3 + this.mMegaByteSpeed;
        }
        if (Math.pow(SPECIAL, 2.0d) * HUNDRED <= d12 && d12 < Math.pow(SPECIAL, 2.0d) * THOUSAND) {
            String number4 = formatNumber(d12 / Math.pow(SPECIAL, 2.0d), "0", true);
            long jDoubleValue2 = (long) (Double.valueOf(number4).doubleValue() * Math.pow(SPECIAL, 2.0d));
            String localeNumber4 = formatLocaleNumber(Double.valueOf(number4).doubleValue(), "0");
            double d15 = jDoubleValue2;
            if (Math.pow(SPECIAL, 2.0d) * THOUSAND <= d15 && d15 < Math.pow(SPECIAL, 3.0d)) {
                return getUnitValue(jDoubleValue2);
            }
            return localeNumber4 + this.mMegaByteSpeed;
        }
        if (Math.pow(SPECIAL, 2.0d) * THOUSAND <= d12 && d12 < Math.pow(SPECIAL, 3.0d)) {
            if (d12 > Math.pow(SPECIAL, 2.0d) * 1023.0d) {
                return getUnitValue((long) Math.pow(SPECIAL, 3.0d));
            }
            return this.mSpecialPoint + this.mGigaByteSpeed;
        }
        if (Math.pow(SPECIAL, 3.0d) <= d12 && d12 < Math.pow(SPECIAL, 3.0d) * TEN) {
            String number5 = formatNumber(d12 / Math.pow(SPECIAL, 3.0d), TWOPOINT, true);
            long jDoubleValue3 = (long) (Double.valueOf(number5).doubleValue() * Math.pow(SPECIAL, 3.0d));
            String localeNumber5 = formatLocaleNumber(Double.valueOf(number5).doubleValue(), TWOPOINT);
            double d16 = jDoubleValue3;
            if (Math.pow(SPECIAL, 3.0d) * TEN <= d16 && d16 < Math.pow(SPECIAL, 3.0d) * HUNDRED) {
                return getUnitValue(jDoubleValue3);
            }
            return localeNumber5 + this.mGigaByteSpeed;
        }
        if (Math.pow(SPECIAL, 3.0d) * TEN <= d12 && d12 < Math.pow(SPECIAL, 3.0d) * HUNDRED) {
            String number6 = formatNumber(d12 / Math.pow(SPECIAL, 3.0d), ONEPOINT, true);
            long jDoubleValue4 = (long) (Double.valueOf(number6).doubleValue() * Math.pow(SPECIAL, 3.0d));
            String localeNumber6 = formatLocaleNumber(Double.valueOf(number6).doubleValue(), ONEPOINT);
            double d17 = jDoubleValue4;
            if (Math.pow(SPECIAL, 3.0d) * HUNDRED <= d17 && d17 < Math.pow(SPECIAL, 3.0d) * THOUSAND) {
                return getUnitValue(jDoubleValue4);
            }
            return localeNumber6 + this.mGigaByteSpeed;
        }
        if (Math.pow(SPECIAL, 3.0d) * HUNDRED <= d12 && d12 < Math.pow(SPECIAL, 3.0d) * THOUSAND) {
            String number7 = formatNumber(d12 / Math.pow(SPECIAL, 3.0d), "0", true);
            long jDoubleValue5 = (long) (Double.valueOf(number7).doubleValue() * Math.pow(SPECIAL, 3.0d));
            String localeNumber7 = formatLocaleNumber(Double.valueOf(number7).doubleValue(), "0");
            double d18 = jDoubleValue5;
            if (Math.pow(SPECIAL, 3.0d) * THOUSAND <= d18 && d18 < Math.pow(SPECIAL, 4.0d)) {
                return getUnitValue(jDoubleValue5);
            }
            return localeNumber7 + this.mGigaByteSpeed;
        }
        if (Math.pow(SPECIAL, 3.0d) * THOUSAND <= d12 && d12 < Math.pow(SPECIAL, 4.0d)) {
            if (d12 > Math.pow(SPECIAL, 3.0d) * 1023.0d) {
                return getUnitValue((long) Math.pow(SPECIAL, 4.0d));
            }
            return this.mSpecialPoint + this.mTeraByteSpeed;
        }
        if (Math.pow(SPECIAL, 4.0d) <= d12 && d12 < Math.pow(SPECIAL, 4.0d) * TEN) {
            String number8 = formatNumber(d12 / Math.pow(SPECIAL, 4.0d), TWOPOINT, true);
            long jDoubleValue6 = (long) (Double.valueOf(number8).doubleValue() * Math.pow(SPECIAL, 4.0d));
            String localeNumber8 = formatLocaleNumber(Double.valueOf(number8).doubleValue(), TWOPOINT);
            double d19 = jDoubleValue6;
            if (Math.pow(SPECIAL, 4.0d) * TEN <= d19 && d19 < Math.pow(SPECIAL, 4.0d) * HUNDRED) {
                return getUnitValue(jDoubleValue6);
            }
            return localeNumber8 + this.mTeraByteSpeed;
        }
        if (Math.pow(SPECIAL, 4.0d) * TEN <= d12 && d12 < Math.pow(SPECIAL, 4.0d) * HUNDRED) {
            String number9 = formatNumber(d12 / Math.pow(SPECIAL, 4.0d), ONEPOINT, true);
            long jDoubleValue7 = (long) (Double.valueOf(number9).doubleValue() * Math.pow(SPECIAL, 4.0d));
            String localeNumber9 = formatLocaleNumber(Double.valueOf(number9).doubleValue(), ONEPOINT);
            double d20 = jDoubleValue7;
            if (Math.pow(SPECIAL, 4.0d) * HUNDRED <= d20 && d20 < Math.pow(SPECIAL, 4.0d) * THOUSAND) {
                return getUnitValue(jDoubleValue7);
            }
            return localeNumber9 + this.mTeraByteSpeed;
        }
        if (Math.pow(SPECIAL, 4.0d) * HUNDRED <= d12 && d12 < Math.pow(SPECIAL, 4.0d) * THOUSAND) {
            String number10 = formatNumber(d12 / Math.pow(SPECIAL, 4.0d), "0", true);
            long jDoubleValue8 = (long) (Double.valueOf(number10).doubleValue() * Math.pow(SPECIAL, 4.0d));
            double d21 = jDoubleValue8;
            if (Math.pow(SPECIAL, 4.0d) * THOUSAND <= d21 && d21 < Math.pow(SPECIAL, 5.0d)) {
                return getUnitValue(jDoubleValue8);
            }
            return number10 + this.mTeraByteSpeed;
        }
        if (Math.pow(SPECIAL, 4.0d) * THOUSAND <= d12 && d12 < Math.pow(SPECIAL, 5.0d)) {
            if (d12 > Math.pow(SPECIAL, 4.0d) * 1023.0d) {
                return getUnitValue((long) Math.pow(SPECIAL, 5.0d));
            }
            return this.mSpecialPoint + this.mPetaByteSpeed;
        }
        if (Math.pow(SPECIAL, 5.0d) <= d12 && d12 < Math.pow(SPECIAL, 5.0d) * TEN) {
            String number11 = formatNumber(d12 / Math.pow(SPECIAL, 5.0d), TWOPOINT, true);
            long jDoubleValue9 = (long) (Double.valueOf(number11).doubleValue() * Math.pow(SPECIAL, 5.0d));
            String localeNumber10 = formatLocaleNumber(Double.valueOf(number11).doubleValue(), TWOPOINT);
            double d22 = jDoubleValue9;
            if (Math.pow(SPECIAL, 5.0d) * TEN <= d22 && d22 < Math.pow(SPECIAL, 5.0d) * HUNDRED) {
                return getUnitValue(jDoubleValue9);
            }
            return localeNumber10 + this.mPetaByteSpeed;
        }
        if (Math.pow(SPECIAL, 5.0d) * TEN > d12 || d12 >= Math.pow(SPECIAL, 5.0d) * HUNDRED) {
            if (Math.pow(SPECIAL, 5.0d) * HUNDRED > d12 || d12 >= Math.pow(SPECIAL, 5.0d) * THOUSAND) {
                throw new IllegalArgumentException("the value of the incoming is wrong");
            }
            return formatLocaleNumber(d12 / Math.pow(SPECIAL, 5.0d), "0") + this.mPetaByteSpeed;
        }
        String number12 = formatNumber(d12 / Math.pow(SPECIAL, 5.0d), ONEPOINT, true);
        long jDoubleValue10 = (long) (Double.valueOf(number12).doubleValue() * Math.pow(SPECIAL, 5.0d));
        String localeNumber11 = formatLocaleNumber(Double.valueOf(number12).doubleValue(), ONEPOINT);
        double d23 = jDoubleValue10;
        if (Math.pow(SPECIAL, 5.0d) * HUNDRED <= d23 && d23 < Math.pow(SPECIAL, 5.0d) * THOUSAND) {
            return getUnitValue(jDoubleValue10);
        }
        return localeNumber11 + this.mPetaByteSpeed;
    }

    public String getStripValue(long j10) throws IllegalArgumentException {
        return isChinese() ? getChineseStripValue(j10) : getEnglishStripValue(j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x034b A[PHI: r8
      0x034b: PHI (r8v7 double) = (r8v6 double), (r8v24 double) binds: [B:99:0x02f0, B:112:0x0349] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0289  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getTransformUnitValue(long r27, double r29) throws java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instruction units count: 1487
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.unitconversionutil.COUIUnitConversionUtils.getTransformUnitValue(long, double):java.lang.String");
    }

    public String getUnitThousandValue(long j10) {
        return getTransformUnitValue(j10, THOUSAND);
    }

    public String getUnitValue(long j10) {
        return getTransformUnitValue(j10, SPECIAL);
    }

    public String getDownLoadValue(long j10, Locale locale) throws IllegalArgumentException {
        String country = locale != null ? locale.getCountry() : null;
        if (country != null && (country.equalsIgnoreCase("CN") || country.equalsIgnoreCase("TW") || country.equalsIgnoreCase("HK"))) {
            return getChineseDownloadValue(j10);
        }
        if (country != null) {
            return getEnglishDownloadValue(j10);
        }
        return null;
    }

    public String getStripValue(long j10, Locale locale) throws IllegalArgumentException {
        String country = locale != null ? locale.getCountry() : null;
        if (country != null && (country.equalsIgnoreCase("CN") || country.equalsIgnoreCase("TW") || country.equalsIgnoreCase("HK"))) {
            return getChineseStripValue(j10);
        }
        if (country != null) {
            return getEnglishStripValue(j10);
        }
        return null;
    }
}
