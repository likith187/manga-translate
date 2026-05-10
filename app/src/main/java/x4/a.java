package x4;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final TimeZone f16391a = TimeZone.getTimeZone("UTC");

    private static boolean a(String str, int i10, char c10) {
        return i10 < str.length() && str.charAt(i10) == c10;
    }

    private static int b(String str, int i10) {
        while (i10 < str.length()) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < '0' || cCharAt > '9') {
                return i10;
            }
            i10++;
        }
        return str.length();
    }

    public static Date c(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        int i10;
        int i11;
        int i12;
        int iD;
        int length;
        TimeZone timeZone;
        char cCharAt;
        try {
            int index = parsePosition.getIndex();
            int i13 = index + 4;
            int iD2 = d(str, index, i13);
            if (a(str, i13, '-')) {
                i13 = index + 5;
            }
            int i14 = i13 + 2;
            int iD3 = d(str, i13, i14);
            if (a(str, i14, '-')) {
                i14 = i13 + 3;
            }
            int i15 = i14 + 2;
            int iD4 = d(str, i14, i15);
            boolean zA = a(str, i15, 'T');
            if (!zA && str.length() <= i15) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(iD2, iD3 - 1, iD4);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i15);
                return gregorianCalendar.getTime();
            }
            if (zA) {
                int i16 = i14 + 5;
                int iD5 = d(str, i14 + 3, i16);
                if (a(str, i16, ':')) {
                    i16 = i14 + 6;
                }
                int i17 = i16 + 2;
                int iD6 = d(str, i16, i17);
                if (a(str, i17, ':')) {
                    i17 = i16 + 3;
                }
                if (str.length() <= i17 || (cCharAt = str.charAt(i17)) == 'Z' || cCharAt == '+' || cCharAt == '-') {
                    i11 = iD6;
                    i12 = 0;
                    iD = 0;
                    i15 = i17;
                    i10 = iD5;
                } else {
                    int i18 = i17 + 2;
                    iD = d(str, i17, i18);
                    if (iD > 59 && iD < 63) {
                        iD = 59;
                    }
                    if (a(str, i18, '.')) {
                        int i19 = i17 + 3;
                        int iB = b(str, i17 + 4);
                        int iMin = Math.min(iB, i17 + 6);
                        int iD7 = d(str, i19, iMin);
                        int i20 = iMin - i19;
                        if (i20 == 1) {
                            iD7 *= 100;
                        } else if (i20 == 2) {
                            iD7 *= 10;
                        }
                        i10 = iD5;
                        i15 = iB;
                        i11 = iD6;
                        i12 = iD7;
                    } else {
                        i10 = iD5;
                        i15 = i18;
                        i11 = iD6;
                        i12 = 0;
                    }
                }
            } else {
                i10 = 0;
                i11 = 0;
                i12 = 0;
                iD = 0;
            }
            if (str.length() <= i15) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char cCharAt2 = str.charAt(i15);
            if (cCharAt2 == 'Z') {
                timeZone = f16391a;
                length = i15 + 1;
            } else {
                if (cCharAt2 != '+' && cCharAt2 != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt2 + "'");
                }
                String strSubstring = str.substring(i15);
                if (strSubstring.length() < 5) {
                    strSubstring = strSubstring + "00";
                }
                length = i15 + strSubstring.length();
                if ("+0000".equals(strSubstring) || "+00:00".equals(strSubstring)) {
                    timeZone = f16391a;
                } else {
                    String str3 = "GMT" + strSubstring;
                    TimeZone timeZone2 = TimeZone.getTimeZone(str3);
                    String id = timeZone2.getID();
                    if (!id.equals(str3) && !id.replace(":", "").equals(str3)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone2.getID());
                    }
                    timeZone = timeZone2;
                }
            }
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
            gregorianCalendar2.setLenient(false);
            gregorianCalendar2.set(1, iD2);
            gregorianCalendar2.set(2, iD3 - 1);
            gregorianCalendar2.set(5, iD4);
            gregorianCalendar2.set(11, i10);
            gregorianCalendar2.set(12, i11);
            gregorianCalendar2.set(13, iD);
            gregorianCalendar2.set(14, i12);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException e10) {
            if (str == null) {
                str2 = null;
            } else {
                str2 = AbstractJsonLexerKt.STRING + str + AbstractJsonLexerKt.STRING;
            }
            String message = e10.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + e10.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e10);
            throw parseException;
        }
    }

    private static int d(String str, int i10, int i11) {
        int i12;
        int i13;
        if (i10 < 0 || i11 > str.length() || i10 > i11) {
            throw new NumberFormatException(str);
        }
        if (i10 < i11) {
            i13 = i10 + 1;
            int iDigit = Character.digit(str.charAt(i10), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = -iDigit;
        } else {
            i12 = 0;
            i13 = i10;
        }
        while (i13 < i11) {
            int i14 = i13 + 1;
            int iDigit2 = Character.digit(str.charAt(i13), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = (i12 * 10) - iDigit2;
            i13 = i14;
        }
        return -i12;
    }
}
