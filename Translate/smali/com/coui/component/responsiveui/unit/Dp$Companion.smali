.class public final Lcom/coui/component/responsiveui/unit/Dp$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/component/responsiveui/unit/Dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coui/component/responsiveui/unit/Dp$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/coui/component/responsiveui/unit/DpKt;->pixel2Dp(ILandroid/content/Context;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    return-object p0
.end method
