.class final Lkotlin/collections/a$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/a;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/collections/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/a;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/collections/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/collections/a$a;->this$0:Lkotlin/collections/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lkotlin/collections/a$a;->this$0:Lkotlin/collections/a;

    if-ne p1, p0, :cond_0

    const-string p0, "(this Collection)"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/collections/a$a;->invoke(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
