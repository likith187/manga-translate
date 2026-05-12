.class public final Lcom/coloros/translate/screen/translate/engine/picker/e$b$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/translate/engine/picker/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field final synthetic b:Lcom/coloros/translate/screen/translate/engine/picker/e$b;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/screen/translate/engine/picker/e$b;Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b$a;->b:Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b$a;->a:Landroid/view/View;

    return-void
.end method
