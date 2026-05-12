.class public final synthetic Lcom/coloros/translate/ui/simultaneous/main/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/snackbar/COUISnackBar;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/snackbar/COUISnackBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/w;->a:Lcom/coui/appcompat/snackbar/COUISnackBar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/w;->a:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->p(Lcom/coui/appcompat/snackbar/COUISnackBar;Landroid/view/View;)V

    return-void
.end method
