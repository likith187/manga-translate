.class public final Lcom/support/panel/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static COUIBottomSheetDialog:[I = null

.field public static COUIBottomSheetDialog_couiHandleViewHasPressAnim:I = 0x0

.field public static COUIBottomSheetDialog_couiIsHandlePanel:I = 0x1

.field public static COUIBottomSheetDialog_couiShowMaxHeight:I = 0x2

.field public static COUIBottomSheetDialog_panelBackground:I = 0x3

.field public static COUIBottomSheetDialog_panelBackgroundTintColor:I = 0x4

.field public static COUIBottomSheetDialog_panelDragViewIcon:I = 0x5

.field public static COUIBottomSheetDialog_panelDragViewTintColor:I = 0x6

.field public static COUIDraggableVerticalLinearLayout:[I = null

.field public static COUIDraggableVerticalLinearLayout_dragViewIcon:I = 0x0

.field public static COUIDraggableVerticalLinearLayout_dragViewTintColor:I = 0x1

.field public static COUIDraggableVerticalLinearLayout_hasShadowNinePatchDrawable:I = 0x2

.field public static COUIPanelPercentFrameLayout:[I = null

.field public static COUIPanelPercentFrameLayout_maxPanelHeight:I = 0x0

.field public static IgnoreWindowInsetsFrameLayout:[I = null

.field public static IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsBottom:I = 0x0

.field public static IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsLeft:I = 0x1

.field public static IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsRight:I = 0x2

.field public static IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsTop:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/support/panel/R$styleable;->COUIBottomSheetDialog:[I

    const v0, 0x7f04047c

    const v1, 0x7f04053e

    const v2, 0x7f04047b

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/support/panel/R$styleable;->COUIDraggableVerticalLinearLayout:[I

    const v0, 0x7f040691

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/support/panel/R$styleable;->COUIPanelPercentFrameLayout:[I

    const v0, 0x7f04056d

    const v1, 0x7f04056e

    const v2, 0x7f04056b

    const v3, 0x7f04056c

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/support/panel/R$styleable;->IgnoreWindowInsetsFrameLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04028e
        0x7f0402bc
        0x7f04035f
        0x7f040709
        0x7f04070a
        0x7f04070b
        0x7f04070c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
