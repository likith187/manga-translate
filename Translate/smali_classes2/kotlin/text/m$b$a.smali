.class final Lkotlin/text/m$b$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/m$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/text/m$b;


# direct methods
.method constructor <init>(Lkotlin/text/m$b;)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/m$b$a;->this$0:Lkotlin/text/m$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/text/m$b$a;->invoke(I)Lkotlin/text/j;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(I)Lkotlin/text/j;
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlin/text/m$b$a;->this$0:Lkotlin/text/m$b;

    invoke-virtual {p0, p1}, Lkotlin/text/m$b;->get(I)Lkotlin/text/j;

    move-result-object p0

    return-object p0
.end method
