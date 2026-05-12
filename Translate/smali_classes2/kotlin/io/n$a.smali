.class final Lkotlin/io/n$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/n;->p(Ljava/io/File;Ljava/io/File;ZLw8/p;ILjava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/io/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/io/n$a;

    invoke-direct {v0}, Lkotlin/io/n$a;-><init>()V

    sput-object v0, Lkotlin/io/n$a;->INSTANCE:Lkotlin/io/n$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/IOException;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/n$a;->invoke(Ljava/io/File;Ljava/io/IOException;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/io/File;Ljava/io/IOException;)Ljava/lang/Void;
    .locals 0

    const-string p0, "<anonymous parameter 0>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "exception"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    throw p2
.end method
