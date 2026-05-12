.class public final Lw4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/w;


# instance fields
.field private final a:Lcom/google/gson/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/e;->a:Lcom/google/gson/internal/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
    .locals 2

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lv4/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lv4/b;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lw4/e;->a:Lcom/google/gson/internal/c;

    invoke-virtual {p0, v1, p1, p2, v0}, Lw4/e;->b(Lcom/google/gson/internal/c;Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;Lv4/b;)Lcom/google/gson/v;

    move-result-object p0

    return-object p0
.end method

.method b(Lcom/google/gson/internal/c;Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;Lv4/b;)Lcom/google/gson/v;
    .locals 7

    invoke-interface {p4}, Lv4/b;->value()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/gson/internal/c;->b(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/i;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/gson/internal/i;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p4}, Lv4/b;->nullSafe()Z

    move-result v6

    instance-of p1, p0, Lcom/google/gson/v;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/google/gson/v;

    goto :goto_2

    :cond_0
    instance-of p1, p0, Lcom/google/gson/w;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/google/gson/w;

    invoke-interface {p0, p2, p3}, Lcom/google/gson/w;->a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;

    move-result-object p0

    goto :goto_2

    :cond_1
    instance-of p1, p0, Lcom/google/gson/h;

    if-eqz p1, :cond_4

    instance-of p1, p0, Lcom/google/gson/h;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/google/gson/h;

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    new-instance p0, Lw4/m;

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lw4/m;-><init>(Lcom/google/gson/p;Lcom/google/gson/h;Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/w;Z)V

    const/4 v6, 0x0

    :goto_2
    if-eqz p0, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/google/gson/v;->a()Lcom/google/gson/v;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid attempt to bind an instance of "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a @JsonAdapter for "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/gson/reflect/TypeToken;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
