.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setOnEnlargeSelectListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$100(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getEnlargeId()I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$002(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$200(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$000(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;->onEnlargeSelect(ZLandroid/view/MenuItem;)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$300(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    return v3
.end method
