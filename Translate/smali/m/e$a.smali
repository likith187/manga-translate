.class Lm/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/e;->g(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lm/e;


# direct methods
.method constructor <init>(Lm/e;)V
    .locals 0

    iput-object p1, p0, Lm/e$a;->a:Lm/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm/e$c;Lm/e$c;)I
    .locals 0

    iget p0, p1, Lm/e$c;->a:I

    iget p1, p2, Lm/e$c;->a:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lm/e$c;

    check-cast p2, Lm/e$c;

    invoke-virtual {p0, p1, p2}, Lm/e$a;->a(Lm/e$c;Lm/e$c;)I

    move-result p0

    return p0
.end method
