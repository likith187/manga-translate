.class public Lcom/coui/appcompat/picker/COUILunarDatePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;,
        Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;,
        Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final CHINESE_NUMBER:[Ljava/lang/String;

.field private static final DAY_OF_REFRESH_SPINNER:I = 0x1b

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_DAY:I = 0x1f

.field private static final DEFAULT_END_HOUR:I = 0x17

.field private static final DEFAULT_END_MINUTE:I = 0x3b

.field private static final DEFAULT_END_MONTH:I = 0xb

.field private static final DEFAULT_END_YEAR:I = 0x833

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x776

.field public static final IGNORED_YEAR:I = -0x80000000

.field private static final IGNORED_YEAR_MONTH_COUNT:I = 0x18

.field private static final LEAPYEAR_MONTH_COUNT:I = 0xd

.field private static final LONGPRESS_UPDATE_INTERVAL:I = 0x64

.field private static final MIN_BACKGROUND_DIVIDER_HEIGHT:I = 0x1

.field private static final MONTH_LONGPRESS_UPDATE_INTERVAL:I = 0xc8

.field private static final NORMAL_MONTH_COUNT:I = 0xc

.field private static final PICKER_CHILD_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "COUILunarDatePicker"

.field private static final TEN:I = 0xa

.field private static final TWO:I = 0x2

.field private static final ZERO:I

.field private static sLeapString:Ljava/lang/String;

.field private static sMaxDate:Ljava/util/Calendar;

.field private static sMinDate:Ljava/util/Calendar;


# instance fields
.field private mBackgroundDividerHeight:I

.field private mBackgroundLeft:I

.field private mBackgroundRadius:I

.field private mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

.field private mIsEnabled:Z

.field private mMaxWidth:I

.field private final mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

.field private mYearIgnorable:Z

.field private final mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v10, "\u5341\u4e00"

    const-string v11, "\u5341\u4e8c"

    const-string v0, "\u4e00"

    const-string v1, "\u4e8c"

    const-string v2, "\u4e09"

    const-string v3, "\u56db"

    const-string v4, "\u4e94"

    const-string v5, "\u516d"

    const-string v6, "\u4e03"

    const-string v7, "\u516b"

    const-string v8, "\u4e5d"

    const-string v9, "\u5341"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->CHINESE_NUMBER:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    sget-object v1, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x776

    const/4 v3, 0x2

    const/16 v4, 0xa

    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    sget-object v7, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v11, 0x17

    const/16 v12, 0x3b

    const/16 v8, 0x833

    const/16 v9, 0xb

    const/16 v10, 0x1f

    invoke-virtual/range {v7 .. v12}, Ljava/util/Calendar;->set(IIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/picker/R$attr;->couiDatePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/picker/R$style;->DatePickerStyle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 4
    invoke-direct/range {p0 .. p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v5, 0xc

    .line 5
    iput v5, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mNumberOfMonths:I

    const/4 v5, 0x1

    .line 6
    iput-boolean v5, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mIsEnabled:Z

    const/4 v6, 0x0

    .line 7
    invoke-static {v0, v6}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 9
    sget-object v7, Lcom/support/picker/R$styleable;->COUILunarDatePicker:[I

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 10
    sget v8, Lcom/support/picker/R$styleable;->COUILunarDatePicker_couiYearIgnorable:I

    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearIgnorable:Z

    .line 11
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    sget-object v7, Lcom/support/picker/R$styleable;->COUIPickersCommonAttrs:[I

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 13
    sget v3, Lcom/support/picker/R$styleable;->COUIPickersCommonAttrs_couiPickersMaxWidth:I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMaxWidth:I

    .line 14
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/picker/R$dimen;->coui_number_picker_background_divider_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundDividerHeight:I

    .line 16
    sget v2, Lcom/support/picker/R$layout;->coui_lunar_date_picker:I

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/picker/R$array;->coui_lunar_month:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 18
    const-string v3, "layout_inflater"

    .line 19
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 20
    invoke-virtual {v3, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/picker/R$string;->coui_lunar_leap_string:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    .line 22
    new-instance v2, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;-><init>(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V

    .line 23
    new-instance v3, Lcom/coui/appcompat/picker/COUILunarDatePicker$2;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$2;-><init>(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V

    .line 24
    sget v4, Lcom/support/picker/R$id;->pickers:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 25
    sget v4, Lcom/support/picker/R$id;->day:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v4, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    const-wide/16 v7, 0x64

    .line 26
    invoke-virtual {v4, v7, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 27
    invoke-virtual {v4, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    .line 28
    invoke-virtual {v4, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    .line 29
    sget v9, Lcom/support/picker/R$id;->month:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    .line 30
    invoke-virtual {v9, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    .line 31
    iget v10, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mNumberOfMonths:I

    sub-int/2addr v10, v5

    invoke-virtual {v9, v10}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    .line 32
    iget-object v10, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const-wide/16 v10, 0xc8

    .line 33
    invoke-virtual {v9, v10, v11}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 34
    invoke-virtual {v9, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    .line 35
    invoke-virtual {v9, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    .line 36
    sget v10, Lcom/support/picker/R$id;->year:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v10, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    .line 37
    invoke-virtual {v10, v7, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 38
    invoke-virtual {v10, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    .line 39
    invoke-virtual {v10, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    .line 40
    iget-boolean v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearIgnorable:Z

    invoke-virtual {v10, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setIgnorable(Z)V

    .line 41
    invoke-virtual {v0, v5}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setSpinnersShown(Z)V

    .line 42
    invoke-virtual {v0, v5}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setCalendarViewShown(Z)V

    .line 43
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->clear()V

    .line 44
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/16 v3, 0x776

    invoke-virtual {v2, v3, v6, v5}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->set(III)V

    .line 45
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setMinDate(J)V

    .line 46
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->clear()V

    .line 47
    iget-object v11, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/16 v15, 0x17

    const/16 v16, 0x3b

    const/16 v12, 0x833

    const/16 v13, 0xb

    const/16 v14, 0x1f

    invoke-virtual/range {v11 .. v16}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->set(IIIII)V

    .line 48
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setMaxDate(J)V

    .line 49
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 50
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v2, v5}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v3

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v7, 0x5

    .line 51
    invoke-virtual {v6, v7}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v6

    const/4 v7, 0x0

    .line 52
    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->init(IIILcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;)V

    .line 53
    invoke-virtual {v10}, Lcom/coui/appcompat/picker/COUINumberPicker;->isAccessibilityEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/picker/R$string;->picker_talkback_tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v10, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v9, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v4, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/picker/R$dimen;->coui_selected_background_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundRadius:I

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/picker/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundLeft:I

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/picker/COUILunarDatePicker;Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setDate(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->notifyDateChanged()V

    return-void
.end method

.method private clampDate()V
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    sget-object v1, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->clampDate(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method private getCalendarForLocale(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->getTimeInMillis()J

    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

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

.method private static getLunarDateString(IIII)Ljava/lang/String;
    .locals 3

    .line 6
    const-string v0, ""

    if-lez p1, :cond_3

    const/high16 v1, -0x80000000

    .line 7
    const-string v2, "\u6708"

    if-eq p0, v1, :cond_1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5e74"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->CHINESE_NUMBER:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_2

    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/coui/appcompat/picker/COUILunarDatePicker;->CHINESE_NUMBER:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p3, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x5

    .line 3
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 4
    invoke-static {v1, v3, p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object p0

    const/4 v1, 0x0

    .line 5
    aget v1, p0, v1

    aget v0, p0, v0

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    invoke-static {v1, v0, v2, p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLunarDateString2(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p0

    invoke-static {v1, v3, p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object p0

    const/4 v1, 0x0

    aget v1, p0, v1

    aget v0, p0, v0

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    invoke-static {v1, v0, v2, p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isNewDate(III)Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p1

    if-ne p1, p3, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p0

    if-eq p0, p2, :cond_0

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

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;->onLunarDateChanged(Lcom/coui/appcompat/picker/COUILunarDatePicker;III)V

    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x64

    if-eq v3, v4, :cond_1

    const/16 v4, 0x79

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setImeOptions(Lcom/coui/appcompat/picker/COUINumberPicker;II)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setImeOptions(Lcom/coui/appcompat/picker/COUINumberPicker;II)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setImeOptions(Lcom/coui/appcompat/picker/COUINumberPicker;II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getCalendarForLocale(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getCalendarForLocale(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    return-void
.end method

.method private setDate(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->set(III)V

    .line 2
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->clampDate()V

    return-void
.end method

.method private setDate(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

    .line 4
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->clampDate()V

    return-void
.end method

.method private setImeOptions(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .locals 1

    const/4 p0, 0x1

    sub-int/2addr p2, p0

    if-ge p3, p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->TAG:Ljava/lang/String;

    const-string p1, "spinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private updateCalendarView()V
    .locals 0

    return-void
.end method

.method private updateSpinners()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v1

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v5, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v5

    invoke-static {v1, v3, v5}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v3

    const/4 v5, 0x0

    aget v7, v3, v5

    invoke-static {v7}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->leapMonth(I)I

    move-result v7

    aget v8, v3, v2

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-static {v9}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getLunarDateString2(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_0

    :goto_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_0
    if-ge v8, v7, :cond_1

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    if-ne v8, v7, :cond_2

    sget-object v10, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/high16 v10, -0x80000000

    if-ne v1, v10, :cond_3

    const/4 v11, 0x3

    aget v11, v3, v11

    if-nez v11, :cond_3

    add-int/lit8 v8, v8, 0xc

    :cond_3
    const/16 v11, 0xd

    const/16 v12, 0x18

    const/16 v13, 0xc

    if-ne v1, v10, :cond_4

    iput v12, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mNumberOfMonths:I

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    iput v11, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mNumberOfMonths:I

    move v14, v2

    goto :goto_3

    :cond_5
    iput v13, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mNumberOfMonths:I

    :goto_2
    move v14, v5

    :goto_3
    aget v15, v3, v5

    aget v6, v3, v2

    invoke-static {v15, v6}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v6

    if-eqz v7, :cond_6

    if-ne v8, v7, :cond_6

    sget-object v15, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    aget v6, v3, v5

    invoke-static {v6}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v6

    :cond_6
    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object v15, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v15}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->beforeOrEqual(Ljava/util/Calendar;)Z

    move-result v9

    const/4 v15, 0x0

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v9, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v11, v3, v4

    invoke-virtual {v9, v11}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v9, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mNumberOfMonths:I

    sub-int/2addr v9, v2

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_4

    :cond_7
    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object v11, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v9, v11}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->afterOrEqual(Ljava/util/Calendar;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v9, v3, v4

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_4

    :cond_8
    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v9, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v9, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mNumberOfMonths:I

    sub-int/2addr v9, v2

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    :goto_4
    iget v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mNumberOfMonths:I

    new-array v9, v6, [Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/String;

    if-ne v1, v10, :cond_a

    move v1, v5

    :goto_5
    if-ge v1, v12, :cond_e

    if-ge v1, v13, :cond_9

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v9, v1

    goto :goto_6

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v10, v1, -0xc

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    if-eqz v14, :cond_d

    move v1, v5

    :goto_7
    if-ge v1, v7, :cond_b

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v9, v9, v1

    aput-object v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v11, v7, -0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    add-int/2addr v1, v2

    const/16 v7, 0xd

    :goto_8
    if-ge v1, v7, :cond_c

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v1

    iget-object v7, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v6, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    goto :goto_9

    :cond_d
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v6

    iget-object v7, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    :cond_e
    :goto_9
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v9}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v1

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v6

    sub-int v7, v1, v6

    add-int/2addr v7, v2

    new-array v7, v7, [Ljava/lang/String;

    move v9, v6

    :goto_a
    if-gt v9, v1, :cond_f

    sub-int v10, v9, v6

    invoke-static {v9}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_f
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    sget-object v1, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sget-object v6, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v2

    sget-object v7, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v1, v6, v7}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v1

    sget-object v6, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sget-object v7, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v6, v7, v7}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v6

    iget-object v7, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v1, v1, v5

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v6, v6, v5

    invoke-virtual {v1, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v2, v3, v5

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v1, v3, v4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    iget v1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundLeft:I

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundDividerHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    iget v1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundLeft:I

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mBackgroundDividerHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

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

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p0

    return p0
.end method

.method public getDaySpinner()Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method public getLeapMonth()I
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p0

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->leapMonth(I)I

    move-result p0

    return p0
.end method

.method public getLunarDate()[I
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p0

    invoke-static {v0, v2, p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object p0

    return-object p0
.end method

.method public getMaxDate()J
    .locals 2

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p0

    return p0
.end method

.method public getMonthSpinner()Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method public getOnDateChangedListener()Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;

    return-object p0
.end method

.method public getSpinnersShown()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    return p0
.end method

.method public getYear()I
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p0

    return p0
.end method

.method public getYearSpinner()Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method public init(IIILcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setDate(III)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateSpinners()V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateCalendarView()V

    iput-object p4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mIsEnabled:Z

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

.method public isLeapMonth(I)Z
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p0

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->leapMonth(I)I

    move-result p0

    if-ne p1, p0, :cond_0

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

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMaxWidth:I

    if-lez v2, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->clearNumberPickerPadding()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->clearNumberPickerPadding()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->clearNumberPickerPadding()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->measureChildConstrained(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->measureChildConstrained(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->measureChildConstrained(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingLeft(I)V

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getLunarDateString2(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;->access$1100(Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;->access$1200(Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;->access$1300(Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setDate(III)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateSpinners()V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateCalendarView()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v6, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/coui/appcompat/picker/COUILunarDatePicker$1;)V

    return-object v6
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->refresh()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->refresh()V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->refresh()V

    :cond_2
    return-void
.end method

.method public scrollForceFinished()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollForceFinished()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollForceFinished()V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollForceFinished()V

    :cond_2
    return-void
.end method

.method public setCalendarViewShown(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setMaxDate(J)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    sget-object v2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    sget-object v3, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    sget-object p1, Lcom/coui/appcompat/picker/COUILunarDatePicker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMaxDate failed!:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "<->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object p2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->after(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object p2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    sget-object v2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    sget-object v3, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    sget-object p1, Lcom/coui/appcompat/picker/COUILunarDatePicker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMinDate failed!:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "<->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object p2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->before(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object p2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateSpinners()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_2
    return-void
.end method

.method public setOnDateChangedListener(Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

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

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateIntensity(F)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateIntensity(F)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateIntensity(F)V

    return-void
.end method

.method public setVibrateLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateLevel(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateLevel(I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateLevel(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setDate(III)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateSpinners()V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->updateCalendarView()V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->notifyDateChanged()V

    return-void
.end method
