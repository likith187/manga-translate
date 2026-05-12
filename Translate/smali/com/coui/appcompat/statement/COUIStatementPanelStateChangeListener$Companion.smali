.class public final Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

.field private static final SCREN_DP_DEFAULT_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

.field private static final SCREN_DP_MINI_WIDTH:Lcom/coui/component/responsiveui/unit/Dp;

.field private static final SCREN_DP_SMALL_LAND_SINGLE_LINE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

.field private static final SCREN_DP_SPLIT_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

    invoke-direct {v0}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;-><init>()V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->$$INSTANCE:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0xcf

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->SCREN_DP_MINI_WIDTH:Lcom/coui/component/responsiveui/unit/Dp;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0x258

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->SCREN_DP_SPLIT_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0x29e

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->SCREN_DP_DEFAULT_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0x12c

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->SCREN_DP_SMALL_LAND_SINGLE_LINE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSCREN_DP_DEFAULT_HEIGHT()Lcom/coui/component/responsiveui/unit/Dp;
    .locals 0

    sget-object p0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->SCREN_DP_DEFAULT_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    return-object p0
.end method

.method public final getSCREN_DP_MINI_WIDTH()Lcom/coui/component/responsiveui/unit/Dp;
    .locals 0

    sget-object p0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->SCREN_DP_MINI_WIDTH:Lcom/coui/component/responsiveui/unit/Dp;

    return-object p0
.end method

.method public final getSCREN_DP_SMALL_LAND_SINGLE_LINE_HEIGHT()Lcom/coui/component/responsiveui/unit/Dp;
    .locals 0

    sget-object p0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->SCREN_DP_SMALL_LAND_SINGLE_LINE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    return-object p0
.end method

.method public final getSCREN_DP_SPLIT_HEIGHT()Lcom/coui/component/responsiveui/unit/Dp;
    .locals 0

    sget-object p0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->SCREN_DP_SPLIT_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    return-object p0
.end method
