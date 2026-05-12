.class public final Lw4/a;
.super Lcom/google/gson/v;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/gson/w;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Lcom/google/gson/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw4/a$a;

    invoke-direct {v0}, Lw4/a$a;-><init>()V

    sput-object v0, Lw4/a;->c:Lcom/google/gson/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/d;Lcom/google/gson/v;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    new-instance v0, Lw4/n;

    invoke-direct {v0, p1, p2, p3}, Lw4/n;-><init>(Lcom/google/gson/d;Lcom/google/gson/v;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lw4/a;->b:Lcom/google/gson/v;

    iput-object p3, p0, Lw4/a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b(La5/a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object v0

    sget-object v1, La5/b;->NULL:La5/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, La5/a;->H0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, La5/a;->c()V

    :goto_0
    invoke-virtual {p1}, La5/a;->X()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw4/a;->b:Lcom/google/gson/v;

    invoke-virtual {v1, p1}, Lcom/google/gson/v;->b(La5/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La5/a;->B()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lw4/a;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lw4/a;->a:Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    iget-object p0, p0, Lw4/a;->a:Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(La5/c;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p1}, La5/c;->q0()La5/c;

    return-void

    :cond_0
    invoke-virtual {p1}, La5/c;->k()La5/c;

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lw4/a;->b:Lcom/google/gson/v;

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La5/c;->B()La5/c;

    return-void
.end method
