.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setFrameRate(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    const-string p1, "COUIBottomSheetDialog"

    const-string p2, "COUISpringAnimation LEVEL_HIGH_PRECISION onAnimatorEnd: DynamicFrameRateManager.FRAME_RATE_END"

    invoke-static {p1, p2}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$16;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    move-result-object p0

    const/4 p1, -0x2

    const/4 p2, 0x0

    const/16 p3, 0x2775

    invoke-static {p0, p3, p1, p2}, Lcom/oplus/dynamicframerate/DynamicFrameRateManager;->setFrameRate(Ljava/lang/Object;IILandroid/os/Bundle;)Z

    return-void
.end method
