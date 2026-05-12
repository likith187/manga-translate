.class Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;
.super Landroidx/recyclerview/widget/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuViewAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/v;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/v;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V

    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getRowCount()I

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ld0/h$e;->a(IIZ)Ld0/h$e;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld0/h;->j0(Ljava/lang/Object;)V

    return-void
.end method
