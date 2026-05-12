.class public Lcom/coui/appcompat/picker/COUITimePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/picker/COUITimePicker$Format;,
        Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;
    }
.end annotation


# static fields
.field private static final HOURS_OF_A_DAY:I = 0x17

.field private static final HOURS_OF_HALF_DAY:I = 0xc

.field private static final LEAPYEAR_STEP_FOUR:I = 0x4

.field private static final LEAPYEAR_STEP_FOUR_HUN:I = 0x190

.field private static final LEAPYEAR_STEP_HUN:I = 0x64

.field private static final MILLISECOND_A_DAY:J = 0x5265c00L

.field private static final MINUTES_OF_A_HOUR:I = 0x3b

.field private static final MINUTES_STEP:I = 0x5

.field private static final MIN_BACKGROUND_DIVIDER_HEIGHT:I = 0x1

.field private static final START_YEAR:I = 0x76c

.field private static final TAG:Ljava/lang/String; = "COUITimePicker"

.field private static final TOTAL_YEAR:I = 0x64

.field private static final YEAR_AMOUNT_LEAP:I = 0x16e

.field private static final YEAR_AMOUNT_NOT_LEAP:I = 0x16d


# instance fields
.field private f:Lcom/coui/appcompat/picker/COUITimePicker$Format;

.field private mAmPm:I

.field private mBackgroundDividerHeight:I

.field private mBackgroundLeft:I

