.class Ld6/c$a;
.super Lm6/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/c;->f(Lm6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lm6/b;

.field final synthetic e:Ld6/c;


# direct methods
.method constructor <init>(Ld6/c;Lm6/b;)V
    .locals 0

    iput-object p1, p0, Ld6/c$a;->e:Ld6/c;

    iput-object p2, p0, Ld6/c$a;->d:Lm6/b;

    invoke-direct {p0}, Lm6/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lm6/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld6/c$a;->d(Lm6/a;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public d(Lm6/a;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Ld6/c$a;->d:Lm6/b;

    invoke-virtual {p0, p1}, Lm6/b;->a(Lm6/a;)Ljava/lang/Object;

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
