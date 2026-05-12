.class public abstract Lcom/coloros/translate/ui/simultaneous/history/a;
.super Landroidx/recyclerview/widget/RecyclerView$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/history/a$a;,
        Lcom/coloros/translate/ui/simultaneous/history/a$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/coloros/translate/ui/simultaneous/history/a$a;


# instance fields
.field private final a:Lcom/coloros/translate/ui/simultaneous/history/a$b;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/history/a;->c:Lcom/coloros/translate/ui/simultaneous/history/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/a$b;)V
    .locals 1

    const-string v0, "onBottomReachedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$u;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/a;->a:Lcom/coloros/translate/ui/simultaneous/history/a$b;

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$u;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getItemCount()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    if-gt p2, p1, :cond_1

    iget p1, p0, Lcom/coloros/translate/ui/simultaneous/history/a;->b:I

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/coloros/translate/ui/simultaneous/history/a;->b:I

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/a;->a:Lcom/coloros/translate/ui/simultaneous/history/a$b;

    invoke-interface {p0}, Lcom/coloros/translate/ui/simultaneous/history/a$b;->a()V

    :cond_1
    return-void
.end method
