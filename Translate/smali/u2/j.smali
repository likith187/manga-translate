.class public Lu2/j;
.super Lu2/b;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lu2/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lu2/b;-><init>(Lu2/i;)V

    return-void
.end method

.method public static g()Lu2/j;
    .locals 2

    new-instance v0, Lu2/j;

    invoke-static {}, Lu2/a;->a()Lu2/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lu2/j;-><init>(Lu2/i;)V

    return-object v0
.end method
