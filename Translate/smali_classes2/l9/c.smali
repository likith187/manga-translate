.class public final Ll9/c;
.super Ll9/a;
.source "SourceFile"


# instance fields
.field final synthetic e:Lw8/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLw8/a;)V
    .locals 0

    iput-object p3, p0, Ll9/c;->e:Lw8/a;

    invoke-direct {p0, p1, p2}, Ll9/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-object p0, p0, Ll9/c;->e:Lw8/a;

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0
.end method
