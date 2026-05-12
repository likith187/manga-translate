.class public final Lo9/f$d$a;
.super Ll9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo9/f$d;->k(ZLo9/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo9/f;

.field final synthetic f:Lkotlin/jvm/internal/c0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLo9/f;Lkotlin/jvm/internal/c0;)V
    .locals 0

    iput-object p3, p0, Lo9/f$d$a;->e:Lo9/f;

    iput-object p4, p0, Lo9/f$d$a;->f:Lkotlin/jvm/internal/c0;

    invoke-direct {p0, p1, p2}, Ll9/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-object v0, p0, Lo9/f$d$a;->e:Lo9/f;

    invoke-virtual {v0}, Lo9/f;->K0()Lo9/f$c;

    move-result-object v0

    iget-object v1, p0, Lo9/f$d$a;->e:Lo9/f;

    iget-object p0, p0, Lo9/f$d$a;->f:Lkotlin/jvm/internal/c0;

    iget-object p0, p0, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast p0, Lo9/m;

    invoke-virtual {v0, v1, p0}, Lo9/f$c;->a(Lo9/f;Lo9/m;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
