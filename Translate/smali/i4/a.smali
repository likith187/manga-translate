.class public final Li4/a;
.super Li4/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li4/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private final b:Li4/a$a;

.field private c:Z


# direct methods
.method public constructor <init>(Li4/a$a;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Li4/f;-><init>()V

    iput-object p2, p0, Li4/a;->a:Landroid/graphics/Typeface;

    iput-object p1, p0, Li4/a;->b:Li4/a$a;

    return-void
.end method

.method private b(Landroid/graphics/Typeface;)V
    .locals 1

    iget-boolean v0, p0, Li4/a;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Li4/a;->b:Li4/a$a;

    invoke-interface {p0, p1}, Li4/a$a;->apply(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li4/a;->c:Z

    return-void
.end method

.method public onFontRetrievalFailed(I)V
    .locals 0

    iget-object p1, p0, Li4/a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Li4/a;->b(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 0

    invoke-direct {p0, p1}, Li4/a;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
