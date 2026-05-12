.class Landroidx/transition/e$c;
.super Landroidx/transition/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/e;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic h:Ljava/lang/Object;

.field final synthetic i:Ljava/util/ArrayList;

.field final synthetic j:Landroidx/transition/e;


# direct methods
.method constructor <init>(Landroidx/transition/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/e$c;->j:Landroidx/transition/e;

    iput-object p2, p0, Landroidx/transition/e$c;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/transition/e$c;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/transition/e$c;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/transition/e$c;->f:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/transition/e$c;->h:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/transition/e$c;->i:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroidx/transition/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/j;)V
    .locals 3

    iget-object p1, p0, Landroidx/transition/e$c;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/transition/e$c;->j:Landroidx/transition/e;

    iget-object v2, p0, Landroidx/transition/e$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroidx/transition/e;->y(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object p1, p0, Landroidx/transition/e$c;->c:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/transition/e$c;->j:Landroidx/transition/e;

    iget-object v2, p0, Landroidx/transition/e$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroidx/transition/e;->y(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object p1, p0, Landroidx/transition/e$c;->h:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v1, p0, Landroidx/transition/e$c;->j:Landroidx/transition/e;

    iget-object p0, p0, Landroidx/transition/e$c;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p0, v0}, Landroidx/transition/e;->y(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public g(Landroidx/transition/j;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/transition/j;->removeListener(Landroidx/transition/j$i;)Landroidx/transition/j;

    return-void
.end method
