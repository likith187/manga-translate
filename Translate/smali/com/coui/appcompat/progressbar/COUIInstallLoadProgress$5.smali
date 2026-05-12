.class Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->performTouchEndAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

.field final synthetic val$isActionUp:Z


# direct methods
.method constructor <init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iput-boolean p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;->val$isActionUp:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;->val$isActionUp:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-static {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->access$701(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)Z

    :cond_0
    return-void
.end method
