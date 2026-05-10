package com.coui.appcompat.picker;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.CalendarView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.picker.COUINumberPicker;
import com.support.picker.R$array;
import com.support.picker.R$attr;
import com.support.picker.R$dimen;
import com.support.picker.R$id;
import com.support.picker.R$layout;
import com.support.picker.R$string;
import com.support.picker.R$style;
import com.support.picker.R$styleable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class COUIDatePicker extends FrameLayout {
    private static final int A_LEAP_YEAR = 2020;
    private static final String DATE_FORMAT = "MM/dd/yyyy";
    private static final boolean DEFAULT_CALENDAR_VIEW_SHOWN = true;
    private static final boolean DEFAULT_ENABLED_STATE = true;
    private static final int DEFAULT_END_YEAR = 2100;
    private static final boolean DEFAULT_SPINNERS_SHOWN = true;
    private static final int DEFAULT_START_YEAR = 1900;
    private static final int HOURS_OF_HALF_DAY = 12;
    public static final int IGNORED_YEAR = Integer.MIN_VALUE;
    private static final String LOG_TAG = "COUIDatePicker";
    private static final int LONGPRESS_UPDATE_INTERVAL = 100;
    private static final String MD_FORMAT = "MM/dd";
    private static final int MIN_BACKGROUND_DIVIDER_HEIGHT = 1;
    private static final int MONTH_LONGPRESS_UPDATE_INTERVAL = 200;
    private static final String TAG = "COUIDatePicker";
    private static char[] sOrderEn = {'d', 'M', 'y'};
    private int mBackgroundDividerHeight;
    private int mBackgroundLeft;
    private int mBackgroundRadius;
    private Context mContext;
    private IncompleteDate mCurrentDate;
    private Locale mCurrentLocale;
    private final DateFormat mDateFormat;
    private Format mDayFormat;
    private final COUINumberPicker mDaySpinner;
    private Date mEndDate;
    private int mFocusColor;
    private boolean mIsEnabled;
    int mLeftPickerPosition;
    private Calendar mMaxDate;
    private int mMaxWidth;
    private Calendar mMinDate;
    private Format mMonthFormat;
    private final COUINumberPicker mMonthSpinner;
    private int mNormalColor;
    private int mNumberOfMonths;
    private OnDateChangedListener mOnDateChangedListener;
    int mRightPickerPosition;
    private String[] mShortMonths;
    private final LinearLayout mSpinners;
    private IncompleteDate mTempDate;
    private Format mYearFormat;
    private boolean mYearIgnorable;
    private final COUINumberPicker mYearSpinner;

    class Format implements COUINumberPicker.Formatter {
        int mId;
        String mTag;

        Format(int i10, String str) {
            this.mId = i10;
            this.mTag = str;
        }

        @Override // com.coui.appcompat.picker.COUINumberPicker.Formatter
        public String format(int i10) {
            if (this.mTag.equals("MONTH")) {
                COUIDatePicker.this.mEndDate.setMonth(i10);
                return DateUtils.formatDateTime(COUIDatePicker.this.getContext(), COUIDatePicker.this.mEndDate.getTime(), 65576);
            }
            if (!Locale.getDefault().getLanguage().equals("zh")) {
                Formatter formatter = new Formatter(new StringBuilder(), COUIDatePicker.this.mCurrentLocale);
                if (this.mTag.equals("YEAR")) {
                    formatter.format("%d", Integer.valueOf(i10));
                    return formatter.toString();
                }
                if (this.mTag.equals("DAY")) {
                    formatter.format("%02d", Integer.valueOf(i10));
                    return formatter.toString();
                }
            }
            return i10 + COUIDatePicker.this.getResources().getString(this.mId);
        }
    }

    public interface OnDateChangedListener {
        void onDateChanged(COUIDatePicker cOUIDatePicker, int i10, int i11, int i12);
    }

    public COUIDatePicker(Context context) {
        this(context, null);
    }

    private void clampDate() {
        this.mCurrentDate.clampDate(this.mMinDate, this.mMaxDate);
    }

    private String formatDate() {
        return !this.mCurrentDate.mIsIncomplete ? DateUtils.formatDateTime(this.mContext, this.mCurrentDate.mDate.getTimeInMillis(), 20) : DateUtils.formatDateTime(this.mContext, this.mCurrentDate.mDate.getTimeInMillis(), 24);
    }

    private IncompleteDate getCalendarForLocale(IncompleteDate incompleteDate, Locale locale) {
        if (incompleteDate == null) {
            return new IncompleteDate(locale);
        }
        IncompleteDate incompleteDate2 = new IncompleteDate(locale);
        if (incompleteDate.mIsIncomplete) {
            incompleteDate2.setWith(incompleteDate);
        } else {
            incompleteDate2.setTimeInMillis(incompleteDate.getTimeInMillis());
        }
        return incompleteDate2;
    }

    private boolean isNewDate(int i10, int i11, int i12) {
        return (this.mCurrentDate.get(1) == i10 && this.mCurrentDate.get(2) == i11 && this.mCurrentDate.get(5) == i12) ? false : true;
    }

    private void measureChildConstrained(View view, int i10, int i11) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDateChanged() {
        OnDateChangedListener onDateChangedListener = this.mOnDateChangedListener;
        if (onDateChangedListener != null) {
            onDateChangedListener.onDateChanged(this, getYear(), getMonth(), getDayOfMonth());
        }
    }

    private boolean parseDate(String str, Calendar calendar) {
        try {
            calendar.setTime(this.mDateFormat.parse(str));
            return true;
        } catch (ParseException unused) {
            return false;
        }
    }

    private void reorderSpinners() {
        String bestDateTimePattern = android.text.format.DateFormat.getBestDateTimePattern(Locale.getDefault(), "yyyyMMMMdd");
        if (isLayoutRtl()) {
            bestDateTimePattern = TextUtils.getReverse(bestDateTimePattern, 0, bestDateTimePattern.length()).toString();
        }
        this.mSpinners.removeAllViews();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < bestDateTimePattern.length(); i10++) {
            char cCharAt = bestDateTimePattern.charAt(i10);
            if (cCharAt != 'M') {
                if (cCharAt != 'd') {
                    if (cCharAt == 'y' && this.mYearSpinner.getParent() == null) {
                        this.mSpinners.addView(this.mYearSpinner);
                        arrayList.add("y");
                    }
                } else if (this.mDaySpinner.getParent() == null) {
                    this.mSpinners.addView(this.mDaySpinner);
                    arrayList.add("d");
                }
            } else if (this.mMonthSpinner.getParent() == null) {
                this.mSpinners.addView(this.mMonthSpinner);
                arrayList.add("M");
            }
            if (this.mLeftPickerPosition == -1) {
                this.mLeftPickerPosition = this.mSpinners.getChildCount() - 1;
            }
            this.mRightPickerPosition = this.mSpinners.getChildCount() - 1;
        }
    }

    private void setCurrentLocale(Locale locale) {
        if (locale.equals(this.mCurrentLocale)) {
            return;
        }
        this.mCurrentLocale = locale;
        this.mTempDate = getCalendarForLocale(this.mTempDate, locale);
        this.mMinDate = getCalendarForLocale(this.mMinDate, locale);
        this.mMaxDate = getCalendarForLocale(this.mMaxDate, locale);
        this.mCurrentDate = getCalendarForLocale(this.mCurrentDate, locale);
        int actualMaximum = this.mTempDate.getActualMaximum(2) + 1;
        this.mNumberOfMonths = actualMaximum;
        this.mShortMonths = new String[actualMaximum];
    }

    private void setDate(int i10, int i11, int i12) {
        this.mCurrentDate.set(i10, i11, i12);
        clampDate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCalendarView() {
    }

    private void updateSpinnerColor() {
        int i10 = this.mNormalColor;
        if (i10 != -1) {
            this.mDaySpinner.setPickerNormalColor(i10);
            this.mMonthSpinner.setPickerNormalColor(this.mNormalColor);
            this.mYearSpinner.setPickerNormalColor(this.mNormalColor);
        }
        int i11 = this.mFocusColor;
        if (i11 != -1) {
            this.mDaySpinner.setPickerFocusColor(i11);
            this.mMonthSpinner.setPickerFocusColor(this.mFocusColor);
            this.mYearSpinner.setPickerFocusColor(this.mFocusColor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpinners() {
        this.mMonthSpinner.setFormatter(this.mMonthFormat);
        if (this.mCurrentDate.get(1) == this.mMinDate.get(1) && this.mCurrentDate.get(1) != this.mMaxDate.get(1)) {
            this.mMonthSpinner.setMinValue(this.mMinDate.get(2));
            this.mMonthSpinner.setMaxValue(this.mMinDate.getActualMaximum(2));
            this.mMonthSpinner.setWrapSelectorWheel(this.mMinDate.get(2) == 0);
        } else if (this.mCurrentDate.get(1) != this.mMinDate.get(1) && this.mCurrentDate.get(1) == this.mMaxDate.get(1)) {
            this.mMonthSpinner.setMinValue(0);
            this.mMonthSpinner.setMaxValue(this.mMaxDate.get(2));
            this.mMonthSpinner.setWrapSelectorWheel(this.mMaxDate.get(2) == this.mMaxDate.getActualMaximum(2));
        } else if (this.mCurrentDate.get(1) == this.mMinDate.get(1) && this.mCurrentDate.get(1) == this.mMaxDate.get(1)) {
            this.mMonthSpinner.setMinValue(this.mMinDate.get(2));
            this.mMonthSpinner.setMaxValue(this.mMaxDate.get(2));
            this.mMonthSpinner.setWrapSelectorWheel(this.mMaxDate.get(2) == this.mMaxDate.getActualMaximum(2) && this.mMinDate.get(2) == 0);
        } else {
            this.mMonthSpinner.setMinValue(this.mCurrentDate.getActualMinimum(2));
            this.mMonthSpinner.setMaxValue(this.mCurrentDate.getActualMaximum(2));
            this.mMonthSpinner.setWrapSelectorWheel(true);
        }
        if (this.mCurrentDate.get(1) == this.mMinDate.get(1) && this.mCurrentDate.get(2) == this.mMinDate.get(2) && (this.mCurrentDate.get(1) != this.mMaxDate.get(1) || this.mCurrentDate.get(2) != this.mMaxDate.get(2))) {
            this.mDaySpinner.setMinValue(this.mMinDate.get(5));
            this.mDaySpinner.setMaxValue(this.mMinDate.getActualMaximum(5));
            this.mDaySpinner.setWrapSelectorWheel(this.mMinDate.get(5) == 1);
        } else if (!(this.mCurrentDate.get(1) == this.mMinDate.get(1) && this.mCurrentDate.get(2) == this.mMinDate.get(2)) && this.mCurrentDate.get(1) == this.mMaxDate.get(1) && this.mCurrentDate.get(2) == this.mMaxDate.get(2)) {
            this.mDaySpinner.setMinValue(1);
            this.mDaySpinner.setMaxValue(this.mMaxDate.get(5));
            this.mDaySpinner.setWrapSelectorWheel(this.mMaxDate.get(5) == this.mMaxDate.getActualMaximum(5));
        } else if (this.mCurrentDate.get(1) == this.mMinDate.get(1) && this.mCurrentDate.get(2) == this.mMinDate.get(2) && this.mCurrentDate.get(1) == this.mMaxDate.get(1) && this.mCurrentDate.get(2) == this.mMaxDate.get(2)) {
            this.mDaySpinner.setMinValue(this.mMinDate.get(5));
            this.mDaySpinner.setMaxValue(this.mMaxDate.get(5));
            COUINumberPicker cOUINumberPicker = this.mDaySpinner;
            if (this.mMaxDate.get(5) == this.mMaxDate.getActualMaximum(5) && this.mMinDate.get(5) == 1) {
                z = true;
            }
            cOUINumberPicker.setWrapSelectorWheel(z);
        } else {
            this.mDaySpinner.setMinValue(this.mCurrentDate.getActualMinimum(5));
            this.mDaySpinner.setMaxValue(this.mCurrentDate.getActualMaximum(5));
            this.mDaySpinner.setWrapSelectorWheel(true);
        }
        this.mYearSpinner.setMinValue(this.mMinDate.get(1));
        this.mYearSpinner.setMaxValue(this.mMaxDate.get(1));
        this.mYearSpinner.setWrapSelectorWheel(true);
        this.mYearSpinner.setFormatter(this.mYearFormat);
        this.mYearSpinner.setValue(this.mCurrentDate.get(1));
        this.mMonthSpinner.setValue(this.mCurrentDate.get(2));
        this.mDaySpinner.setValue(this.mCurrentDate.get(5));
        this.mDaySpinner.setFormatter(this.mDayFormat);
        if (this.mDaySpinner.getValue() > 27) {
            this.mDaySpinner.invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Paint paint = new Paint();
        paint.setColor(this.mDaySpinner.getBackgroundColor());
        canvas.drawRect(this.mBackgroundLeft, (int) ((getHeight() / 2.0f) - this.mBackgroundRadius), getWidth() - this.mBackgroundLeft, r0 + this.mBackgroundDividerHeight, paint);
        canvas.drawRect(this.mBackgroundLeft, (int) ((getHeight() / 2.0f) + this.mBackgroundRadius), getWidth() - this.mBackgroundLeft, r0 + this.mBackgroundDividerHeight, paint);
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    public CalendarView getCalendarView() {
        return null;
    }

    public boolean getCalendarViewShown() {
        return false;
    }

    public int getDayOfMonth() {
        return this.mCurrentDate.get(5);
    }

    public COUINumberPicker getDaySpinner() {
        return this.mDaySpinner;
    }

    public long getMaxDate() {
        return this.mMaxDate.getTimeInMillis();
    }

    public long getMinDate() {
        return this.mMinDate.getTimeInMillis();
    }

    public int getMonth() {
        return this.mCurrentDate.get(2);
    }

    public COUINumberPicker getMonthSpinner() {
        return this.mMonthSpinner;
    }

    public OnDateChangedListener getOnDateChangedListener() {
        return this.mOnDateChangedListener;
    }

    public boolean getSpinnersShown() {
        return this.mSpinners.isShown();
    }

    public int getYear() {
        return this.mCurrentDate.get(1);
    }

    public COUINumberPicker getYearSpinner() {
        return this.mYearSpinner;
    }

    public void init(int i10, int i11, int i12, OnDateChangedListener onDateChangedListener) {
        setDate(i10, i11, i12);
        updateSpinners();
        updateCalendarView();
        this.mOnDateChangedListener = onDateChangedListener;
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public boolean isLayoutRtl() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setCurrentLocale(configuration.locale);
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
        this.mDaySpinner.clearNumberPickerPadding();
        this.mMonthSpinner.clearNumberPickerPadding();
        this.mYearSpinner.clearNumberPickerPadding();
        measureChildConstrained(this.mDaySpinner, i10, i11);
        measureChildConstrained(this.mMonthSpinner, i10, i11);
        measureChildConstrained(this.mYearSpinner, i10, i11);
        int measuredWidth = (((size - this.mDaySpinner.getMeasuredWidth()) - this.mMonthSpinner.getMeasuredWidth()) - this.mYearSpinner.getMeasuredWidth()) / 2;
        if (this.mSpinners.getChildAt(this.mLeftPickerPosition) instanceof COUINumberPicker) {
            ((COUINumberPicker) this.mSpinners.getChildAt(this.mLeftPickerPosition)).setNumberPickerPaddingLeft(measuredWidth);
        }
        if (this.mSpinners.getChildAt(this.mRightPickerPosition) instanceof COUINumberPicker) {
            ((COUINumberPicker) this.mSpinners.getChildAt(this.mRightPickerPosition)).setNumberPickerPaddingRight(measuredWidth);
        }
        super.onMeasure(iMakeMeasureSpec, i11);
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(formatDate());
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setDate(savedState.mYear, savedState.mMonth, savedState.mDay);
        updateSpinners();
        updateCalendarView();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), getYear(), getMonth(), getDayOfMonth());
    }

    public void refresh() {
        COUINumberPicker cOUINumberPicker = this.mDaySpinner;
        if (cOUINumberPicker != null) {
            cOUINumberPicker.refresh();
        }
        COUINumberPicker cOUINumberPicker2 = this.mMonthSpinner;
        if (cOUINumberPicker2 != null) {
            cOUINumberPicker2.refresh();
        }
        COUINumberPicker cOUINumberPicker3 = this.mYearSpinner;
        if (cOUINumberPicker3 != null) {
            cOUINumberPicker3.refresh();
        }
    }

    public void scrollForceFinished() {
        COUINumberPicker cOUINumberPicker = this.mDaySpinner;
        if (cOUINumberPicker != null) {
            cOUINumberPicker.scrollForceFinished();
        }
        COUINumberPicker cOUINumberPicker2 = this.mMonthSpinner;
        if (cOUINumberPicker2 != null) {
            cOUINumberPicker2.scrollForceFinished();
        }
        COUINumberPicker cOUINumberPicker3 = this.mYearSpinner;
        if (cOUINumberPicker3 != null) {
            cOUINumberPicker3.scrollForceFinished();
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    public void setCalendarViewShown(boolean z10) {
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        if (this.mIsEnabled == z10) {
            return;
        }
        super.setEnabled(z10);
        this.mDaySpinner.setEnabled(z10);
        this.mMonthSpinner.setEnabled(z10);
        this.mYearSpinner.setEnabled(z10);
        this.mIsEnabled = z10;
    }

    public void setFocusColor(int i10) {
        this.mFocusColor = i10;
        updateSpinnerColor();
    }

    public void setMaxDate(long j10) {
        this.mTempDate.setTimeInMillis(j10);
        if (this.mTempDate.get(1) != this.mMaxDate.get(1) || this.mTempDate.get(6) == this.mMaxDate.get(6)) {
            this.mMaxDate.setTimeInMillis(j10);
            if (this.mCurrentDate.after(this.mMaxDate)) {
                this.mCurrentDate.setTimeInMillis(this.mMaxDate.getTimeInMillis());
                updateCalendarView();
            }
            updateSpinners();
        }
    }

    public void setMinDate(long j10) {
        this.mTempDate.setTimeInMillis(j10);
        if (this.mTempDate.get(1) != this.mMinDate.get(1) || this.mTempDate.get(6) == this.mMinDate.get(6)) {
            this.mMinDate.setTimeInMillis(j10);
            if (this.mCurrentDate.before(this.mMinDate)) {
                this.mCurrentDate.setTimeInMillis(this.mMinDate.getTimeInMillis());
                updateCalendarView();
            }
            updateSpinners();
        }
    }

    public void setNormalColor(int i10) {
        this.mNormalColor = i10;
        updateSpinnerColor();
    }

    public void setNormalTextColor(int i10) {
        COUINumberPicker cOUINumberPicker = this.mDaySpinner;
        if (cOUINumberPicker != null) {
            cOUINumberPicker.setNormalTextColor(i10);
        }
        COUINumberPicker cOUINumberPicker2 = this.mMonthSpinner;
        if (cOUINumberPicker2 != null) {
            cOUINumberPicker2.setNormalTextColor(i10);
        }
        COUINumberPicker cOUINumberPicker3 = this.mYearSpinner;
        if (cOUINumberPicker3 != null) {
            cOUINumberPicker3.setNormalTextColor(i10);
        }
    }

    public void setOnDateChangedListener(OnDateChangedListener onDateChangedListener) {
        this.mOnDateChangedListener = onDateChangedListener;
    }

    public void setSpinnersShown(boolean z10) {
        this.mSpinners.setVisibility(z10 ? 0 : 8);
    }

    public void setVibrateIntensity(float f10) {
        this.mDaySpinner.setVibrateIntensity(f10);
        this.mMonthSpinner.setVibrateIntensity(f10);
        this.mYearSpinner.setVibrateIntensity(f10);
    }

    public void setVibrateLevel(int i10) {
        this.mDaySpinner.setVibrateLevel(i10);
        this.mMonthSpinner.setVibrateLevel(i10);
        this.mYearSpinner.setVibrateLevel(i10);
    }

    public void updateDate(int i10, int i11, int i12) {
        if (isNewDate(i10, i11, i12)) {
            setDate(i10, i11, i12);
            updateSpinners();
            updateCalendarView();
            notifyDateChanged();
        }
    }

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.coui.appcompat.picker.COUIDatePicker.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        private final int mDay;
        private final int mMonth;
        private final int mYear;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.mYear);
            parcel.writeInt(this.mMonth);
            parcel.writeInt(this.mDay);
        }

        private SavedState(Parcelable parcelable, int i10, int i11, int i12) {
            super(parcelable);
            this.mYear = i10;
            this.mMonth = i11;
            this.mDay = i12;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mYear = parcel.readInt();
            this.mMonth = parcel.readInt();
            this.mDay = parcel.readInt();
        }
    }

    public COUIDatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiDatePickerStyle);
    }

    public void setBackground(int i10) {
        setBackgroundDrawable(getContext().getResources().getDrawable(i10));
    }

    public COUIDatePicker(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.DatePickerStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDate(IncompleteDate incompleteDate) {
        this.mCurrentDate.setWith(incompleteDate);
        clampDate();
    }

    public COUIDatePicker(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mDateFormat = new SimpleDateFormat(DATE_FORMAT);
        this.mLeftPickerPosition = -1;
        this.mRightPickerPosition = -1;
        this.mIsEnabled = true;
        COUIDarkModeUtil.setForceDarkAllow(this, false);
        this.mContext = context;
        setCurrentLocale(Locale.getDefault());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIDatePicker, i10, i11);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIDatePicker_spinnerShown, true);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIDatePicker_calendarViewShown, true);
        int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIDatePicker_beginYear, DEFAULT_START_YEAR);
        int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIDatePicker_endYear, DEFAULT_END_YEAR);
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.COUIDatePicker_minDate);
        String string2 = typedArrayObtainStyledAttributes.getString(R$styleable.COUIDatePicker_maxDate);
        this.mShortMonths = getResources().getStringArray(R$array.coui_solor_mounth);
        this.mNormalColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIDatePicker_calendarTextColor, -1);
        this.mFocusColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIDatePicker_calendarSelectedTextColor, -1);
        int i14 = R$layout.coui_date_picker;
        this.mYearIgnorable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIDatePicker_couiYearIgnorable, false);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPickersCommonAttrs, i10, 0);
        this.mMaxWidth = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R$styleable.COUIPickersCommonAttrs_couiPickersMaxWidth, 0);
        typedArrayObtainStyledAttributes2.recycle();
        this.mBackgroundDividerHeight = Math.max(getResources().getDimensionPixelOffset(R$dimen.coui_number_picker_background_divider_height), 1);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(i14, (ViewGroup) this, true);
        COUINumberPicker.OnValueChangeListener onValueChangeListener = new COUINumberPicker.OnValueChangeListener() { // from class: com.coui.appcompat.picker.COUIDatePicker.1
            @Override // com.coui.appcompat.picker.COUINumberPicker.OnValueChangeListener
            public void onValueChange(COUINumberPicker cOUINumberPicker, int i15, int i16) {
                COUIDatePicker.this.mTempDate.setWith(COUIDatePicker.this.mCurrentDate);
                if (cOUINumberPicker == COUIDatePicker.this.mDaySpinner) {
                    COUIDatePicker.this.mTempDate.set(5, i16);
                } else if (cOUINumberPicker == COUIDatePicker.this.mMonthSpinner) {
                    COUIDatePicker.this.mTempDate.set(2, i16);
                } else {
                    if (cOUINumberPicker != COUIDatePicker.this.mYearSpinner) {
                        throw new IllegalArgumentException();
                    }
                    COUIDatePicker.this.mTempDate.set(1, i16);
                }
                COUIDatePicker cOUIDatePicker = COUIDatePicker.this;
                cOUIDatePicker.setDate(cOUIDatePicker.mTempDate);
                COUIDatePicker.this.updateSpinners();
                COUIDatePicker.this.updateCalendarView();
                COUIDatePicker.this.notifyDateChanged();
            }
        };
        COUINumberPicker.OnScrollingStopListener onScrollingStopListener = new COUINumberPicker.OnScrollingStopListener() { // from class: com.coui.appcompat.picker.COUIDatePicker.2
            @Override // com.coui.appcompat.picker.COUINumberPicker.OnScrollingStopListener
            public void onScrollingStop() {
                COUIDatePicker.this.sendAccessibilityEvent(4);
            }
        };
        this.mSpinners = (LinearLayout) findViewById(R$id.pickers);
        this.mYearFormat = new Format(R$string.coui_year, "YEAR");
        this.mMonthFormat = new Format(R$string.coui_month, "MONTH");
        this.mDayFormat = new Format(R$string.coui_day, "DAY");
        this.mEndDate = new Date();
        COUINumberPicker cOUINumberPicker = (COUINumberPicker) findViewById(R$id.day);
        this.mDaySpinner = cOUINumberPicker;
        cOUINumberPicker.setOnLongPressUpdateInterval(100L);
        cOUINumberPicker.setOnValueChangedListener(onValueChangeListener);
        cOUINumberPicker.setOnScrollingStopListener(onScrollingStopListener);
        COUINumberPicker cOUINumberPicker2 = (COUINumberPicker) findViewById(R$id.month);
        this.mMonthSpinner = cOUINumberPicker2;
        cOUINumberPicker2.setMinValue(0);
        cOUINumberPicker2.setMaxValue(this.mNumberOfMonths - 1);
        cOUINumberPicker2.setOnLongPressUpdateInterval(200L);
        cOUINumberPicker2.setOnValueChangedListener(onValueChangeListener);
        cOUINumberPicker2.setOnScrollingStopListener(onScrollingStopListener);
        COUINumberPicker cOUINumberPicker3 = (COUINumberPicker) findViewById(R$id.year);
        this.mYearSpinner = cOUINumberPicker3;
        cOUINumberPicker3.setOnLongPressUpdateInterval(100L);
        cOUINumberPicker3.setOnValueChangedListener(onValueChangeListener);
        cOUINumberPicker3.setOnScrollingStopListener(onScrollingStopListener);
        cOUINumberPicker3.setIgnorable(this.mYearIgnorable);
        updateSpinnerColor();
        if (!z10 && !z11) {
            setSpinnersShown(true);
        } else {
            setSpinnersShown(z10);
            setCalendarViewShown(z11);
        }
        this.mTempDate.clear();
        if (TextUtils.isEmpty(string) || !parseDate(string, this.mTempDate.mDate)) {
            this.mTempDate.set(i12, 0, 1);
        }
        setMinDate(this.mTempDate.mDate.getTimeInMillis());
        this.mTempDate.clear();
        if (TextUtils.isEmpty(string2) || !parseDate(string2, this.mTempDate.mDate)) {
            this.mTempDate.set(i13, 11, 31);
        }
        setMaxDate(this.mTempDate.mDate.getTimeInMillis());
        this.mCurrentDate.setTimeInMillis(System.currentTimeMillis());
        init(this.mCurrentDate.get(1), this.mCurrentDate.get(2), this.mCurrentDate.get(5), null);
        reorderSpinners();
        if (cOUINumberPicker3.isAccessibilityEnable()) {
            String string3 = context.getResources().getString(R$string.picker_talkback_tip);
            cOUINumberPicker3.addTalkbackSuffix(string3);
            cOUINumberPicker2.addTalkbackSuffix(string3);
            cOUINumberPicker.addTalkbackSuffix(string3);
        }
        this.mBackgroundRadius = context.getResources().getDimensionPixelOffset(R$dimen.coui_selected_background_radius);
        this.mBackgroundLeft = context.getResources().getDimensionPixelOffset(R$dimen.coui_selected_background_horizontal_padding);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private Calendar getCalendarForLocale(Calendar calendar, Locale locale) {
        if (calendar == null) {
            return Calendar.getInstance(locale);
        }
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance(locale);
        calendar2.setTimeInMillis(timeInMillis);
        return calendar2;
    }

    private static class IncompleteDate {
        private Calendar mDate;
        private boolean mIsIncomplete;

        public IncompleteDate(Locale locale) {
            this.mDate = Calendar.getInstance(locale);
        }

        public boolean after(Calendar calendar) {
            if (this.mIsIncomplete) {
                return false;
            }
            return this.mDate.after(calendar);
        }

        public boolean before(Calendar calendar) {
            if (this.mIsIncomplete) {
                return false;
            }
            return this.mDate.before(calendar);
        }

        void clampDate(Calendar calendar, Calendar calendar2) {
            if (this.mIsIncomplete) {
                return;
            }
            if (this.mDate.before(calendar)) {
                set(1, calendar.get(1));
                set(2, calendar.get(2));
                set(5, calendar.get(5));
            } else if (this.mDate.after(calendar2)) {
                set(1, calendar2.get(1));
                set(2, calendar2.get(2));
                set(5, calendar2.get(5));
            }
        }

        int clampDay(int i10) {
            int actualMaximum = this.mDate.getActualMaximum(5);
            return i10 > actualMaximum ? actualMaximum : i10;
        }

        public void clear() {
            this.mDate.clear();
            this.mIsIncomplete = false;
        }

        public int get(int i10) {
            if (this.mIsIncomplete && i10 != 5 && i10 != 2 && i10 == 1) {
                return Integer.MIN_VALUE;
            }
            return this.mDate.get(i10);
        }

        int getActualMaximum(int i10) {
            return this.mDate.getActualMaximum(i10);
        }

        int getActualMinimum(int i10) {
            return this.mDate.getActualMinimum(i10);
        }

        public Date getTime() {
            return this.mDate.getTime();
        }

        public long getTimeInMillis() {
            return this.mDate.getTimeInMillis();
        }

        public void set(int i10, int i11) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 5) {
                        this.mDate.set(5, clampDay(i11));
                        return;
                    }
                    return;
                } else {
                    int i12 = this.mDate.get(1);
                    int i13 = this.mDate.get(5);
                    this.mDate.clear();
                    this.mDate.set(1, i12);
                    this.mDate.set(2, i11);
                    this.mDate.set(5, clampDay(i13));
                    return;
                }
            }
            if (i11 != Integer.MIN_VALUE) {
                this.mIsIncomplete = false;
                int i14 = this.mDate.get(2);
                int i15 = this.mDate.get(5);
                this.mDate.clear();
                this.mDate.set(1, i11);
                this.mDate.set(2, i14);
                this.mDate.set(5, clampDay(i15));
                return;
            }
            this.mIsIncomplete = true;
            int i16 = this.mDate.get(2);
            int i17 = this.mDate.get(5);
            this.mDate.clear();
            this.mDate.set(i10, COUIDatePicker.A_LEAP_YEAR);
            this.mDate.set(2, i16);
            this.mDate.set(5, clampDay(i17));
        }

        public void setTimeInMillis(long j10) {
            this.mDate.setTimeInMillis(j10);
            this.mIsIncomplete = false;
        }

        public void setWith(IncompleteDate incompleteDate) {
            this.mDate.setTimeInMillis(incompleteDate.mDate.getTimeInMillis());
            this.mIsIncomplete = incompleteDate.mIsIncomplete;
        }

        public void set(int i10, int i11, int i12) {
            set(1, i10);
            set(2, i11);
            set(5, i12);
        }
    }
}
