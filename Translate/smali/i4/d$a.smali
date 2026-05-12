.class Li4/d$a;
.super Lt/h$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li4/d;->h(Landroid/content/Context;Li4/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li4/f;

.field final synthetic b:Li4/d;


# direct methods
.method constructor <init>(Li4/d;Li4/f;)V
    .locals 0

    iput-object p1, p0, Li4/d$a;->b:Li4/d;

    iput-object p2, p0, Li4/d$a;->a:Li4/f;

    invoke-direct {p0}, Lt/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public h(I)V
    .locals 2

    iget-object v0, p0, Li4/d$a;->b:Li4/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Li4/d;->c(Li4/d;Z)Z

    iget-object p0, p0, Li4/d$a;->a:Li4/f;

    invoke-virtual {p0, p1}, Li4/f;->onFontRetrievalFailed(I)V

    return-void
.end method

.method public i(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Li4/d$a;->b:Li4/d;

    iget v1, v0, Li4/d;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Li4/d;->b(Li4/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Li4/d$a;->b:Li4/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Li4/d;->c(Li4/d;Z)Z

    iget-object p1, p0, Li4/d$a;->a:Li4/f;

    iget-object p0, p0, Li4/d$a;->b:Li4/d;

    invoke-static {p0}, Li4/d;->a(Li4/d;)Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Li4/f;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    return-void
.end method
