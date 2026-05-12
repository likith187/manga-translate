.class Lb0/d$e;
.super Lb0/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method constructor <init>(Lb0/d$c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lb0/d$d;-><init>(Lb0/d$c;)V

    iput-boolean p2, p0, Lb0/d$e;->b:Z

    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 0

    iget-boolean p0, p0, Lb0/d$e;->b:Z

    return p0
.end method
