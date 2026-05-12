.class final Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->e0(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isFull:Z

.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$c;->this$0:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    iput-boolean p2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$c;->$isFull:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$c;->invoke(Z)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$c;->this$0:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$c;->$isFull:Z

    invoke-static {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->t(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Z)V

    return-void
.end method
