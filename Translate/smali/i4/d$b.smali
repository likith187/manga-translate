.class Li4/d$b;
.super Li4/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li4/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Li4/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/text/TextPaint;

.field final synthetic c:Li4/f;

.field final synthetic d:Li4/d;


# direct methods
.method constructor <init>(Li4/d;Landroid/content/Context;Landroid/text/TextPaint;Li4/f;)V
    .locals 0

    iput-object p1, p0, Li4/d$b;->d:Li4/d;

    iput-object p2, p0, Li4/d$b;->a:Landroid/content/Context;

    iput-object p3, p0, Li4/d$b;->b:Landroid/text/TextPaint;

    iput-object p4, p0, Li4/d$b;->c:Li4/f;

    invoke-direct {p0}, Li4/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 0

    iget-object p0, p0, Li4/d$b;->c:Li4/f;

    invoke-virtual {p0, p1}, Li4/f;->onFontRetrievalFailed(I)V

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, Li4/d$b;->d:Li4/d;

    iget-object v1, p0, Li4/d$b;->a:Landroid/content/Context;

    iget-object v2, p0, Li4/d$b;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, v2, p1}, Li4/d;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object p0, p0, Li4/d$b;->c:Li4/f;

    invoke-virtual {p0, p1, p2}, Li4/f;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    return-void
.end method
