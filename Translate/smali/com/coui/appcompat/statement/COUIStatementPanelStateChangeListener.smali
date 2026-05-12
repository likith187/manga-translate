.class public interface abstract Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;,
        Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->$$INSTANCE:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->Companion:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

    return-void
.end method


# virtual methods
.method public abstract initMINIContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V
.end method

.method public abstract initNormalContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V
.end method

.method public abstract initSmallLandContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V
.end method

.method public abstract initSplitScreenContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V
.end method

.method public abstract initTinyContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V
.end method

.method public abstract updateMINIContentView(Landroid/content/res/Configuration;)V
.end method

.method public abstract updateNormalContentView(Landroid/content/res/Configuration;)V
.end method

.method public abstract updateSmallLandContentView(Landroid/content/res/Configuration;)V
.end method

.method public abstract updateSplitScreenContentView(Landroid/content/res/Configuration;)V
.end method

.method public abstract updateTinyContentView(Landroid/content/res/Configuration;)V
.end method
