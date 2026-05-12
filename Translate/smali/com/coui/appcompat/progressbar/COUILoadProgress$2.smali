.class Lcom/coui/appcompat/progressbar/COUILoadProgress$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/progressbar/COUILoadProgress;->refreshProgressWithAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/progressbar/COUILoadProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mIsUpdateWithAnimation:Z

    return-void
.end method
