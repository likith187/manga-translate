.class public final Lo9/f$c$a;
.super Lo9/f$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo9/f$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo9/i;)V
    .locals 1

    const-string p0, "stream"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo9/b;->REFUSED_STREAM:Lo9/b;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lo9/i;->d(Lo9/b;Ljava/io/IOException;)V

    return-void
.end method
