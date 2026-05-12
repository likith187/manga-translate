.class public final Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$d;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousViewControl"

    const-string v1, "click history"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->C()V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$d;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Y()Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;->w()V

    :cond_1
    return v3
.end method
