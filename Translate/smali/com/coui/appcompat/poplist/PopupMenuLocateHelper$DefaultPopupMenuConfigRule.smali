.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuConfigRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultPopupMenuConfigRule"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;->mEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarrierDirection()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 0

    invoke-static {}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$100()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getOutsets()Landroid/graphics/Rect;
    .locals 0

    invoke-static {}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$100()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getPopupMenuRuleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;->mEnabled:Z

    return p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public setPopupMenuRuleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;->mEnabled:Z

    return-void
.end method
