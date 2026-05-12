.class Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->registerForClickSelectItems(Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->lambda$onClick$0(Landroid/view/View;II)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/view/View;II)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->setPopupShow(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;II)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->access$000(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->access$000(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;->onClick(Landroid/view/View;II)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->access$100(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->access$100(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/poplist/R$integer;->support_menu_click_select_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Lcom/coui/appcompat/poplist/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/coui/appcompat/poplist/a;-><init>(Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;Landroid/view/View;II)V

    int-to-long p2, v0

    invoke-virtual {p1, v1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->setPopupShow(Landroid/view/View;II)V

    :goto_0
    return-void
.end method
