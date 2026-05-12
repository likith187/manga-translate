.class Lcom/coui/appcompat/searchview/COUISearchBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchBar;->initEdittext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/searchview/COUISearchBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$200(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$300(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$200(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$200(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$200(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$300(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$200(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$200(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$000(Lcom/coui/appcompat/searchview/COUISearchBar;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
