.class public final Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo2/a$a;
    }
.end annotation


# static fields
.field public static final r:Lo2/a$a;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo2/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lo2/a;->r:Lo2/a$a;

    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZZZZII)V
    .locals 8

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    const-string v6, "recordId"

    invoke-static {p7, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "fromText"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "toText"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "fromLanguage"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "toLanguage"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v6, p1

    .line 2
    iput-wide v6, v0, Lo2/a;->a:J

    move-wide v6, p3

    .line 3
    iput-wide v6, v0, Lo2/a;->b:J

    move-wide v6, p5

    .line 4
    iput-wide v6, v0, Lo2/a;->c:J

    .line 5
    iput-object v1, v0, Lo2/a;->d:Ljava/lang/String;

    .line 6
    iput-object v2, v0, Lo2/a;->e:Ljava/lang/String;

    .line 7
    iput-object v3, v0, Lo2/a;->f:Ljava/lang/String;

    .line 8
    iput-object v4, v0, Lo2/a;->g:Ljava/lang/String;

    .line 9
    iput-object v5, v0, Lo2/a;->h:Ljava/lang/String;

    move-wide/from16 v1, p12

    .line 10
    iput-wide v1, v0, Lo2/a;->i:J

    move-wide/from16 v1, p14

    .line 11
    iput-wide v1, v0, Lo2/a;->j:J

    move/from16 v1, p16

    .line 12
    iput-boolean v1, v0, Lo2/a;->k:Z

    move/from16 v1, p17

    .line 13
    iput-boolean v1, v0, Lo2/a;->l:Z

    move/from16 v1, p18

    .line 14
    iput-boolean v1, v0, Lo2/a;->m:Z

    move/from16 v1, p19

    .line 15
    iput-boolean v1, v0, Lo2/a;->n:Z

    move/from16 v1, p20

    .line 16
    iput-boolean v1, v0, Lo2/a;->o:Z

    move/from16 v1, p21

    .line 17
    iput v1, v0, Lo2/a;->p:I

    move/from16 v1, p22

    .line 18
    iput v1, v0, Lo2/a;->q:I

    return-void
.end method

.method public synthetic constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZZZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x8

    .line 19
    const-string v10, ""

    if-eqz v1, :cond_3

    move-object v1, v10

    goto :goto_3

    :cond_3
    move-object/from16 v1, p7

    :goto_3
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_4

    move-object v11, v10

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit8 v12, v0, 0x20

    if-eqz v12, :cond_5

    move-object v12, v10

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    move-object v13, v10

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v10, p11

    :goto_7
    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_8

    const-wide/16 v14, 0x0

    goto :goto_8

    :cond_8
    move-wide/from16 v14, p12

    :goto_8
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_9

    const-wide/16 v16, 0x0

    goto :goto_9

    :cond_9
    move-wide/from16 v16, p14

    :goto_9
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_a

    :cond_a
    move/from16 v2, p16

    :goto_a
    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    move/from16 v3, p17

    :goto_b
    move/from16 p17, v3

    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_c

    :cond_c
    move/from16 v3, p18

    :goto_c
    move/from16 p18, v3

    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    move/from16 v3, p19

    :goto_d
    move/from16 p19, v3

    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    goto :goto_e

    :cond_e
    move/from16 v3, p20

    :goto_e
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    goto :goto_f

    :cond_f
    move/from16 v18, p21

    :goto_f
    const/high16 v19, 0x10000

    and-int v0, v0, v19

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_10

    :cond_10
    move/from16 v0, p22

    :goto_10
    move-wide/from16 p1, v4

    move-wide/from16 p3, v6

    move-wide/from16 p5, v8

    move-object/from16 p7, v1

    move-object/from16 p8, v11

    move-object/from16 p9, v12

    move-object/from16 p10, v13

    move-object/from16 p11, v10

    move-wide/from16 p12, v14

    move-wide/from16 p14, v16

    move/from16 p16, v2

    move/from16 p20, v3

    move/from16 p21, v18

    move/from16 p22, v0

    invoke-direct/range {p0 .. p22}, Lo2/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZZZZII)V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    iput-boolean p1, p0, Lo2/a;->m:Z

    return-void
.end method

.method public final B(Z)V
    .locals 0

    iput-boolean p1, p0, Lo2/a;->o:Z

    return-void
.end method

