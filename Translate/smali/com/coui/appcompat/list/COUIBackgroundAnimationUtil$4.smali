.class Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->init(Landroid/view/View;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$4;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$4;->this$0:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    const/4 p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mState:I

    return-void
.end method
