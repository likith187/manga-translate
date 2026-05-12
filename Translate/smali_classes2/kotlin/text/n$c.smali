.class final Lkotlin/text/n$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/n;->findAll(Ljava/lang/CharSequence;I)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $input:Ljava/lang/CharSequence;

.field final synthetic $startIndex:I

.field final synthetic this$0:Lkotlin/text/n;


# direct methods
.method constructor <init>(Lkotlin/text/n;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/n$c;->this$0:Lkotlin/text/n;

    iput-object p2, p0, Lkotlin/text/n$c;->$input:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/n$c;->$startIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/text/n$c;->invoke()Lkotlin/text/l;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlin/text/l;
    .locals 2

    .line 2
    iget-object v0, p0, Lkotlin/text/n$c;->this$0:Lkotlin/text/n;

    iget-object v1, p0, Lkotlin/text/n$c;->$input:Ljava/lang/CharSequence;

    iget p0, p0, Lkotlin/text/n$c;->$startIndex:I

    invoke-virtual {v0, v1, p0}, Lkotlin/text/n;->find(Ljava/lang/CharSequence;I)Lkotlin/text/l;

    move-result-object p0

    return-object p0
.end method
