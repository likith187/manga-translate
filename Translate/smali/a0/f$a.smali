.class La0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/f;->e(Landroid/content/Context;La0/e;La0/a;II)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:La0/e;

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;La0/e;I)V
    .locals 0

    iput-object p1, p0, La0/f$a;->a:Ljava/lang/String;

    iput-object p2, p0, La0/f$a;->b:Landroid/content/Context;

    iput-object p3, p0, La0/f$a;->c:La0/e;

    iput p4, p0, La0/f$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La0/f$e;
    .locals 3

    iget-object v0, p0, La0/f$a;->a:Ljava/lang/String;

    iget-object v1, p0, La0/f$a;->b:Landroid/content/Context;

    iget-object v2, p0, La0/f$a;->c:La0/e;

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget p0, p0, La0/f$a;->d:I

    invoke-static {v0, v1, v2, p0}, La0/f;->c(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)La0/f$e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La0/f$a;->a()La0/f$e;

    move-result-object p0

    return-object p0
.end method
