.class public final Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;,
        Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$WhenMappings;,
        Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;

.field private static final ORIENTATION_VERTICAL_BOTTOM:I

.field private static final ORIENTATION_VERTICAL_TOP:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private marginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->Companion:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;

    const/4 v0, 0x1

    sput v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->ORIENTATION_VERTICAL_TOP:I

    const/4 v0, 0x2

    sput v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->ORIENTATION_VERTICAL_BOTTOM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WindowSpacingControlHelper"

    iput-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getORIENTATION_VERTICAL_BOTTOM$cp()I
    .locals 1

    sget v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->ORIENTATION_VERTICAL_BOTTOM:I

    return v0
.end method

.method public static final synthetic access$getORIENTATION_VERTICAL_TOP$cp()I
    .locals 1

    sget v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->ORIENTATION_VERTICAL_TOP:I

    return v0
.end method

.method private final checkViewFromEnumType(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Z
    .locals 0

    sget-object p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    const/4 p2, 0x2

    if-eq p0, p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    goto :goto_0

    :cond_1
    instance-of p0, p1, Landroidx/appcompat/widget/Toolbar;

    :goto_0
    return p0
.end method

.method private final getEnumViewSpacing(Ljava/lang/Integer;Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I
    .locals 7

    move-object v1, p2

    :goto_0
    const/4 v6, 0x0

    if-eqz v1, :cond_5

    invoke-direct {p0, v1, p3}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->checkViewFromEnumType(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v4, v0, [I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v3, v0, [I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->getOrientationSpacing(Landroid/view/View;Landroid/view/View;[I[ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result p0

    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_1
    return v6

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_4

    const-class p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getToolbarViewSpacing  tempView "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_3
    return v6

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_6
    return v6
.end method

.method public static final getORIENTATION_VERTICAL_BOTTOM()I
    .locals 1

    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->Companion:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;->getORIENTATION_VERTICAL_BOTTOM()I

    move-result v0

    return v0
.end method

.method public static final getORIENTATION_VERTICAL_TOP()I
    .locals 1

    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->Companion:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;->getORIENTATION_VERTICAL_TOP()I

    move-result v0

    return v0
.end method

.method private final getOrientationSpacing(Landroid/view/View;Landroid/view/View;[I[ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I
    .locals 1

    invoke-virtual {p0, p5}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->getOrientationValue(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result p0

    sget p5, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->ORIENTATION_VERTICAL_TOP:I

    const/4 v0, 0x1

    if-ne p0, p5, :cond_0

    aget p0, p3, v0

    aget p1, p4, v0

    :goto_0
    sub-int/2addr p0, p1

    goto :goto_1

    :cond_0
    sget p5, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->ORIENTATION_VERTICAL_BOTTOM:I

    if-ne p0, p5, :cond_1

    aget p0, p3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    aget p1, p4, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final addAnchorViewSpacingMap(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V
    .locals 1

    const-string v0, "enumType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final checkInMarginMap(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Z
    .locals 2

    const-string v0, "enumType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    if-ne v0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final getAnchorViewParentView(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Landroid/view/View;
    .locals 1

    const-string v0, "anchorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTypeEnum"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->checkViewFromEnumType(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_1

    const-class p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAnchorViewParentView  tempView "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    goto :goto_0
.end method

.method public final getAnchorViewSpacing(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I
    .locals 1

    const-string v0, "anchorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6
    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->getEnumViewSpacing(Ljava/lang/Integer;Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getAnchorViewSpacing(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I
    .locals 2

    const-string v0, "enumType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public final getAnchorViewTypeEnum(Landroid/view/View;)Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;
    .locals 2

    const-string p0, "anchorView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    instance-of p0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->TOOLBAR:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    return-object p0

    :cond_0
    instance-of p0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->NAVIGATION:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/View;

    if-nez p0, :cond_2

    const-class p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnchorViewTypeEnum  tempView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->NORMAL:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    goto :goto_0
.end method

.method public final getMarginMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getOrientationValue(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I
    .locals 0

    const-string p0, "enumType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    sget p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->ORIENTATION_VERTICAL_TOP:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->ORIENTATION_VERTICAL_TOP:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->ORIENTATION_VERTICAL_BOTTOM:I

    :goto_0
    return p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final isUtilMapInit()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final setMarginMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->marginMap:Ljava/util/Map;

    return-void
.end method

.method public final setOriginCenterPoint([I[ILandroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    const-string v0, "anchorViewLocationInScreen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultOriginCenterPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->TAG:Ljava/lang/String;

    const-string v0, "setOriginCenterPoint anchorView.width <= 0 or anchorView.height <= 0"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/view/View;->getPivotX()F

    move-result p0

    float-to-int p0, p0

    aput p0, p2, v1

    invoke-virtual {p3}, Landroid/view/View;->getPivotY()F

    move-result p0

    float-to-int p0, p0

    aput p0, p2, v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getPivotX()F

    move-result p0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-virtual {p3}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    aget v3, p1, v1

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    aget p1, p1, v2

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/View;->getScaleY()F

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    div-float/2addr v4, v5

    add-float/2addr p1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr p0, v4

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result v5

    int-to-float v6, v2

    sub-float/2addr v5, v6

    mul-float/2addr p0, v5

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr p0, v5

    add-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v1

    sub-float/2addr v0, v4

    invoke-virtual {p3}, Landroid/view/View;->getScaleY()F

    move-result p0

    sub-float/2addr p0, v6

    mul-float/2addr v0, p0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v2

    return-void
.end method
