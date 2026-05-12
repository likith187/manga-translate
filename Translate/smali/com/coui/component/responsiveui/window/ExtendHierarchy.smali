.class public final Lcom/coui/component/responsiveui/window/ExtendHierarchy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;

.field private static final a:Lcom/coui/component/responsiveui/unit/Dp;

.field private static final b:Lcom/coui/component/responsiveui/unit/Dp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->Companion:Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0x118

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->a:Lcom/coui/component/responsiveui/unit/Dp;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0x168

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->b:Lcom/coui/component/responsiveui/unit/Dp;

    return-void
.end method

.method public static final synthetic access$getEXPANDED_EXTEND_HIERARCHY_PARENT_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;
    .locals 1

    sget-object v0, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->b:Lcom/coui/component/responsiveui/unit/Dp;

    return-object v0
.end method

.method public static final synthetic access$getMEDIUM_EXTEND_HIERARCHY_PARENT_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;
    .locals 1

    sget-object v0, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->a:Lcom/coui/component/responsiveui/unit/Dp;

    return-object v0
.end method
