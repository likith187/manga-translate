.class public final Lz1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/g$a;
    }
.end annotation


# static fields
.field public static final c:Lz1/g$a;


# instance fields
.field private a:I

.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz1/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lz1/g;->c:Lz1/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lz1/g;->a:I

    return-void
.end method


# virtual methods
.method public final a([B[BZ)Ln8/q;
    .locals 0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz1/g;->b:[B

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lz1/g;->b:[B

    :goto_1
    new-instance p0, Ln8/q;

    invoke-direct {p0, p1, p2}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(I)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecorderSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceDataHandler"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, p1, [B

    iput-object p1, p0, Lz1/g;->b:[B

    return-void
.end method
