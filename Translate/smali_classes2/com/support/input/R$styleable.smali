.class public final Lcom/support/input/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static COUICodeInputView:[I = null

.field public static COUICodeInputView_couiCodeInputCount:I = 0x0

.field public static COUICodeInputView_couiEnableSecurityInput:I = 0x1

.field public static COUIInputListSelectedItemLayout:[I = null

.field public static COUIInputListSelectedItemLayout_couiInputListHorizontalMargin:I = 0x0

.field public static COUIInputListSelectedItemLayout_couiInputRadius:I = 0x1

.field public static COUIInputListSelectedItemLayout_listIsTiny:I = 0x2

.field public static COUIInputView:[I = null

.field public static COUIInputView_couiEditLineColor:I = 0x0

.field public static COUIInputView_couiEnableError:I = 0x1

.field public static COUIInputView_couiEnableInputCount:I = 0x2

.field public static COUIInputView_couiEnablePassword:I = 0x3

.field public static COUIInputView_couiHint:I = 0x4

.field public static COUIInputView_couiInputCustomFormat:I = 0x5

.field public static COUIInputView_couiInputMaxCount:I = 0x6

.field public static COUIInputView_couiInputType:I = 0x7

.field public static COUIInputView_couiPasswordType:I = 0x8

.field public static COUIInputView_couiTitle:I = 0x9

.field public static COUILockScreenPwdInputLayout:[I = null

.field public static COUILockScreenPwdInputLayout_couiEnableInputCount:I = 0x0

.field public static COUILockScreenPwdInputLayout_couiInputMaxCount:I = 0x1

.field public static COUILockScreenPwdInputLayout_couiInputMinCount:I = 0x2

.field public static COUILockScreenPwdInputLayout_couiInputType:I = 0x3

.field public static COUILockScreenPwdInputLayout_couiIsScenesMode:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const v0, 0x7f040204

    const v1, 0x7f040283

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/support/input/R$styleable;->COUICodeInputView:[I

    const v0, 0x7f0402ac

    const v1, 0x7f040628

    const v2, 0x7f0402a7

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/support/input/R$styleable;->COUIInputListSelectedItemLayout:[I

    const v0, 0x7f040281

    const v1, 0x7f0402a8

    const v2, 0x7f0402ad

    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/support/input/R$styleable;->COUIInputView:[I

    const v3, 0x7f0402bd

    const v4, 0x7f0402a9

    filled-new-array {v0, v1, v4, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/support/input/R$styleable;->COUILockScreenPwdInputLayout:[I

    return-void

    :array_0
    .array-data 4
        0x7f040272
        0x7f040280
        0x7f040281
        0x7f040282
        0x7f040293
        0x7f0402a6
        0x7f0402a8
        0x7f0402ad
        0x7f0402f4
        0x7f0403db
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
