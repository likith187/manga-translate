.class Lj1/c$a;
.super Ls1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/c;->f(Ls1/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ls1/c;

.field final synthetic e:Lj1/c;


# direct methods
.method constructor <init>(Lj1/c;Ls1/c;)V
    .locals 0

    iput-object p1, p0, Lj1/c$a;->e:Lj1/c;

    iput-object p2, p0, Lj1/c$a;->d:Ls1/c;

    invoke-direct {p0}, Ls1/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ls1/b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj1/c$a;->d(Ls1/b;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public d(Ls1/b;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lj1/c$a;->d:Ls1/c;

    invoke-virtual {p0, p1}, Ls1/c;->a(Ls1/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const p1, 0x40233333    # 2.55f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
