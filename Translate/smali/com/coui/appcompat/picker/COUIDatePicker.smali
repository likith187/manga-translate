.class public Lcom/coui/appcompat/picker/COUIDatePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/picker/COUIDatePicker$Format;,
        Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;,
        Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;,
        Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final A_LEAP_YEAR:I = 0x7e4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final HOURS_OF_HALF_DAY:I = 0xc

.field public static final IGNORED_YEAR:I = -0x80000000

.field private static final LOG_TAG:Ljava/lang/String; = "COUIDatePicker"

.field private static final LONGPRESS_UPDATE_INTERVAL:I = 0x64

.field private static final MD_FORMAT:Ljava/lang/String; = "MM/dd"

.field private static final MIN_BACKGROUND_DIVIDER_HEIGHT:I = 0x1

.field private static final MONTH_LONGPRESS_UPDATE_INTERVAL:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "COUIDatePicker"

.field private static sOrderEn:[C


# instance fields
.field private mBackgroundDividerHeight:I

.field private mBackgroundLeft:I

.field private mBackgroundRadius:I

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDayFormat:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

.field private final mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

.field private mEndDate:Ljava/util/Date;

.field private mFocusColor:I

.field private mIsEnabled:Z

.field mLeftPickerPosition:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMaxWidth:I

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthFormat:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

.field private final mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

.field private mNormalColor:I

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

.field mRightPickerPosition:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

.field private mYearFormat:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

.field private mYearIgnorable:Z

.field private final mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/picker/COUIDatePicker;->sOrderEn:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x64s
        0x4ds
        0x79s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/picker/R$attr;->couiDatePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/picker/R$style;->DatePickerStyle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/picker/COUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 4
    invoke-direct/range {p0 .. p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM/dd/yyyy"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDateFormat:Ljava/text/DateFormat;

    const/4 v4, -0x1

    .line 6
    iput v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mLeftPickerPosition:I

    .line 7
    iput v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mRightPickerPosition:I

    const/4 v5, 0x1

    .line 8
    iput-boolean v5, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mIsEnabled:Z

    const/4 v6, 0x0

    .line 9
    invoke-static {v0, v6}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 10
    iput-object v1, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/coui/appcompat/picker/COUIDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 12
    sget-object v7, Lcom/support/picker/R$styleable;->COUIDatePicker:[I

    move/from16 v8, p4

    invoke-virtual {v1, v2, v7, v3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 13
    sget v8, Lcom/support/picker/R$styleable;->COUIDatePicker_spinnerShown:I

    invoke-virtual {v7, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 14
    sget v9, Lcom/support/picker/R$styleable;->COUIDatePicker_calendarViewShown:I

    invoke-virtual {v7, v9, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 15
    sget v10, Lcom/support/picker/R$styleable;->COUIDatePicker_beginYear:I

    const/16 v11, 0x76c

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 16
    sget v11, Lcom/support/picker/R$styleable;->COUIDatePicker_endYear:I

    const/16 v12, 0x834

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 17
    sget v12, Lcom/support/picker/R$styleable;->COUIDatePicker_minDate:I

    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 18
    sget v13, Lcom/support/picker/R$styleable;->COUIDatePicker_maxDate:I

    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/support/picker/R$array;->coui_solor_mounth:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 20
    sget v14, Lcom/support/picker/R$styleable;->COUIDatePicker_calendarTextColor:I

    invoke-virtual {v7, v14, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    iput v14, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mNormalColor:I

    .line 21
    sget v14, Lcom/support/picker/R$styleable;->COUIDatePicker_calendarSelectedTextColor:I

    invoke-virtual {v7, v14, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mFocusColor:I

    .line 22
    sget v4, Lcom/support/picker/R$layout;->coui_date_picker:I

    .line 23
    sget v14, Lcom/support/picker/R$styleable;->COUIDatePicker_couiYearIgnorable:I

    invoke-virtual {v7, v14, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    iput-boolean v14, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearIgnorable:Z

    .line 24
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    sget-object v7, Lcom/support/picker/R$styleable;->COUIPickersCommonAttrs:[I

    invoke-virtual {v1, v2, v7, v3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 26
    sget v3, Lcom/support/picker/R$styleable;->COUIPickersCommonAttrs_couiPickersMaxWidth:I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxWidth:I

    .line 27
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/picker/R$dimen;->coui_number_picker_background_divider_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundDividerHeight:I

    .line 29
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 30
    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    new-instance v2, Lcom/coui/appcompat/picker/COUIDatePicker$1;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$1;-><init>(Lcom/coui/appcompat/picker/COUIDatePicker;)V

    .line 32
    new-instance v3, Lcom/coui/appcompat/picker/COUIDatePicker$2;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$2;-><init>(Lcom/coui/appcompat/picker/COUIDatePicker;)V

    .line 33
    sget v4, Lcom/support/picker/R$id;->pickers:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 34
    new-instance v4, Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    sget v7, Lcom/support/picker/R$string;->coui_year:I

    const-string v14, "YEAR"

    invoke-direct {v4, v0, v7, v14}, Lcom/coui/appcompat/picker/COUIDatePicker$Format;-><init>(Lcom/coui/appcompat/picker/COUIDatePicker;ILjava/lang/String;)V

    iput-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearFormat:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    .line 35
    new-instance v4, Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    sget v7, Lcom/support/picker/R$string;->coui_month:I

    const-string v14, "MONTH"

    invoke-direct {v4, v0, v7, v14}, Lcom/coui/appcompat/picker/COUIDatePicker$Format;-><init>(Lcom/coui/appcompat/picker/COUIDatePicker;ILjava/lang/String;)V

    iput-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthFormat:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    .line 36
    new-instance v4, Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    sget v7, Lcom/support/picker/R$string;->coui_day:I

    const-string v14, "DAY"

    invoke-direct {v4, v0, v7, v14}, Lcom/coui/appcompat/picker/COUIDatePicker$Format;-><init>(Lcom/coui/appcompat/picker/COUIDatePicker;ILjava/lang/String;)V

    iput-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDayFormat:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    .line 37
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mEndDate:Ljava/util/Date;

    .line 38
    sget v4, Lcom/support/picker/R$id;->day:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    const-wide/16 v14, 0x64

    .line 39
    invoke-virtual {v4, v14, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 40
    invoke-virtual {v4, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    .line 41
    invoke-virtual {v4, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    .line 42
    sget v7, Lcom/support/picker/R$id;->month:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v7, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    .line 43
    invoke-virtual {v7, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    .line 44
    iget v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mNumberOfMonths:I

    sub-int/2addr v6, v5

    invoke-virtual {v7, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    const-wide/16 v5, 0xc8

    .line 45
    invoke-virtual {v7, v5, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 46
    invoke-virtual {v7, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    .line 47
    invoke-virtual {v7, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    .line 48
    sget v5, Lcom/support/picker/R$id;->year:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v5, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    .line 49
    invoke-virtual {v5, v14, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 50
    invoke-virtual {v5, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    .line 51
    invoke-virtual {v5, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    .line 52
    iget-boolean v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearIgnorable:Z

    invoke-virtual {v5, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setIgnorable(Z)V

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateSpinnerColor()V

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUIDatePicker;->setSpinnersShown(Z)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0, v8}, Lcom/coui/appcompat/picker/COUIDatePicker;->setSpinnersShown(Z)V

    .line 56
    invoke-virtual {v0, v9}, Lcom/coui/appcompat/picker/COUIDatePicker;->setCalendarViewShown(Z)V

    .line 57
    :goto_0
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->clear()V

    .line 58
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-static {v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {v0, v12, v2}, Lcom/coui/appcompat/picker/COUIDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 60
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v10, v6, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(III)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 61
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v10, v6, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(III)V

    .line 62
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-static {v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coui/appcompat/picker/COUIDatePicker;->setMinDate(J)V

    .line 63
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->clear()V

    .line 64
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0xb

    const/16 v6, 0x1f

    if-nez v2, :cond_3

    .line 65
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-static {v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {v0, v13, v2}, Lcom/coui/appcompat/picker/COUIDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 66
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v11, v3, v6}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(III)V

    goto :goto_2

    .line 67
    :cond_3
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v11, v3, v6}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(III)V

    .line 68
    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-static {v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coui/appcompat/picker/COUIDatePicker;->setMaxDate(J)V

    .line 69
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 70
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v3

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v8, 0x5

    .line 71
    invoke-virtual {v6, v8}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v6

    const/4 v8, 0x0

    .line 72
    invoke-virtual {v0, v2, v3, v6, v8}, Lcom/coui/appcompat/picker/COUIDatePicker;->init(IIILcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;)V

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->reorderSpinners()V

    .line 74
    invoke-virtual {v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->isAccessibilityEnable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/picker/R$string;->picker_talkback_tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v5, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v7, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 79
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/picker/R$dimen;->coui_selected_background_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundRadius:I

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/picker/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundLeft:I

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/picker/COUIDatePicker;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mEndDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/picker/COUIDatePicker;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/picker/COUIDatePicker;Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->setDate(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/picker/COUIDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/picker/COUIDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Lcom/coui/appcompat/picker/COUIDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->notifyDateChanged()V

    return-void
.end method

.method private clampDate()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->clampDate(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method private formatDate()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->access$1000(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x14

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x18

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCalendarForLocale(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->access$1000(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->getTimeInMillis()J

    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V

    :goto_0
    return-object p0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    if-nez p1, :cond_0

    .line 7
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 9
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    .line 10
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p2
.end method

.method private isNewDate(III)Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result p1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result p0

    if-eq p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private measureChildConstrained(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p3, v1, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private notifyDateChanged()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;->onDateChanged(Lcom/coui/appcompat/picker/COUIDatePicker;III)V

    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private reorderSpinners()V
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyyMMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    const/16 v4, 0x79

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v3, "y"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v3, "d"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v3, "M"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    iget v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mLeftPickerPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mLeftPickerPosition:I

    :cond_5
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mRightPickerPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->getCalendarForLocale(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->getCalendarForLocale(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->getActualMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mNumberOfMonths:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mShortMonths:[Ljava/lang/String;

    return-void
.end method

.method private setDate(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(III)V

    .line 2
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->clampDate()V

    return-void
.end method

.method private setDate(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V

    .line 4
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->clampDate()V

    return-void
.end method

.method private updateCalendarView()V
    .locals 0

    return-void
.end method

.method private updateSpinnerColor()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mNormalColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerNormalColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mNormalColor:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerNormalColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mNormalColor:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerNormalColor(I)V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mFocusColor:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerFocusColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mFocusColor:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerFocusColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mFocusColor:I

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerFocusColor(I)V

    :cond_1
    return-void
.end method

.method private updateSpinners()V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthFormat:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    :goto_3
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x5

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_7

    move v3, v1

    :cond_7
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_a

    move v3, v1

    :cond_a
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_c

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_c

    move v3, v1

    :cond_c
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v5}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v5}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    :goto_4
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearFormat:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v1, v5}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDayFormat:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v0

    const/16 v1, 0x1b

    if-le v0, v1, :cond_e

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    iget v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundLeft:I

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundDividerHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    iget v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundLeft:I

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mBackgroundDividerHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCalendarViewShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result p0

    return p0
.end method

.method public getDaySpinner()Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result p0

    return p0
.end method

.method public getMonthSpinner()Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method public getOnDateChangedListener()Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

    return-object p0
.end method

.method public getSpinnersShown()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    return p0
.end method

.method public getYear()I
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result p0

    return p0
.end method

.method public getYearSpinner()Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method public init(IIILcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker;->setDate(III)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateSpinners()V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateCalendarView()V

    iput-object p4, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mIsEnabled:Z

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxWidth:I

    if-lez v2, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->clearNumberPickerPadding()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->clearNumberPickerPadding()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->clearNumberPickerPadding()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->measureChildConstrained(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->measureChildConstrained(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->measureChildConstrained(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mLeftPickerPosition:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mLeftPickerPosition:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingLeft(I)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mRightPickerPosition:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mRightPickerPosition:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingRight(I)V

    :cond_2
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->formatDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;->access$1200(Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;->access$1300(Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;->access$1400(Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->setDate(III)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateSpinners()V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateCalendarView()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v6, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/coui/appcompat/picker/COUIDatePicker$1;)V

    return-object v6
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->refresh()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->refresh()V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->refresh()V

    :cond_2
    return-void
.end method

.method public scrollForceFinished()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollForceFinished()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollForceFinished()V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollForceFinished()V

    :cond_2
    return-void
.end method

.method public setBackground(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCalendarViewShown(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setFocusColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mFocusColor:I

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateSpinnerColor()V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->after(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->before(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateSpinners()V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mNormalColor:I

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateSpinnerColor()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_2
    return-void
.end method

.method public setOnDateChangedListener(Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setVibrateIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateIntensity(F)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateIntensity(F)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateIntensity(F)V

    return-void
.end method

.method public setVibrateLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateLevel(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateLevel(I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateLevel(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker;->setDate(III)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateSpinners()V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->updateCalendarView()V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->notifyDateChanged()V

    return-void
.end method
