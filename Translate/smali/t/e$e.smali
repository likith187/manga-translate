.class public final Lt/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private final a:La0/e;

.field private final b:La0/e;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(La0/e;La0/e;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/e$e;->a:La0/e;

    iput-object p2, p0, Lt/e$e;->b:La0/e;

    iput p3, p0, Lt/e$e;->d:I

    iput p4, p0, Lt/e$e;->c:I

    iput-object p5, p0, Lt/e$e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()La0/e;
    .locals 0

    iget-object p0, p0, Lt/e$e;->b:La0/e;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lt/e$e;->d:I

    return p0
.end method

.method public c()La0/e;
    .locals 0

    iget-object p0, p0, Lt/e$e;->a:La0/e;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt/e$e;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lt/e$e;->c:I

    return p0
.end method
