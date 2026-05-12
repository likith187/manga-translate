.class public Ll/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ll/f;

.field b:Ll/f;

.field c:Ll/f;

.field d:[Ll/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll/g;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ll/g;-><init>(I)V

    iput-object v0, p0, Ll/c;->a:Ll/f;

    new-instance v0, Ll/g;

    invoke-direct {v0, v1}, Ll/g;-><init>(I)V

    iput-object v0, p0, Ll/c;->b:Ll/f;

    new-instance v0, Ll/g;

    invoke-direct {v0, v1}, Ll/g;-><init>(I)V

    iput-object v0, p0, Ll/c;->c:Ll/f;

    const/16 v0, 0x20

    new-array v0, v0, [Ll/i;

    iput-object v0, p0, Ll/c;->d:[Ll/i;

    return-void
.end method
