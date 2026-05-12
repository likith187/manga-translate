.class public final Le9/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le9/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)Le9/b;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le9/b$a;->b()Le9/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Le9/b;

    invoke-direct {p0, p1, p2, p3, p4}, Le9/b;-><init>(JJ)V

    :goto_0
    return-object p0
.end method

.method public final b()Le9/b;
    .locals 0

    invoke-static {}, Le9/b;->access$getNIL$cp()Le9/b;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Le9/b;
    .locals 15

    move-object/from16 v6, p1

    const-string v0, "uuidString"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/g;->f(Ljava/lang/String;IILkotlin/text/h;ILjava/lang/Object;)J

    move-result-wide v7

    const/16 v0, 0x8

    invoke-static {v6, v0}, Le9/d;->a(Ljava/lang/String;I)V

    const/16 v1, 0x9

    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/g;->f(Ljava/lang/String;IILkotlin/text/h;ILjava/lang/Object;)J

    move-result-wide v9

    const/16 v0, 0xd

    invoke-static {v6, v0}, Le9/d;->a(Ljava/lang/String;I)V

    const/16 v1, 0xe

    const/16 v2, 0x12

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/g;->f(Ljava/lang/String;IILkotlin/text/h;ILjava/lang/Object;)J

    move-result-wide v11

    const/16 v0, 0x12

    invoke-static {v6, v0}, Le9/d;->a(Ljava/lang/String;I)V

    const/16 v1, 0x13

    const/16 v2, 0x17

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/g;->f(Ljava/lang/String;IILkotlin/text/h;ILjava/lang/Object;)J

    move-result-wide v13

    const/16 v0, 0x17

    invoke-static {v6, v0}, Le9/d;->a(Ljava/lang/String;I)V

    const/16 v1, 0x18

    const/16 v2, 0x24

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/g;->f(Ljava/lang/String;IILkotlin/text/h;ILjava/lang/Object;)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long v2, v7, v2

    const/16 v4, 0x10

    shl-long v4, v9, v4

    or-long/2addr v2, v4

    or-long/2addr v2, v11

    const/16 v4, 0x30

    shl-long v4, v13, v4

    or-long/2addr v0, v4

    move-object v4, p0

    invoke-virtual {p0, v2, v3, v0, v1}, Le9/b$a;->a(JJ)Le9/b;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a 36-char string in the standard uuid format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
