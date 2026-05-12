.class public final Lo4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/c$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Set;

.field private final c:I

.field private final d:I

.field private final e:Lo4/g;

.field private final f:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Set;Ljava/util/Set;IILo4/g;Ljava/util/Set;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo4/c;->a:Ljava/util/Set;

    .line 4
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo4/c;->b:Ljava/util/Set;

    .line 5
    iput p3, p0, Lo4/c;->c:I

    .line 6
    iput p4, p0, Lo4/c;->d:I

    .line 7
    iput-object p5, p0, Lo4/c;->e:Lo4/g;

    .line 8
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo4/c;->f:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;IILo4/g;Ljava/util/Set;Lo4/c$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lo4/c;-><init>(Ljava/util/Set;Ljava/util/Set;IILo4/g;Ljava/util/Set;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lo4/c$b;
    .locals 3

    new-instance v0, Lo4/c$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lo4/c$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lo4/c$a;)V

    return-object v0
.end method

.method public static varargs b(Ljava/lang/Class;[Ljava/lang/Class;)Lo4/c$b;
    .locals 2

    new-instance v0, Lo4/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lo4/c$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lo4/c$a;)V

    return-object v0
.end method

.method public static g(Ljava/lang/Class;)Lo4/c$b;
    .locals 0

    invoke-static {p0}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object p0

    invoke-static {p0}, Lo4/c$b;->a(Lo4/c$b;)Lo4/c$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Ljava/lang/Object;Lo4/d;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static varargs l(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lo4/c;
    .locals 0

    invoke-static {p1, p2}, Lo4/c;->b(Ljava/lang/Class;[Ljava/lang/Class;)Lo4/c$b;

    move-result-object p1

    invoke-static {p0}, Lo4/b;->b(Ljava/lang/Object;)Lo4/g;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lo4/c$b;->c()Lo4/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lo4/c;->b:Ljava/util/Set;

    return-object p0
.end method

.method public d()Lo4/g;
    .locals 0

    iget-object p0, p0, Lo4/c;->e:Lo4/g;

    return-object p0
.end method

.method public e()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lo4/c;->a:Ljava/util/Set;

    return-object p0
.end method

.method public f()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lo4/c;->f:Ljava/util/Set;

    return-object p0
.end method

.method public h()Z
    .locals 1

    iget p0, p0, Lo4/c;->c:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    iget p0, p0, Lo4/c;->c:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Z
    .locals 0

    iget p0, p0, Lo4/c;->d:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo4/c;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo4/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo4/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo4/c;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
