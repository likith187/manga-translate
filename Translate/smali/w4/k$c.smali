.class abstract Lw4/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/reflect/Field;

.field final c:Ljava/lang/String;

.field final d:Z

.field final e:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/k$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lw4/k$c;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lw4/k$c;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lw4/k$c;->d:Z

    iput-boolean p4, p0, Lw4/k$c;->e:Z

    return-void
.end method


# virtual methods
.method abstract a(La5/a;I[Ljava/lang/Object;)V
.end method

.method abstract b(La5/a;Ljava/lang/Object;)V
.end method

.method abstract c(La5/c;Ljava/lang/Object;)V
.end method
