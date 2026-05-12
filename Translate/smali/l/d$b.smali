.class Ll/d$b;
.super Ll/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Ll/c;)V
    .locals 1

    invoke-direct {p0}, Ll/b;-><init>()V

    new-instance v0, Ll/j;

    invoke-direct {v0, p0, p1}, Ll/j;-><init>(Ll/b;Ll/c;)V

    iput-object v0, p0, Ll/b;->e:Ll/b$a;

    return-void
.end method
