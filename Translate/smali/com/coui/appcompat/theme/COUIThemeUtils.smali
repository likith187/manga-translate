.class public Lcom/coui/appcompat/theme/COUIThemeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVATED_STATE_SET:[I

.field public static final CHECKED_STATE_SET:[I

.field public static final DISABLED_STATE_SET:[I

.field static final EMPTY_STATE_SET:[I

.field public static final FOCUSED_STATE_SET:[I

.field public static final NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

.field public static final PRESSED_STATE_SET:[I

.field public static final SELECTED_STATE_SET:[I

.field private static final TEMP_ARRAY:[I

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->DISABLED_STATE_SET:[I

    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->FOCUSED_STATE_SET:[I

    const v0, 0x10102fe

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->ACTIVATED_STATE_SET:[I

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->PRESSED_STATE_SET:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->CHECKED_STATE_SET:[I

    const v0, 0x10100a1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->SELECTED_STATE_SET:[I

    const v0, -0x10100a7

    const v1, -0x101009c

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->EMPTY_STATE_SET:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->TEMP_ARRAY:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDisabledStateList(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget-object v2, Lcom/coui/appcompat/theme/COUIThemeUtils;->DISABLED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    sget-object p1, Lcom/coui/appcompat/theme/COUIThemeUtils;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .locals 4

    invoke-static {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/coui/appcompat/theme/COUIThemeUtils;->DISABLED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeUtils;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/theme/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result p0

    return p0
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->TEMP_ARRAY:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    throw p1
.end method

.method static getThemeAttrColor(Landroid/content/Context;IF)I
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    .line 7
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Lu/d;->u(II)I

    move-result p0

    return p0
.end method

.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    sget-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->TEMP_ARRAY:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 2

    sget-object v0, Lcom/coui/appcompat/theme/COUIThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method
