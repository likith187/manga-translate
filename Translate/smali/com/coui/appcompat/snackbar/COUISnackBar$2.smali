.class Lcom/coui/appcompat/snackbar/COUISnackBar$2;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/snackbar/COUISnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/d;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Float;)F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-static {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->access$100(Lcom/coui/appcompat/snackbar/COUISnackBar;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->getValue(Ljava/lang/Float;)F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Float;F)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-static {p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->access$200(Lcom/coui/appcompat/snackbar/COUISnackBar;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->setValue(Ljava/lang/Float;F)V

    return-void
.end method
