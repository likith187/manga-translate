.class La0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:La0/g$c;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(La0/g$c;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/a;->a:La0/g$c;

    iput-object p2, p0, La0/a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, La0/a;->a:La0/g$c;

    iget-object v1, p0, La0/a;->b:Ljava/util/concurrent/Executor;

    new-instance v2, La0/a$b;

    invoke-direct {v2, p0, v0, p1}, La0/a$b;-><init>(La0/a;La0/g$c;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Landroid/graphics/Typeface;)V
    .locals 3

    iget-object v0, p0, La0/a;->a:La0/g$c;

    iget-object v1, p0, La0/a;->b:Ljava/util/concurrent/Executor;

    new-instance v2, La0/a$a;

    invoke-direct {v2, p0, v0, p1}, La0/a$a;-><init>(La0/a;La0/g$c;Landroid/graphics/Typeface;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method b(La0/f$e;)V
    .locals 1

    invoke-virtual {p1}, La0/f$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, La0/f$e;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, La0/a;->c(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    iget p1, p1, La0/f$e;->b:I

    invoke-direct {p0, p1}, La0/a;->a(I)V

    :goto_0
    return-void
.end method
