.class public final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$b;->a:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const-string p2, "outRect"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "parent"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$b;->a:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
