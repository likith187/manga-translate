.class Lcom/coui/appcompat/snackbar/COUISnackBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/snackbar/COUISnackBar;->setOnAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$3;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iput-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$3;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$3;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$3;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-static {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->access$300(Lcom/coui/appcompat/snackbar/COUISnackBar;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->dismiss(Z)V

    return-void
.end method
