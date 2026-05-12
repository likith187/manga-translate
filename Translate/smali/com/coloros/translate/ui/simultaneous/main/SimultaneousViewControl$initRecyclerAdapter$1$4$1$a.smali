.class public final Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1$a;
.super Landroidx/recyclerview/widget/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1;

.field final synthetic j:I


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1$a;->i:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1;

    iput p2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1$a;->j:I

    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/p;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 3

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1$a;->i:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1;

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1$a;->j:I

    const/high16 v1, 0x41c80000    # 25.0f

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    div-float p0, v1, p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method protected getVerticalSnapPreference()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
