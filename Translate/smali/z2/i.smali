.class Lz2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lh3/a;

.field private final c:Lh3/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lh3/a;Lh3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lz2/i;->b:Lh3/a;

    iput-object p3, p0, Lz2/i;->c:Lh3/a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lz2/h;
    .locals 2

    iget-object v0, p0, Lz2/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lz2/i;->b:Lh3/a;

    iget-object p0, p0, Lz2/i;->c:Lh3/a;

    invoke-static {v0, v1, p0, p1}, Lz2/h;->a(Landroid/content/Context;Lh3/a;Lh3/a;Ljava/lang/String;)Lz2/h;

    move-result-object p0

    return-object p0
.end method
