.class Li/b$b;
.super Li/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Li/b$c;Li/b$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li/b$e;-><init>(Li/b$c;Li/b$c;)V

    return-void
.end method


# virtual methods
.method b(Li/b$c;)Li/b$c;
    .locals 0

    iget-object p0, p1, Li/b$c;->c:Li/b$c;

    return-object p0
.end method

.method c(Li/b$c;)Li/b$c;
    .locals 0

    iget-object p0, p1, Li/b$c;->f:Li/b$c;

    return-object p0
.end method
