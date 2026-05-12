.class public final Lcom/coui/appcompat/tintimageview/COUITintManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final INSTANCE_CACHE:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/coui/appcompat/tintimageview/COUITintManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOULD_BE_USED:Z

.field private static final TAG:Ljava/lang/String; = "TintManager"


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultColorStateList:Landroid/content/res/ColorStateList;

.field private mTintLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coui/appcompat/tintimageview/COUITintManager;->SHOULD_BE_USED:Z

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/coui/appcompat/tintimageview/COUITintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/coui/appcompat/tintimageview/COUITintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcom/coui/appcompat/tintimageview/COUITintManager;->COLOR_FILTER_CACHE:Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/tintimageview/COUITintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private createCOUIDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x3

    new-array v0, p0, [[I

    new-array p0, p0, [I

    sget-object v1, Lcom/coui/appcompat/theme/COUIThemeUtils;->DISABLED_STATE_SET:[I

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/support/appcompat/R$attr;->couiColorDisabledNeutral:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/theme/COUIThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, p0, v2

    sget-object v1, Lcom/coui/appcompat/theme/COUIThemeUtils;->PRESSED_STATE_SET:[I

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/theme/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, p0, v2

    sget-object v1, Lcom/coui/appcompat/theme/COUIThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/theme/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v2

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public static get(Landroid/content/Context;)Lcom/coui/appcompat/tintimageview/COUITintManager;
    .locals 2

    sget-object v0, Lcom/coui/appcompat/tintimageview/COUITintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tintimageview/COUITintManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/coui/appcompat/tintimageview/COUITintManager;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tintimageview/COUITintManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p2, Lcom/coui/appcompat/tintimageview/COUITintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    sget-object v0, Lcom/coui/appcompat/tintimageview/COUITintManager;->COLOR_FILTER_CACHE:Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    :cond_1
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static tintViewBackground(Landroid/view/View;Lcom/coui/appcompat/tintimageview/COUITintInfo;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p1, Lcom/coui/appcompat/tintimageview/COUITintInfo;->mHasTintList:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/coui/appcompat/tintimageview/COUITintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    iget-object v2, p1, Lcom/coui/appcompat/tintimageview/COUITintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    iget-boolean v1, p1, Lcom/coui/appcompat/tintimageview/COUITintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/coui/appcompat/tintimageview/COUITintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p0, p1}, Lcom/coui/appcompat/tintimageview/COUITintManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tintimageview/COUITintManager;->getDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDrawable(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/tintimageview/COUITintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {v0, p1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tintimageview/COUITintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v0}, Lv/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 8
    invoke-static {v1, v2}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tintimageview/COUITintManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 10
    invoke-static {v1, p0}, Lv/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tintimageview/COUITintManager;->tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final getTintList(I)Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tintimageview/COUITintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tintimageview/COUITintManager;->mTintLists:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/tintimageview/COUITintManager;->mTintLists:Landroid/util/SparseArray;

    if-nez v0, :cond_3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tintimageview/COUITintManager;->mTintLists:Landroid/util/SparseArray;

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/tintimageview/COUITintManager;->mTintLists:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method final getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tintimageview/COUITintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 p0, 0x0

    return p0
.end method
