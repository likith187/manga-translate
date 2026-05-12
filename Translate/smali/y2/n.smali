.class final Ly2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/g;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ly2/m;

.field private final c:Ly2/q;


# direct methods
.method constructor <init>(Ljava/util/Set;Ly2/m;Ly2/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/n;->a:Ljava/util/Set;

    iput-object p2, p0, Ly2/n;->b:Ly2/m;

    iput-object p3, p0, Ly2/n;->c:Ly2/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Lw2/b;Lw2/e;)Lw2/f;
    .locals 6

    iget-object p2, p0, Ly2/n;->a:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ly2/p;

    iget-object v1, p0, Ly2/n;->b:Ly2/m;

    iget-object v5, p0, Ly2/n;->c:Ly2/q;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ly2/p;-><init>(Ly2/m;Ljava/lang/String;Lw2/b;Lw2/e;Ly2/q;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Ly2/n;->a:Ljava/util/Set;

    filled-new-array {p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%s is not supported byt this factory. Supported encodings are: %s."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