.method public final C(J)Lcom/coloros/translate/repository/local/SimultaneousSentence;
    .locals 3

    new-instance v0, Lcom/coloros/translate/repository/local/SimultaneousSentence;

    invoke-direct {v0}, Lcom/coloros/translate/repository/local/SimultaneousSentence;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setNoteId(J)V

    iget-wide p1, p0, Lo2/a;->b:J

    iget-wide v1, p0, Lo2/a;->c:J

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setMsgId(J)V

    iget-object p1, p0, Lo2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setRecordId(Ljava/lang/String;)V

    iget-object p1, p0, Lo2/a;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setFromText(Ljava/lang/String;)V

    iget-object p1, p0, Lo2/a;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setToText(Ljava/lang/String;)V

    iget-object p1, p0, Lo2/a;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setFromLanguage(Ljava/lang/String;)V

    iget-object p1, p0, Lo2/a;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setToLanguage(Ljava/lang/String;)V

    iget-wide p1, p0, Lo2/a;->i:J

    invoke-virtual {v0, p1, p2}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setStartTimeOffset(J)V

    iget-wide p0, p0, Lo2/a;->j:J

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->setEndTimeOffset(J)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo2/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo2/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lo2/a;->q:I

    return p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lo2/a;->b:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lo2/a;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo2/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo2/a;

    iget-wide v3, p0, Lo2/a;->a:J

    iget-wide v5, p1, Lo2/a;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lo2/a;->b:J

    iget-wide v5, p1, Lo2/a;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lo2/a;->c:J

    iget-wide v5, p1, Lo2/a;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lo2/a;->d:Ljava/lang/String;

    iget-object v3, p1, Lo2/a;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lo2/a;->e:Ljava/lang/String;

    iget-object v3, p1, Lo2/a;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lo2/a;->f:Ljava/lang/String;

    iget-object v3, p1, Lo2/a;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lo2/a;->g:Ljava/lang/String;

    iget-object v3, p1, Lo2/a;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lo2/a;->h:Ljava/lang/String;

    iget-object v3, p1, Lo2/a;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lo2/a;->i:J

    iget-wide v5, p1, Lo2/a;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lo2/a;->j:J

    iget-wide v5, p1, Lo2/a;->j:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lo2/a;->k:Z

    iget-boolean v3, p1, Lo2/a;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lo2/a;->l:Z

    iget-boolean v3, p1, Lo2/a;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lo2/a;->m:Z

    iget-boolean v3, p1, Lo2/a;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lo2/a;->n:Z

    iget-boolean v3, p1, Lo2/a;->n:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lo2/a;->o:Z

    iget-boolean v3, p1, Lo2/a;->o:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lo2/a;->p:I

    iget v3, p1, Lo2/a;->p:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget p0, p0, Lo2/a;->q:I

    iget p1, p1, Lo2/a;->q:I

    if-eq p0, p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo2/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo2/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo2/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lo2/a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lo2/a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lo2/a;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo2/a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo2/a;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo2/a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo2/a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo2/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lo2/a;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lo2/a;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo2/a;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo2/a;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo2/a;->m:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo2/a;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo2/a;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo2/a;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lo2/a;->q:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lo2/a;->n:Z

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lo2/a;->k:Z

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lo2/a;->l:Z

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lo2/a;->m:Z

    return p0
.end method

.method public final m()Z
    .locals 0

    iget-boolean p0, p0, Lo2/a;->o:Z

    return p0
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lo2/a;->n:Z

    return-void
.end method

.method public final o(J)V
    .locals 0

    iput-wide p1, p0, Lo2/a;->j:J

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo2/a;->g:Ljava/lang/String;

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo2/a;->e:Ljava/lang/String;

    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Lo2/a;->k:Z

    return-void
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Lo2/a;->p:I

    return-void
.end method

.method public final t(I)V
    .locals 0

    iput p1, p0, Lo2/a;->q:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    iget-wide v1, v0, Lo2/a;->a:J

    iget-wide v3, v0, Lo2/a;->b:J

    iget-wide v5, v0, Lo2/a;->c:J

    iget-object v7, v0, Lo2/a;->d:Ljava/lang/String;

    iget-object v8, v0, Lo2/a;->e:Ljava/lang/String;

    iget-object v9, v0, Lo2/a;->f:Ljava/lang/String;

    iget-object v10, v0, Lo2/a;->g:Ljava/lang/String;

    iget-object v11, v0, Lo2/a;->h:Ljava/lang/String;

    iget-wide v12, v0, Lo2/a;->i:J

    iget-wide v14, v0, Lo2/a;->j:J

    move-wide/from16 v16, v14

    iget-boolean v14, v0, Lo2/a;->k:Z

    iget-boolean v15, v0, Lo2/a;->l:Z

    move/from16 v18, v15

    iget-boolean v15, v0, Lo2/a;->m:Z

    move/from16 v19, v15

    iget-boolean v15, v0, Lo2/a;->n:Z

    move/from16 v20, v15

    iget-boolean v15, v0, Lo2/a;->o:Z

    move/from16 v21, v15

    iget v15, v0, Lo2/a;->p:I

    iget v0, v0, Lo2/a;->q:I

    move/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v15

    const-string v15, "SimultaneousTranslateResult(id="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pageOffSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", recordId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTimeOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isLanguageChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedTTSRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTransalteEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAsrEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTranslateError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastContentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastOriginContentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(J)V
    .locals 0

    iput-wide p1, p0, Lo2/a;->b:J

    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Lo2/a;->l:Z

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo2/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final x(J)V
    .locals 0

    iput-wide p1, p0, Lo2/a;->i:J

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo2/a;->h:Ljava/lang/String;

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo2/a;->f:Ljava/lang/String;

    return-void
.end method
