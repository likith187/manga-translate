.class public Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/snackbar/COUISnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AutoDismissRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;


# direct methods
.method protected constructor <init>(Lcom/coui/appcompat/snackbar/COUISnackBar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->dismiss()V

    return-void
.end method
