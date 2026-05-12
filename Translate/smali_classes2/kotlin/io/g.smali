.class public Lkotlin/io/g;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final file:Ljava/io/File;

.field private final other:Ljava/io/File;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2, p3}, Lkotlin/io/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lkotlin/io/g;->file:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lkotlin/io/g;->other:Ljava/io/File;

    .line 5
    iput-object p3, p0, Lkotlin/io/g;->reason:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lkotlin/io/g;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lkotlin/io/g;->file:Ljava/io/File;

    return-object p0
.end method

.method public final getOther()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lkotlin/io/g;->other:Ljava/io/File;

    return-object p0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/io/g;->reason:Ljava/lang/String;

    return-object p0
.end method
