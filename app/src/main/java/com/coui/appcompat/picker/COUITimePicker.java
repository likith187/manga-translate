package com.coui.appcompat.picker;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.picker.COUINumberPicker;
import com.oplus.aiunit.core.utils.AuthUtil;
import com.support.picker.R$array;
import com.support.picker.R$attr;
import com.support.picker.R$dimen;
import com.support.picker.R$id;
import com.support.picker.R$layout;
import com.support.picker.R$string;
import com.support.picker.R$style;
import com.support.picker.R$styleable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class COUITimePicker extends FrameLayout {
    private static final int HOURS_OF_A_DAY = 23;
    private static final int HOURS_OF_HALF_DAY = 12;
    private static final int LEAPYEAR_STEP_FOUR = 4;
    private static final int LEAPYEAR_STEP_FOUR_HUN = 400;
    private static final int LEAPYEAR_STEP_HUN = 100;
    private static final long MILLISECOND_A_DAY = 86400000;
    private static final int MINUTES_OF_A_HOUR = 59;
    private static final int MINUTES_STEP = 5;
    private static final int MIN_BACKGROUND_DIVIDER_HEIGHT = 1;
    private static final int START_YEAR = 1900;
    private static final String TAG = "COUITimePicker";
    private static final int TOTAL_YEAR = 100;
    private static final int YEAR_AMOUNT_LEAP = 366;
    private static final int YEAR_AMOUNT_NOT_LEAP = 365;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Format f7292f;
    private int mAmPm;
    private int mBackgroundDividerHeight;
    private int mBackgroundLeft;
    private int mBackgroundRadius;
    private Calendar mCalendar;
    private Context mContext;
    private String[] mDateNamesTemp;
    private Calendar mDefaultCalendar;
    private Date mEndDate;
    private boolean mIsMinuteFiveStep;
    int mLeftPickerPosition;
    private int mMaxWidth;
    private OnTimeChangeListener mOnTimeChangeListener;
    private SimpleDateFormat mOutformatter;
    private COUINumberPicker mPickerAmPm;
    private COUINumberPicker mPickerDate;
    private COUINumberPicker mPickerHour;
    private LinearLayout mPickerLayout;
    private COUINumberPicker mPickerMinute;
    int mRightPickerPosition;
    private long mStartTime;
    private String[] mTextAMPM;
    private String[] mTextDates;
    private String mTextDay;
    private String mTextToday;
    private Calendar mTodayCalendar;
    private int mTodayDate;
    private int mTodayIndex;
    private int mTodayMonth;
    private int mTodayYear;
    private String selectedDateUtterance;

    class Format implements COUINumberPicker.Formatter {
        Format() {
        }

        @Override // com.coui.appcompat.picker.COUINumberPicker.Formatter
        public String format(int i10) {
            int i11 = i10 - 1;
            COUITimePicker.this.mDateNamesTemp[i11] = COUITimePicker.this.getDateYMDW(i10);
            if (i10 == COUITimePicker.this.mTodayIndex) {
                COUITimePicker.this.mTextDates[i11] = COUITimePicker.this.mTextToday;
                return COUITimePicker.this.mTextDates[i11];
            }
            if (!Locale.getDefault().getLanguage().equals("zh")) {
                return DateUtils.formatDateTime(COUITimePicker.this.getContext(), COUITimePicker.this.mEndDate.getTime(), 524314);
            }
            return new SimpleDateFormat("MMMdd" + COUITimePicker.this.mTextDay + " E", Locale.getDefault()).format(Long.valueOf(COUITimePicker.this.mEndDate.getTime()));
        }
    }

    public interface OnTimeChangeListener {
        void onTimeChange(View view, Calendar calendar);
    }

    public COUITimePicker(Context context) {
        this(context, null);
    }

    private String deduplicate(String str) {
        String strValueOf = String.valueOf(str.charAt(0));
        for (int i10 = 1; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt != str.charAt(i10 - 1)) {
                strValueOf = strValueOf + cCharAt;
            }
        }
        return strValueOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Date getDateFromValue(int i10) {
        try {
            return this.mOutformatter.parse(this.mDateNamesTemp[i10 - 1]);
        } catch (ParseException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getDateYMDW(int i10) {
        this.mEndDate.setTime(this.mStartTime + (((long) i10) * MILLISECOND_A_DAY));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(this.mEndDate);
        if (isToday(calendar.get(1), calendar.get(2), calendar.get(5))) {
            this.mTodayIndex = i10;
        } else {
            this.mTodayIndex = -1;
        }
        return this.mOutformatter.format(Long.valueOf(this.mEndDate.getTime()));
    }

    private int getDaysAmountOfYear(int i10) {
        return isLeapYear(i10) ? YEAR_AMOUNT_LEAP : YEAR_AMOUNT_NOT_LEAP;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean is24Hours() {
        String string = Settings.System.getString(this.mContext.getContentResolver(), "time_12_24");
        return string != null && string.equals("24");
    }

    private boolean isLeapYear(int i10) {
        return (i10 % 4 == 0 && i10 % 100 != 0) || i10 % 400 == 0;
    }

    private boolean isToday(int i10, int i11, int i12) {
        return i10 == this.mTodayYear && i11 == this.mTodayMonth && i12 == this.mTodayDate;
    }

    private void measureChildConstrained(View view, int i10, int i11, float f10) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (f10 < 1.0f) {
            marginLayoutParams.width = (int) (marginLayoutParams.width * f10);
        }
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void reorderSpinners() {
        /*
            r9 = this;
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.String r1 = "yyyyMMMddhm"
            java.lang.String r0 = android.text.format.DateFormat.getBestDateTimePattern(r0, r1)
            java.lang.String r0 = r9.deduplicate(r0)
            com.coui.appcompat.picker.COUINumberPicker r1 = r9.mPickerDate
            android.view.ViewParent r1 = r1.getParent()
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            r1.removeAllViews()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r3 = 0
            r4 = r3
        L20:
            int r5 = r0.length()
            if (r3 >= r5) goto Lb3
            char r5 = r0.charAt(r3)
            r6 = 75
            r7 = 1
            if (r5 == r6) goto L6c
            r6 = 77
            if (r5 == r6) goto L5e
            r6 = 97
            if (r5 == r6) goto L53
            r6 = 100
            if (r5 == r6) goto L5e
            r6 = 104(0x68, float:1.46E-43)
            if (r5 == r6) goto L6c
            r6 = 109(0x6d, float:1.53E-43)
            if (r5 == r6) goto L48
            r6 = 121(0x79, float:1.7E-43)
            if (r5 == r6) goto L5e
            goto L76
        L48:
            com.coui.appcompat.picker.COUINumberPicker r5 = r9.mPickerMinute
            r1.addView(r5)
            java.lang.String r5 = "m"
            r2.add(r5)
            goto L76
        L53:
            com.coui.appcompat.picker.COUINumberPicker r5 = r9.mPickerAmPm
            r1.addView(r5)
            java.lang.String r5 = "a"
            r2.add(r5)
            goto L76
        L5e:
            if (r4 != 0) goto L76
            com.coui.appcompat.picker.COUINumberPicker r4 = r9.mPickerDate
            r1.addView(r4)
            java.lang.String r4 = "D"
            r2.add(r4)
            r4 = r7
            goto L76
        L6c:
            com.coui.appcompat.picker.COUINumberPicker r5 = r9.mPickerHour
            r1.addView(r5)
            java.lang.String r5 = "h"
            r2.add(r5)
        L76:
            boolean r5 = r9.is24Hours()
            r6 = -1
            if (r5 != 0) goto L90
            int r5 = r9.mLeftPickerPosition
            if (r5 != r6) goto L88
            int r5 = r1.getChildCount()
            int r5 = r5 - r7
            r9.mLeftPickerPosition = r5
        L88:
            int r5 = r1.getChildCount()
            int r5 = r5 - r7
            r9.mRightPickerPosition = r5
            goto Laf
        L90:
            int r5 = r1.getChildCount()
            int r5 = r5 - r7
            android.view.View r5 = r1.getChildAt(r5)
            com.coui.appcompat.picker.COUINumberPicker r8 = r9.mPickerAmPm
            if (r5 == r8) goto Laf
            int r5 = r9.mLeftPickerPosition
            if (r5 != r6) goto La8
            int r5 = r1.getChildCount()
            int r5 = r5 - r7
            r9.mLeftPickerPosition = r5
        La8:
            int r5 = r1.getChildCount()
            int r5 = r5 - r7
            r9.mRightPickerPosition = r5
        Laf:
            int r3 = r3 + 1
            goto L20
        Lb3:
            boolean r0 = r9.isLayoutRtl()
            if (r0 == 0) goto Lc1
            int r0 = r9.mLeftPickerPosition
            int r1 = r9.mRightPickerPosition
            r9.mLeftPickerPosition = r1
            r9.mRightPickerPosition = r0
        Lc1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.picker.COUITimePicker.reorderSpinners():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void reorderUtterance() {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.picker.COUITimePicker.reorderUtterance():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (!is24Hours()) {
            this.mBackgroundLeft = 0;
        }
        Paint paint = new Paint();
        paint.setColor(this.mPickerDate.getBackgroundColor());
        canvas.drawRect(this.mBackgroundLeft, (int) ((getHeight() / 2.0f) - this.mBackgroundRadius), getWidth() - this.mBackgroundLeft, r1 + this.mBackgroundDividerHeight, paint);
        canvas.drawRect(this.mBackgroundLeft, (int) ((getHeight() / 2.0f) + this.mBackgroundRadius), getWidth() - this.mBackgroundLeft, r1 + this.mBackgroundDividerHeight, paint);
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public COUINumberPicker getPickerAmPm() {
        return this.mPickerAmPm;
    }

    public COUINumberPicker getPickerDate() {
        return this.mPickerDate;
    }

    public COUINumberPicker getPickerHour() {
        return this.mPickerHour;
    }

    public COUINumberPicker getPickerMinute() {
        return this.mPickerMinute;
    }

    public View getTimePicker() {
        int i10;
        StringBuilder sb;
        Calendar calendar = this.mDefaultCalendar;
        if (calendar != null) {
            i10 = calendar.get(1);
        } else {
            calendar = this.mTodayCalendar;
            i10 = calendar.get(1);
        }
        int i11 = i10;
        int i12 = calendar.get(2);
        int i13 = i12 + 1;
        int i14 = calendar.get(5);
        int i15 = calendar.get(11);
        int i16 = calendar.get(9);
        int i17 = calendar.get(12);
        this.mCalendar.setTimeZone(calendar.getTimeZone());
        this.mOutformatter.setTimeZone(calendar.getTimeZone());
        this.mCalendar.set(i11, i12, i14, i15, i17);
        int daysAmountOfYear = 36500;
        for (int i18 = 0; i18 < 100; i18++) {
            daysAmountOfYear += getDaysAmountOfYear((i11 - 50) + i18);
        }
        int daysAmountOfYear2 = 0;
        for (int i19 = 0; i19 < 50; i19++) {
            daysAmountOfYear2 += getDaysAmountOfYear((i11 - 50) + i19);
        }
        String[] strArr = new String[daysAmountOfYear];
        this.mTextDates = strArr;
        this.mDateNamesTemp = (String[]) strArr.clone();
        if (i13 > 2 && !isLeapYear(i11 - 50) && isLeapYear(i11)) {
            daysAmountOfYear2++;
        }
        if (i13 > 2 && isLeapYear(i11 - 50)) {
            daysAmountOfYear2--;
        }
        int i20 = daysAmountOfYear2;
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeZone(calendar.getTimeZone());
        int i21 = daysAmountOfYear;
        calendar2.set(i11, i12, i14, i15, i17);
        if (isLeapYear(i11) && i13 == 2 && i14 == 29) {
            calendar2.add(5, 1);
        }
        calendar2.add(1, -50);
        this.mStartTime = calendar2.getTimeInMillis();
        this.mEndDate = new Date();
        if (is24Hours()) {
            this.mPickerHour.setMaxValue(HOURS_OF_A_DAY);
            this.mPickerHour.setMinValue(0);
            this.mPickerHour.setTwoDigitFormatter();
            this.mPickerAmPm.setVisibility(8);
        } else {
            this.mPickerHour.setMaxValue(12);
            this.mPickerHour.setMinValue(1);
            this.mPickerAmPm.setMaxValue(this.mTextAMPM.length - 1);
            this.mPickerAmPm.setMinValue(0);
            this.mPickerAmPm.setDisplayedValues(this.mTextAMPM);
            this.mPickerAmPm.setVisibility(0);
            this.mPickerAmPm.setWrapSelectorWheel(false);
        }
        this.mPickerHour.setWrapSelectorWheel(true);
        if (is24Hours()) {
            this.mPickerHour.setValue(i15);
        } else {
            if (i16 > 0) {
                this.mPickerHour.setValue(i15 - 12);
            } else {
                this.mPickerHour.setValue(i15);
            }
            this.mPickerAmPm.setValue(i16);
            this.mAmPm = i16;
        }
        this.mPickerAmPm.setOnValueChangedListener(new COUINumberPicker.OnValueChangeListener() { // from class: com.coui.appcompat.picker.COUITimePicker.1
            @Override // com.coui.appcompat.picker.COUINumberPicker.OnValueChangeListener
            public void onValueChange(COUINumberPicker cOUINumberPicker, int i22, int i23) {
                COUITimePicker.this.mAmPm = cOUINumberPicker.getValue();
                COUITimePicker.this.mCalendar.set(9, cOUINumberPicker.getValue());
                if (COUITimePicker.this.mOnTimeChangeListener != null) {
                    OnTimeChangeListener onTimeChangeListener = COUITimePicker.this.mOnTimeChangeListener;
                    COUITimePicker cOUITimePicker = COUITimePicker.this;
                    onTimeChangeListener.onTimeChange(cOUITimePicker, cOUITimePicker.mCalendar);
                }
            }
        });
        this.mPickerAmPm.setOnScrollingStopListener(new COUINumberPicker.OnScrollingStopListener() { // from class: com.coui.appcompat.picker.COUITimePicker.2
            @Override // com.coui.appcompat.picker.COUINumberPicker.OnScrollingStopListener
            public void onScrollingStop() {
                COUITimePicker.this.sendAccessibilityEvent(4);
            }
        });
        this.mPickerHour.setOnValueChangedListener(new COUINumberPicker.OnValueChangeListener() { // from class: com.coui.appcompat.picker.COUITimePicker.3
            @Override // com.coui.appcompat.picker.COUINumberPicker.OnValueChangeListener
            public void onValueChange(COUINumberPicker cOUINumberPicker, int i22, int i23) {
                if (COUITimePicker.this.is24Hours() || COUITimePicker.this.mAmPm == 0) {
                    COUITimePicker.this.mCalendar.set(11, cOUINumberPicker.getValue());
                } else if (COUITimePicker.this.mAmPm == 1) {
                    if (cOUINumberPicker.getValue() != 12) {
                        COUITimePicker.this.mCalendar.set(11, cOUINumberPicker.getValue() + 12);
                    } else {
                        COUITimePicker.this.mCalendar.set(11, 0);
                    }
                }
                if (!COUITimePicker.this.is24Hours() && cOUINumberPicker.getValue() == 12) {
                    COUITimePicker cOUITimePicker = COUITimePicker.this;
                    cOUITimePicker.mAmPm = 1 - cOUITimePicker.mAmPm;
                    COUITimePicker.this.mPickerAmPm.setValue(COUITimePicker.this.mAmPm);
                }
                if (COUITimePicker.this.mOnTimeChangeListener != null) {
                    OnTimeChangeListener onTimeChangeListener = COUITimePicker.this.mOnTimeChangeListener;
                    COUITimePicker cOUITimePicker2 = COUITimePicker.this;
                    onTimeChangeListener.onTimeChange(cOUITimePicker2, cOUITimePicker2.mCalendar);
                }
            }
        });
        this.mPickerHour.setOnScrollingStopListener(new COUINumberPicker.OnScrollingStopListener() { // from class: com.coui.appcompat.picker.COUITimePicker.4
            @Override // com.coui.appcompat.picker.COUINumberPicker.OnScrollingStopListener
            public void onScrollingStop() {
                COUITimePicker.this.sendAccessibilityEvent(4);
            }
        });
        this.mPickerMinute.setMinValue(0);
        if (this.mIsMinuteFiveStep) {
            this.mPickerMinute.setMinValue(0);
            this.mPickerMinute.setMaxValue(11);
            String[] strArr2 = new String[12];
            int i22 = 0;
            for (int i23 = 12; i22 < i23; i23 = 12) {
                int i24 = i22 * 5;
                if (i24 < 10) {
                    sb = new StringBuilder();
                    sb.append(AuthUtil.AUTH_STYLE_INNER);
                    sb.append(i24);
                } else {
                    sb = new StringBuilder();
                    sb.append(i24);
                    sb.append("");
                }
                strArr2[i22] = sb.toString();
                i22++;
            }
            this.mPickerMinute.setDisplayedValues(strArr2);
            int i25 = i17 / 5;
            this.mPickerMinute.setValue(i25);
            this.mCalendar.set(12, Integer.parseInt(strArr2[i25]));
        } else {
            this.mPickerMinute.setMaxValue(MINUTES_OF_A_HOUR);
            this.mPickerMinute.setValue(i17);
        }
        this.mPickerMinute.setTwoDigitFormatter();
        this.mPickerMinute.setWrapSelectorWheel(true);
        this.mPickerMinute.setOnValueChangedListener(new COUINumberPicker.OnValueChangeListener() { // from class: com.coui.appcompat.picker.COUITimePicker.5
            @Override // com.coui.appcompat.picker.COUINumberPicker.OnValueChangeListener
            public void onValueChange(COUINumberPicker cOUINumberPicker, int i26, int i27) {
                if (COUITimePicker.this.mIsMinuteFiveStep) {
                    COUITimePicker.this.mCalendar.set(12, cOUINumberPicker.getValue() * 5);
                } else {
                    COUITimePicker.this.mCalendar.set(12, cOUINumberPicker.getValue());
                }
                if (COUITimePicker.this.mOnTimeChangeListener != null) {
                    OnTimeChangeListener onTimeChangeListener = COUITimePicker.this.mOnTimeChangeListener;
                    COUITimePicker cOUITimePicker = COUITimePicker.this;
                    onTimeChangeListener.onTimeChange(cOUITimePicker, cOUITimePicker.mCalendar);
                }
            }
        });
        this.mPickerMinute.setOnScrollingStopListener(new COUINumberPicker.OnScrollingStopListener() { // from class: com.coui.appcompat.picker.COUITimePicker.6
            @Override // com.coui.appcompat.picker.COUINumberPicker.OnScrollingStopListener
            public void onScrollingStop() {
                COUITimePicker.this.sendAccessibilityEvent(4);
            }
        });
        this.mPickerDate.setMinValue(1);
        this.mPickerDate.setMaxValue(i21);
        this.mPickerDate.setWrapSelectorWheel(false);
        this.mPickerDate.setValue(i20);
        Format format = new Format();
        this.f7292f = format;
        this.mPickerDate.setFormatter(format);
        this.mPickerDate.setOnValueChangedListener(new COUINumberPicker.OnValueChangeListener() { // from class: com.coui.appcompat.picker.COUITimePicker.7
            @Override // com.coui.appcompat.picker.COUINumberPicker.OnValueChangeListener
            public void onValueChange(COUINumberPicker cOUINumberPicker, int i26, int i27) {
                Date dateFromValue = COUITimePicker.this.getDateFromValue(cOUINumberPicker.getValue());
                if (dateFromValue != null) {
                    COUITimePicker.this.mCalendar.set(2, dateFromValue.getMonth());
                    COUITimePicker.this.mCalendar.set(5, dateFromValue.getDate());
                    COUITimePicker.this.mCalendar.set(1, dateFromValue.getYear() + COUITimePicker.START_YEAR);
                    if (COUITimePicker.this.mOnTimeChangeListener != null) {
                        OnTimeChangeListener onTimeChangeListener = COUITimePicker.this.mOnTimeChangeListener;
                        COUITimePicker cOUITimePicker = COUITimePicker.this;
                        onTimeChangeListener.onTimeChange(cOUITimePicker, cOUITimePicker.mCalendar);
                    }
                }
            }
        });
        this.mPickerDate.setOnScrollingStopListener(new COUINumberPicker.OnScrollingStopListener() { // from class: com.coui.appcompat.picker.COUITimePicker.8
            @Override // com.coui.appcompat.picker.COUINumberPicker.OnScrollingStopListener
            public void onScrollingStop() {
                COUITimePicker.this.sendAccessibilityEvent(4);
            }
        });
        return this;
    }

    public boolean isLayoutRtl() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int i12 = this.mMaxWidth;
        if (i12 > 0 && size > i12) {
            size = i12;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, mode);
        this.mPickerMinute.clearNumberPickerPadding();
        this.mPickerHour.clearNumberPickerPadding();
        this.mPickerDate.clearNumberPickerPadding();
        this.mPickerAmPm.clearNumberPickerPadding();
        float f10 = size / (((this.mPickerMinute.getLayoutParams().width + this.mPickerHour.getLayoutParams().width) + this.mPickerDate.getLayoutParams().width) + this.mPickerAmPm.getLayoutParams().width);
        measureChildConstrained(this.mPickerMinute, i10, i11, f10);
        measureChildConstrained(this.mPickerHour, i10, i11, f10);
        measureChildConstrained(this.mPickerDate, i10, i11, f10);
        measureChildConstrained(this.mPickerAmPm, i10, i11, f10);
        int measuredWidth = ((((size - this.mPickerMinute.getMeasuredWidth()) - this.mPickerHour.getMeasuredWidth()) - this.mPickerDate.getMeasuredWidth()) - (is24Hours() ? 0 : this.mPickerAmPm.getMeasuredWidth())) / 2;
        if (this.mPickerLayout.getChildAt(this.mLeftPickerPosition) instanceof COUINumberPicker) {
            ((COUINumberPicker) this.mPickerLayout.getChildAt(this.mLeftPickerPosition)).setNumberPickerPaddingLeft(measuredWidth);
        }
        if (this.mPickerLayout.getChildAt(this.mRightPickerPosition) instanceof COUINumberPicker) {
            ((COUINumberPicker) this.mPickerLayout.getChildAt(this.mRightPickerPosition)).setNumberPickerPaddingRight(measuredWidth);
        }
        super.onMeasure(iMakeMeasureSpec, i11);
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        reorderUtterance();
        accessibilityEvent.getText().add(this.selectedDateUtterance);
    }

    public void refresh() {
        COUINumberPicker cOUINumberPicker = this.mPickerDate;
        if (cOUINumberPicker != null) {
            cOUINumberPicker.refresh();
        }
        COUINumberPicker cOUINumberPicker2 = this.mPickerHour;
        if (cOUINumberPicker2 != null) {
            cOUINumberPicker2.refresh();
        }
        COUINumberPicker cOUINumberPicker3 = this.mPickerMinute;
        if (cOUINumberPicker3 != null) {
            cOUINumberPicker3.refresh();
        }
        COUINumberPicker cOUINumberPicker4 = this.mPickerAmPm;
        if (cOUINumberPicker4 != null) {
            cOUINumberPicker4.refresh();
        }
    }

    public void scrollForceFinished() {
        COUINumberPicker cOUINumberPicker = this.mPickerDate;
        if (cOUINumberPicker != null) {
            cOUINumberPicker.scrollForceFinished();
        }
        COUINumberPicker cOUINumberPicker2 = this.mPickerHour;
        if (cOUINumberPicker2 != null) {
            cOUINumberPicker2.scrollForceFinished();
        }
        COUINumberPicker cOUINumberPicker3 = this.mPickerMinute;
        if (cOUINumberPicker3 != null) {
            cOUINumberPicker3.scrollForceFinished();
        }
        if (this.mPickerAmPm == null || is24Hours()) {
            return;
        }
        this.mPickerAmPm.scrollForceFinished();
    }

    public void setMinuteStepToFive() {
        this.mIsMinuteFiveStep = true;
    }

    public void setNormalTextColor(int i10) {
        COUINumberPicker cOUINumberPicker = this.mPickerDate;
        if (cOUINumberPicker != null) {
            cOUINumberPicker.setNormalTextColor(i10);
        }
        COUINumberPicker cOUINumberPicker2 = this.mPickerHour;
        if (cOUINumberPicker2 != null) {
            cOUINumberPicker2.setNormalTextColor(i10);
        }
        COUINumberPicker cOUINumberPicker3 = this.mPickerMinute;
        if (cOUINumberPicker3 != null) {
            cOUINumberPicker3.setNormalTextColor(i10);
        }
        COUINumberPicker cOUINumberPicker4 = this.mPickerAmPm;
        if (cOUINumberPicker4 != null) {
            cOUINumberPicker4.setNormalTextColor(i10);
        }
    }

    public void setOnTimeChangeListener(OnTimeChangeListener onTimeChangeListener) {
        this.mOnTimeChangeListener = onTimeChangeListener;
    }

    @Deprecated
    public void setTimePicker(int i10, Calendar calendar) {
        this.mDefaultCalendar = calendar;
        getTimePicker();
    }

    public void setVibrateIntensity(float f10) {
        this.mPickerDate.setVibrateIntensity(f10);
        this.mPickerHour.setVibrateIntensity(f10);
        this.mPickerMinute.setVibrateIntensity(f10);
        this.mPickerAmPm.setVibrateIntensity(f10);
    }

    public void setVibrateLevel(int i10) {
        this.mPickerDate.setVibrateLevel(i10);
        this.mPickerHour.setVibrateLevel(i10);
        this.mPickerMinute.setVibrateLevel(i10);
        this.mPickerAmPm.setVibrateLevel(i10);
    }

    public COUITimePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiTimePickerStyle);
    }

    public COUITimePicker(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.TimePickerStyle);
    }

    public void setTimePicker(Calendar calendar) {
        this.mDefaultCalendar = calendar;
        getTimePicker();
    }

    public COUITimePicker(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mTodayIndex = -1;
        this.mAmPm = -1;
        this.selectedDateUtterance = "";
        this.mLeftPickerPosition = -1;
        this.mRightPickerPosition = -1;
        COUIDarkModeUtil.setForceDarkAllow(this, false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPickersCommonAttrs, i10, i11);
        this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIPickersCommonAttrs_couiPickersMaxWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mContext = context;
        this.mTextAMPM = context.getResources().getStringArray(R$array.coui_time_picker_ampm);
        this.mTextToday = this.mContext.getResources().getString(R$string.coui_time_picker_today);
        this.mTextDay = this.mContext.getResources().getString(R$string.coui_time_picker_day);
        this.mCalendar = Calendar.getInstance();
        Calendar calendar = Calendar.getInstance();
        this.mTodayCalendar = calendar;
        this.mTodayYear = calendar.get(1);
        this.mTodayMonth = this.mTodayCalendar.get(2);
        this.mTodayDate = this.mTodayCalendar.get(5);
        this.mOutformatter = new SimpleDateFormat("yyyy MMM dd" + this.mTextDay + " E", Locale.getDefault());
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(this.mContext).inflate(R$layout.coui_time_picker, (ViewGroup) this, true);
        this.mPickerDate = (COUINumberPicker) viewGroup.findViewById(R$id.coui_time_picker_date);
        this.mPickerHour = (COUINumberPicker) viewGroup.findViewById(R$id.coui_time_picker_hour);
        this.mPickerMinute = (COUINumberPicker) viewGroup.findViewById(R$id.coui_time_picker_minute);
        this.mPickerAmPm = (COUINumberPicker) viewGroup.findViewById(R$id.coui_time_picker_ampm);
        this.mPickerLayout = (LinearLayout) viewGroup.findViewById(R$id.pickers);
        this.mBackgroundRadius = context.getResources().getDimensionPixelOffset(R$dimen.coui_selected_background_radius);
        this.mBackgroundLeft = context.getResources().getDimensionPixelOffset(R$dimen.coui_selected_background_horizontal_padding);
        this.mBackgroundDividerHeight = Math.max(getResources().getDimensionPixelOffset(R$dimen.coui_number_picker_background_divider_height), 1);
        if (!Locale.getDefault().getLanguage().equals("zh") && !Locale.getDefault().getLanguage().equals("en")) {
            this.mPickerDate.getLayoutParams().width = getResources().getDimensionPixelOffset(R$dimen.coui_number_picker_width_biggest);
        }
        reorderSpinners();
        COUINumberPicker cOUINumberPicker = this.mPickerHour;
        if (cOUINumberPicker != null && cOUINumberPicker.isAccessibilityEnable()) {
            String string = context.getResources().getString(R$string.picker_talkback_tip);
            COUINumberPicker cOUINumberPicker2 = this.mPickerDate;
            if (cOUINumberPicker2 != null) {
                cOUINumberPicker2.addTalkbackSuffix(string);
            }
            this.mPickerHour.addTalkbackSuffix(context.getResources().getString(R$string.coui_hour) + string);
            COUINumberPicker cOUINumberPicker3 = this.mPickerMinute;
            if (cOUINumberPicker3 != null) {
                cOUINumberPicker3.addTalkbackSuffix(context.getResources().getString(R$string.coui_minute) + string);
            }
            COUINumberPicker cOUINumberPicker4 = this.mPickerAmPm;
            if (cOUINumberPicker4 != null) {
                cOUINumberPicker4.addTalkbackSuffix(context.getResources().getString(R$string.coui_minute) + string);
            }
        }
        setImportantForAccessibility(1);
    }
}
