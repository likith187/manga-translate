.class final Lkotlin/io/h$b$b;
.super Lkotlin/io/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lkotlin/io/h$b;


# direct methods
.method public constructor <init>(Lkotlin/io/h$b;Ljava/io/File;)V
    .locals 1

    const-string v0, "rootFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/io/h$b$b;->c:Lkotlin/io/h$b;

    invoke-direct {p0, p2}, Lkotlin/io/h$c;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/io/File;
    .locals 1

    iget-boolean v0, p0, Lkotlin/io/h$b$b;->b:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/io/h$b$b;->b:Z

    invoke-virtual {p0}, Lkotlin/io/h$c;->a()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