.field private mBackgroundRadius:I

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDateNamesTemp:[Ljava/lang/String;

.field private mDefaultCalendar:Ljava/util/Calendar;

.field private mEndDate:Ljava/util/Date;

.field private mIsMinuteFiveStep:Z

.field mLeftPickerPosition:I

.field private mMaxWidth:I

.field private mOnTimeChangeListener:Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

.field private mOutformatter:Ljava/text/SimpleDateFormat;

.field private mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

.field private mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

.field private mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

.field private mPickerLayout:Landroid/widget/LinearLayout;

.field private mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

.field mRightPickerPosition:I

.field private mStartTime:J

.field private mTextAMPM:[Ljava/lang/String;

.field private mTextDates:[Ljava/lang/String;

.field private mTextDay:Ljava/lang/String;

.field private mTextToday:Ljava/lang/String;

.field private mTodayCalendar:Ljava/util/Calendar;

.field private mTodayDate:I

.field private mTodayIndex:I

.field private mTodayMonth:I

.field private mTodayYear:I

.field private selectedDateUtterance:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/picker/R$attr;->couiTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/picker/R$style;->TimePickerStyle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/picker/COUITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayIndex:I

    .line 6
    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mAmPm:I

    .line 7
    const-string v1, ""

    iput-object v1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mLeftPickerPosition:I

    .line 9
    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mRightPickerPosition:I

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 11
    sget-object v1, Lcom/support/picker/R$styleable;->COUIPickersCommonAttrs:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    sget p3, Lcom/support/picker/R$styleable;->COUIPickersCommonAttrs_couiPickersMaxWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mMaxWidth:I

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$array;->coui_time_picker_ampm:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextAMPM:[Ljava/lang/String;

    .line 16
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$string;->coui_time_picker_today:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextToday:Ljava/lang/String;

    .line 17
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$string;->coui_time_picker_day:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextDay:Ljava/lang/String;

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mCalendar:Ljava/util/Calendar;

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 p3, 0x1

    .line 20
    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayYear:I

    .line 21
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 p4, 0x2

    invoke-virtual {p2, p4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayMonth:I

    .line 22
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 p4, 0x5

    invoke-virtual {p2, p4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayDate:I

    .line 23
    new-instance p2, Ljava/text/SimpleDateFormat;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "yyyy MMM dd"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextDay:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " E"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p2, p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    .line 24
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p4, Lcom/support/picker/R$layout;->coui_time_picker:I

    invoke-virtual {p2, p4, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 25
    sget p4, Lcom/support/picker/R$id;->coui_time_picker_date:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object p4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    .line 26
    sget p4, Lcom/support/picker/R$id;->coui_time_picker_hour:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object p4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    .line 27
    sget p4, Lcom/support/picker/R$id;->coui_time_picker_minute:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object p4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    .line 28
    sget p4, Lcom/support/picker/R$id;->coui_time_picker_ampm:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object p4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    .line 29
    sget p4, Lcom/support/picker/R$id;->pickers:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerLayout:Landroid/widget/LinearLayout;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/support/picker/R$dimen;->coui_selected_background_radius:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundRadius:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/support/picker/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundLeft:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/support/picker/R$dimen;->coui_number_picker_background_divider_height:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundDividerHeight:I

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string p4, "zh"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string p4, "en"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 34
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/picker/R$dimen;->coui_number_picker_width_biggest:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->reorderSpinners()V

    .line 36
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->isAccessibilityEnable()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/support/picker/R$string;->picker_talkback_tip:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 38
    iget-object p4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p4, :cond_1

    .line 39
    invoke-virtual {p4, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 40
    :cond_1
    iget-object p4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/picker/R$string;->coui_hour:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 41
    iget-object p4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p4, :cond_2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/picker/R$string;->coui_minute:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 43
    :cond_2
    iget-object p4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p4, :cond_3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/picker/R$string;->coui_minute:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 45
    :cond_3
    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/picker/COUITimePicker;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mAmPm:I

    return p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/picker/COUITimePicker;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mAmPm:I

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/picker/COUITimePicker;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextDates:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextToday:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextDay:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mEndDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/picker/COUITimePicker;)Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mOnTimeChangeListener:Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/picker/COUITimePicker;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->is24Hours()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/picker/COUITimePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/picker/COUITimePicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mIsMinuteFiveStep:Z

    return p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/picker/COUITimePicker;I)Ljava/util/Date;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUITimePicker;->getDateFromValue(I)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/picker/COUITimePicker;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUITimePicker;->getDateYMDW(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/picker/COUITimePicker;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mDateNamesTemp:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/picker/COUITimePicker;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayIndex:I

    return p0
.end method

.method private deduplicate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getDateFromValue(I)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mDateNamesTemp:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    :try_start_0
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getDateYMDW(I)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mEndDate:Ljava/util/Date;

    iget-wide v1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mStartTime:J

    int-to-long v3, p1

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/coui/appcompat/picker/COUITimePicker;->isToday(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayIndex:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayIndex:I

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mEndDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDaysAmountOfYear(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUITimePicker;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16e

    goto :goto_0

    :cond_0
    const/16 p0, 0x16d

    :goto_0
    return p0
.end method

.method private is24Hours()Z
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "time_12_24"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "24"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLeapYear(I)Z
    .locals 0

    rem-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_0

    rem-int/lit8 p0, p1, 0x64

    if-nez p0, :cond_1

    :cond_0
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isToday(III)Z
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayYear:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayMonth:I

    if-ne p2, p1, :cond_0

    iget p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayDate:I

    if-ne p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private measureChildConstrained(Landroid/view/View;IIF)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p4, v1

    if-gez v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int p4, v1

    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p4, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p4, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p4, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p4, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p4, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p4, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p3, p4, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private reorderSpinners()V
    .locals 9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyyMMMddhm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/picker/COUITimePicker;->deduplicate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x4b

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    const/16 v6, 0x4d

    if-eq v5, v6, :cond_2

    const/16 v6, 0x61

    if-eq v5, v6, :cond_1

    const/16 v6, 0x64

    if-eq v5, v6, :cond_2

    const/16 v6, 0x68

    if-eq v5, v6, :cond_3

    const/16 v6, 0x6d

    if-eq v5, v6, :cond_0

    const/16 v6, 0x79

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "m"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "a"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v4, "D"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "h"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->is24Hours()Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_6

    iget v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mLeftPickerPosition:I

    if-ne v5, v6, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v7

    iput v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mLeftPickerPosition:I

    :cond_5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v7

    iput v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mRightPickerPosition:I

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v8, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eq v5, v8, :cond_8

    iget v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mLeftPickerPosition:I

    if-ne v5, v6, :cond_7

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v7

    iput v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mLeftPickerPosition:I

    :cond_7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v7

    iput v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mRightPickerPosition:I

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mLeftPickerPosition:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mRightPickerPosition:I

    iput v1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mLeftPickerPosition:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mRightPickerPosition:I

    :cond_a
    return-void
.end method

.method private reorderUtterance()V
    .locals 7

    const-string v0, ""

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyyMMMddhm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/picker/COUITimePicker;->deduplicate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x4b

    if-eq v4, v5, :cond_4

    const/16 v5, 0x4d

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    const/16 v5, 0x61

    if-eq v4, v5, :cond_1

    const/16 v5, 0x64

    if-eq v4, v5, :cond_3

    const/16 v5, 0x68

    if-eq v4, v5, :cond_4

    const/16 v5, 0x6d

    if-eq v4, v5, :cond_0

    const/16 v5, 0x79

    if-eq v4, v5, :cond_3

    goto/16 :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mContext:Landroid/content/Context;

    sget v6, Lcom/support/picker/R$string;->coui_minute:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->is24Hours()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->is24Hours()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextAMPM:[Ljava/lang/String;

    aget-object v4, v4, v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextAMPM:[Ljava/lang/String;

    aget-object v4, v4, v6

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    goto :goto_2

    :cond_3
    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->f:Lcom/coui/appcompat/picker/COUITimePicker$Format;

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/picker/COUITimePicker$Format;->format(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    move v3, v6

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mContext:Landroid/content/Context;

    sget v6, Lcom/support/picker/R$string;->coui_hour:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->is24Hours()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundLeft:I

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundRadius:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundLeft:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundDividerHeight:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundLeft:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mBackgroundDividerHeight:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUITimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getPickerAmPm()Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method public getPickerDate()Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method public getPickerHour()Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method public getPickerMinute()Lcom/coui/appcompat/picker/COUINumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    return-object p0
.end method

.method public getTimePicker()Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    :goto_0
    move v9, v3

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mTodayCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :goto_1
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v12, v11, 0x1

    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0xb

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mCalendar:Ljava/util/Calendar;

    move v4, v9

    move/from16 v16, v5

    move v5, v11

    move v15, v6

    move v6, v14

    move/from16 v17, v7

    move v7, v8

    move/from16 v18, v8

    move/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Ljava/util/Calendar;->set(IIIII)V

    const/4 v8, 0x0

    const v3, 0x8e94

    move v7, v3

    move v3, v8

    :goto_2
    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v9, -0x32

    add-int/2addr v4, v3

    invoke-direct {v0, v4}, Lcom/coui/appcompat/picker/COUITimePicker;->getDaysAmountOfYear(I)I

    move-result v4

    add-int/2addr v7, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v8

    move v4, v3

    :goto_3
    const/16 v5, 0x32

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v9, -0x32

    add-int/2addr v5, v3

    invoke-direct {v0, v5}, Lcom/coui/appcompat/picker/COUITimePicker;->getDaysAmountOfYear(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    new-array v3, v7, [Ljava/lang/String;

    iput-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextDates:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mDateNamesTemp:[Ljava/lang/String;

    if-le v12, v10, :cond_3

    add-int/lit8 v3, v9, -0x32

    invoke-direct {v0, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->isLeapYear(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {v0, v9}, Lcom/coui/appcompat/picker/COUITimePicker;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-le v12, v10, :cond_4

    add-int/lit8 v3, v9, -0x32

    invoke-direct {v0, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v4, v4, -0x1

    :cond_4
    move v6, v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v3, v5

    move v4, v9

    move-object v1, v5

    move v5, v11

    move v11, v6

    move v6, v14

    move/from16 v19, v7

    move/from16 v7, v18

    move v15, v8

    move/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Ljava/util/Calendar;->set(IIIII)V

    invoke-direct {v0, v9}, Lcom/coui/appcompat/picker/COUITimePicker;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne v12, v10, :cond_5

    const/16 v3, 0x1d

    if-ne v14, v3, :cond_5

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->add(II)V

    :cond_5
    const/16 v3, -0x32

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mStartTime:J

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mEndDate:Ljava/util/Date;

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUITimePicker;->is24Hours()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setTwoDigitFormatter()V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextAMPM:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mTextAMPM:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    :goto_4
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUITimePicker;->is24Hours()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    move/from16 v3, v18

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    goto :goto_6

    :cond_7
    move/from16 v1, v17

    move/from16 v3, v18

    if-lez v1, :cond_8

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v5, 0xc

    add-int/lit8 v8, v3, -0xc

    invoke-virtual {v4, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    goto :goto_5

    :cond_8
    iget-object v4, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    :goto_5
    iget-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iput v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mAmPm:I

    :goto_6
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v3, Lcom/coui/appcompat/picker/COUITimePicker$1;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/picker/COUITimePicker$1;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v3, Lcom/coui/appcompat/picker/COUITimePicker$2;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/picker/COUITimePicker$2;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v3, Lcom/coui/appcompat/picker/COUITimePicker$3;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/picker/COUITimePicker$3;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v3, Lcom/coui/appcompat/picker/COUITimePicker$4;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/picker/COUITimePicker$4;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-boolean v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mIsMinuteFiveStep:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    const/16 v1, 0xc

    new-array v3, v1, [Ljava/lang/String;

    move v8, v15

    :goto_7
    if-ge v8, v1, :cond_a

    mul-int/lit8 v1, v8, 0x5

    const/16 v4, 0xa

    if-ge v1, v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :goto_9
    aput-object v1, v3, v8

    add-int/lit8 v8, v8, 0x1

    const/16 v1, 0xc

    goto :goto_7

    :cond_a
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    move/from16 v4, v16

    div-int/lit8 v5, v4, 0x5

    invoke-virtual {v1, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mCalendar:Ljava/util/Calendar;

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_a

    :cond_b
    move/from16 v4, v16

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    :goto_a
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setTwoDigitFormatter()V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v3, Lcom/coui/appcompat/picker/COUITimePicker$5;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/picker/COUITimePicker$5;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v3, Lcom/coui/appcompat/picker/COUITimePicker$6;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/picker/COUITimePicker$6;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    move/from16 v3, v19

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v11}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    new-instance v1, Lcom/coui/appcompat/picker/COUITimePicker$Format;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/picker/COUITimePicker$Format;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    iput-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->f:Lcom/coui/appcompat/picker/COUITimePicker$Format;

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v2, Lcom/coui/appcompat/picker/COUITimePicker$7;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/picker/COUITimePicker$7;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v2, Lcom/coui/appcompat/picker/COUITimePicker$8;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/picker/COUITimePicker$8;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    return-object v0
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

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mMaxWidth:I

    if-lez v2, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->clearNumberPickerPadding()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->clearNumberPickerPadding()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->clearNumberPickerPadding()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->clearNumberPickerPadding()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v3

    int-to-float v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->measureChildConstrained(Landroid/view/View;IIF)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->measureChildConstrained(Landroid/view/View;IIF)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->measureChildConstrained(Landroid/view/View;IIF)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->measureChildConstrained(Landroid/view/View;IIF)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->is24Hours()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_0
    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mLeftPickerPosition:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mLeftPickerPosition:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingLeft(I)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mRightPickerPosition:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mRightPickerPosition:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingRight(I)V

    :cond_3
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->reorderUtterance()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->selectedDateUtterance:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->refresh()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->refresh()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->refresh()V

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->refresh()V

    :cond_3
    return-void
.end method

.method public scrollForceFinished()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollForceFinished()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollForceFinished()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollForceFinished()V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->is24Hours()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollForceFinished()V

    :cond_3
    return-void
.end method

.method public setMinuteStepToFive()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mIsMinuteFiveStep:Z

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_3
    return-void
.end method

.method public setOnTimeChangeListener(Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mOnTimeChangeListener:Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    return-void
.end method

.method public setTimePicker(ILjava/util/Calendar;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    .line 2
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->getTimePicker()Landroid/view/View;

    return-void
.end method

.method public setTimePicker(Ljava/util/Calendar;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    .line 4
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->getTimePicker()Landroid/view/View;

    return-void
.end method

.method public setVibrateIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateIntensity(F)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateIntensity(F)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateIntensity(F)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateIntensity(F)V

    return-void
.end method

.method public setVibrateLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateLevel(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateLevel(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateLevel(I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setVibrateLevel(I)V

    return-void
.end method
