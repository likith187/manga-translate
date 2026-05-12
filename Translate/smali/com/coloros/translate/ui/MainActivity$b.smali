.class final Lcom/coloros/translate/ui/MainActivity$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/MainActivity;->k1(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/coloros/translate/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/MainActivity;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/ui/MainActivity;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity$b;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity$b;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/coloros/translate/ui/MainActivity$b;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/translate/ui/MainActivity$b;->label:I

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$b;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1, p0}, Lcom/coloros/translate/ui/MainActivity;->Z0(Lcom/coloros/translate/ui/MainActivity;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
