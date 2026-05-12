.class final Lcom/coloros/translate/ui/simultaneous/main/m$j;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/m;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/main/m;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$j;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/ui/simultaneous/utils/f;
    .locals 2

    .line 2
    new-instance v0, Lcom/coloros/translate/ui/simultaneous/utils/f;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/utils/f;-><init>()V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$j;->this$0:Lcom/coloros/translate/ui/simultaneous/main/m;

    .line 3
    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;-><init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->j(Lw8/p;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m$j;->invoke()Lcom/coloros/translate/ui/simultaneous/utils/f;

    move-result-object p0

    return-object p0
.end method
