.class Lcom/coui/appcompat/snackbar/COUISnackBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/snackbar/COUISnackBar;->animateSpring(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

.field final synthetic val$isEntering:Z


# direct methods
.method constructor <init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$1;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iput-boolean p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$1;->val$isEntering:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    iget-boolean p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$1;->val$isEntering:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$1;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-static {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->access$000(Lcom/coui/appcompat/snackbar/COUISnackBar;)V

    :cond_0
    return-void
.end method
