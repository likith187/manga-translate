.class public final Lkotlin/text/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/h$a;,
        Lkotlin/text/h$b;,
        Lkotlin/text/h$c;
    }
.end annotation


# static fields
.field public static final d:Lkotlin/text/h$b;

.field private static final e:Lkotlin/text/h;

.field private static final f:Lkotlin/text/h;


# instance fields
.field private final a:Z

.field private final b:Lkotlin/text/h$a;

.field private final c:Lkotlin/text/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/text/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/h$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/h;->d:Lkotlin/text/h$b;

    new-instance v0, Lkotlin/text/h;

    sget-object v1, Lkotlin/text/h$a;->j:Lkotlin/text/h$a$a;

    invoke-virtual {v1}, Lkotlin/text/h$a$a;->a()Lkotlin/text/h$a;

    move-result-object v2

    sget-object v3, Lkotlin/text/h$c;->h:Lkotlin/text/h$c$a;

    invoke-virtual {v3}, Lkotlin/text/h$c$a;->a()Lkotlin/text/h$c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v5, v2, v4}, Lkotlin/text/h;-><init>(ZLkotlin/text/h$a;Lkotlin/text/h$c;)V

    sput-object v0, Lkotlin/text/h;->e:Lkotlin/text/h;

    new-instance v0, Lkotlin/text/h;

    invoke-virtual {v1}, Lkotlin/text/h$a$a;->a()Lkotlin/text/h$a;

    move-result-object v1

    invoke-virtual {v3}, Lkotlin/text/h$c$a;->a()Lkotlin/text/h$c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lkotlin/text/h;-><init>(ZLkotlin/text/h$a;Lkotlin/text/h$c;)V

    sput-object v0, Lkotlin/text/h;->f:Lkotlin/text/h;

    return-void
.end method

.method public constructor <init>(ZLkotlin/text/h$a;Lkotlin/text/h$c;)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlin/text/h;->a:Z

    iput-object p2, p0, Lkotlin/text/h;->b:Lkotlin/text/h$a;

    iput-object p3, p0, Lkotlin/text/h;->c:Lkotlin/text/h$c;

    return-void
.end method

.method public static final synthetic a()Lkotlin/text/h;
    .locals 1

    sget-object v0, Lkotlin/text/h;->e:Lkotlin/text/h;

    return-object v0
.end method


# virtual methods
.method public final b()Lkotlin/text/h$c;
    .locals 0

    iget-object p0, p0, Lkotlin/text/h;->c:Lkotlin/text/h$c;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HexFormat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "    upperCase = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lkotlin/text/h;->a:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "    bytes = BytesHexFormat("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lkotlin/text/h;->b:Lkotlin/text/h$a;

    const-string v4, "        "

    invoke-virtual {v3, v0, v4}, Lkotlin/text/h$a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "    ),"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "    number = NumberHexFormat("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/text/h;->c:Lkotlin/text/h$c;

    invoke-virtual {p0, v0, v4}, Lkotlin/text/h$c;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "    )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
