.class Lcom/coui/appcompat/material/navigation/NavigationBarItemView$ActiveIndicatorUnlabeledTransform;
.super Lcom/coui/appcompat/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/material/navigation/NavigationBarItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActiveIndicatorUnlabeledTransform"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;-><init>(Lcom/coui/appcompat/material/navigation/NavigationBarItemView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/material/navigation/NavigationBarItemView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView$ActiveIndicatorUnlabeledTransform;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateScaleY(FF)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->calculateScaleX(FF)F

    move-result p0

    return p0
.end method
